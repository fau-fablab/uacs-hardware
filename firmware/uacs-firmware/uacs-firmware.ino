#include <MFRC522.h>
#include <Queue.h>
#include "Adafruit_ILI9341.h"
#include "Adafruit_GFX.h"
#include "Ethernet.h"
#include "ADS7846.h"
#include "SPI.h"

#define TFT_CS 43
#define TFT_DC 5
#define RFID_SS 45

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
unsigned int blBrightness = 255;
unsigned int newBlBrightness = 255;

Adafruit_ILI9341 tft = Adafruit_ILI9341(TFT_CS, TFT_DC);
EthernetClient client;
ADS7846 touch;
MFRC522 mfrc522(RFID_SS, 7);
Queue blQueue;

void setup(){
  //rfid-led
  pinMode(48, OUTPUT);
  digitalWrite(48, HIGH);

  //speaker
  pinMode(13, OUTPUT);
  
  //display bl
  pinMode(44, OUTPUT);
  
  //peninterrupt
  pinMode(19, INPUT);
  
  //mfrc522.PCD_Init();

  //perform self test
  if(!selfTest()){
    while(1){
      ;
    }
  } else {
    //audio feedback
    analogWrite(13, 200);
    delay(200);
    analogWrite(13, 0);
  }
  
  delay(200);
  
  tft.fillScreen(ILI9341_RED);
  tft.setCursor(16,16);
  tft.setTextColor(ILI9341_WHITE);
  tft.setTextSize(5);
  tft.println("LOCKED!");
  tft.println("");
  tft.println("");
  tft.setTextSize(2);
  tft.println(" Swipe Card to Login.");
  
  attachInterrupt(4, touchInterrupt, FALLING);
  
  newBlBrightness = 20;
  blQueue.scheduleFunction(dimBl, "blQueue", 30000, 0);
}

void loop(){
  blQueue.Run(millis());
}

bool selfTest(){
	//store start time
	unsigned long start = micros();

	//init lcd
	tft.begin();
	tft.setRotation(3);
	//test lcd
	if(tft.readcommand8(ILI9341_RDMODE) == 0x9C){
		tft.fillScreen(ILI9341_BLACK);
                analogWrite(44, blBrightness);
		tft.setCursor(0,0);
		tft.setTextColor(ILI9341_WHITE);
		tft.setTextSize(1);
		tft.println("UACS - Universal Access Control System");
		tft.println("Firmware Rev1.0");
		tft.println("--------------------------------------");
		tft.print("[");
		tft.print(micros() - start);
		tft.println("] ILI9341: Display OK, Power Mode: 0x9C");
	} else {
		return false;
	}

	//init ethernet
	if(Ethernet.begin(mac)){
		tft.print("[");
		tft.print(micros() - start);
		tft.print("] W5100: Ethernet OK, IP: ");
		tft.println(Ethernet.localIP());
	} else {
		tft.print("[");
		tft.print(micros() - start);
		tft.println("] W5100: Ethernet FAIL");
	}

	//init touch
	touch.begin();
	touch.service();
	tft.print("[");
	tft.print(micros() - start);
	tft.print("] TSC2046: Current pressure: ");
	tft.println(touch.getPressure());

	//TODO: init rfid
	tft.print("[");
	tft.print(micros() - start);
	tft.println("] MFRC531: RFID OK ");

	//TODO: init sd-card
	tft.print("[");
	tft.print(micros() - start);
	tft.println("] SD: Card OK ");

	return true;
}

int dimBl(unsigned long now){
  while(blBrightness != newBlBrightness){
    analogWrite(44, blBrightness);
    if(blBrightness > newBlBrightness){
      blBrightness--;
    } else {
      blBrightness++;
    }
    delay(2);
  }
}

void touchInterrupt(){
  newBlBrightness = 255;
  dimBl(0);
  newBlBrightness = 20;
  blQueue.scheduleRemoveFunction("blQueue");
  blQueue.scheduleFunction(dimBl, "blQueue", 30000, 0);
}

