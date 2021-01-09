/************************************
    
    "Dr. Sens" Door Contact (v1.0)
    https://frz.icu/dr-sens

************************************/

#include <Arduino.h>
#include <Arduino_nRF5x_lowPower.h>

/////// MYSENORS SETTINGS ///////
#define MY_DEBUG
#define MY_RADIO_NRF5_ESB
#define CHILD_ID_TRIPPED 1
#define SN "door-dev"
#define SV "1.1"
// #define MY_NODE_ID 193

/////// DEVICE SETTINGS ///////
#define FORCE_SEND_UPDATE_S 0       // Seconds between forced update (0 for off)
#define RESEND_ATTEMPTS 2           // 
#define USE_OB_LED                  // Note: The LED increases power consumption massively.
#define BAT_LVL_INT_S 5             // Minimum time between battery voltage sampling (should be >1s)
#define DOOR_OPEN     HIGH          // When the door is open, the switch is open -> pin pulled high

/////// PIN DEFINITIONS ///////
#define BUTTON_PIN    20            // D20 => P0.05 AIN3
#define LED           6             // D6  => P0.17
#define VOLT_SENSE    A5            // A5  => P0.31 AIN7

/////// VOLTAGE MEASUREMENT ///////
#define ADC_FACTOR        (0.73242188F)   // 3V / 4096
#define RESISTOR_DIVIDER  (678.0F)        // this factor has to be determined for every individual device

#include <MySensors.h>

/////// INTERNALS ///////
MyMessage msg(CHILD_ID_TRIPPED, V_TRIPPED);
bool sentInitialValue = false;
bool resend = false;
byte resendCounter;
long ts;

float batteryCharge(); // moved to bottom of code for cosmetic reasons.

void presentation()
{
  sendSketchInfo(SN, SV);
  present(CHILD_ID_TRIPPED, S_DOOR);
}

void setup()
{
  analogReference(AR_INTERNAL);
  analogReadResolution(12);

  // Turn off internal DC-DC-Converter to save some energies.
  nRF5x_lowPower.disableDCDC();

  pinMode(BUTTON_PIN, INPUT);

#ifdef USE_OB_LED
  pinMode(LED, OUTPUT);
  digitalWrite(LED, HIGH);
#endif
}

void loop()
{
  // For Home Assistant, the first message has to be sent from the loop.
  if (!sentInitialValue)
  {
    send(msg.set("1")); // send dummy value
    sendBatteryLevel(50);
    wait(2000, C_SET, S_DOOR);
    sentInitialValue = true;

    resend = true; // Send actual value after dummy
  }

  if (millis() - ts >= BAT_LVL_INT_S * 1000){
    ts = millis();
    sendBatteryLevel(batteryCharge());
  }

if (!resend){
  Serial.println("sleep");
  sleep(BUTTON_PIN, CHANGE, FORCE_SEND_UPDATE_S * 1000);
}

#ifdef USE_OB_LED
  digitalWrite(LED, LOW);
#endif

if (!send(msg.set(uint32_t(digitalRead(BUTTON_PIN) == DOOR_OPEN ? 1 : 0)))) {
  if (resendCounter <= RESEND_ATTEMPTS){
    Serial.print("resend; counter = ");
    Serial.println(resendCounter);
    resend = true;
    resendCounter++;
  }
  else if (resendCounter > RESEND_ATTEMPTS){
    Serial.println("giving up");
    resend = false;
    resendCounter = 0;
  }
}
else {
  Serial.println("successfully sent");
  resend = false;
  resendCounter = 0;
}

#ifdef USE_OB_LED
  digitalWrite(LED, HIGH);
#endif

  wait(1000);
}

float batteryCharge()
{ // Delay between samples should be > 1sec
  float battery_voltage = (analogRead(VOLT_SENSE) * ADC_FACTOR) / RESISTOR_DIVIDER;
  Serial.println(battery_voltage);

  // Convert voltage to battery level
  // The battery level cannot be calculated that easily (because of the exponential curve
  // of charge vs. voltage), so we have to improvise a bit:

  if (battery_voltage >= 3.20)
  {
    return 100;
  }
  else if (battery_voltage >= 2.30)
  {
    return 95;
  }
  else if (battery_voltage >= 2.20)
  {
    return 90;
  }
  else if (battery_voltage >= 2.15)
  {
    return 85;
  }
  else if (battery_voltage >= 2.10)
  {
    return 80;
  }
  else if (battery_voltage >= 2.05)
  {
    return 75;
  }
  else if (battery_voltage >= 2.00)
  {
    return 70;
  }
  else if (battery_voltage >= 1.99)
  {
    return 60;
  }
  else if (battery_voltage >= 1.98)
  {
    return 50;
  }
  else if (battery_voltage >= 1.97)
  {
    return 40;
  }
  else if (battery_voltage >= 1.96)
  {
    return 30;
  }
  else if (battery_voltage >= 1.95)
  {
    return 10;
  }
  else if (battery_voltage <= 1.95)
  {
    sendBatteryLevel(0);
    wait(2000);
    nRF5x_lowPower.powerMode(POWER_MODE_OFF);
  }
}