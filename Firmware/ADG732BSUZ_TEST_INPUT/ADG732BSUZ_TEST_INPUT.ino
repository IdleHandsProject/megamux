/* TEST BOARD FIRMWARE FOR ARDUINO AND THE ADG732BSUZ 32 CHANNEL MULTIPLEXER
 *  BOARD CALLED "MegaMUX"
 *  
 *  CONNECTION INSTRUCTIONS BELOW.
 *  This will connect 16 analog inputs to one single channel on the arduino.
 *  
 *  Created by Sean Hodgins 
 *  Watch the Video Tutorial on Youtube - http://youtube.com/seanhodginsfilms
 *  Support my Open Source Projects on Patreon! - https://patreon.com/seanhodgins
 *  
 *  This software is licences under cc-by-sa-nc-3.0
 */

int S[5] = {13, 12, 11, 10, 9};  //A0, A1, A2, A3, A4 Respectively on Arduino

int CS = 8; 
int WR = 7;
int EN = 6;

int INPIN = A0; //IO PIN ON MEGAMUX 

void setup() {
  // put your setup code here, to run once:
  for (int x = 0; x < 5; x++) {
    pinMode(S[x], OUTPUT);
    digitalWrite(S[x], LOW);
  }
  pinMode(CS, OUTPUT);
  digitalWrite(CS, LOW);
  pinMode(WR, OUTPUT);
  digitalWrite(WR, LOW);
  pinMode(EN, OUTPUT);
  digitalWrite(EN, LOW);
   pinMode(A1, OUTPUT);
  digitalWrite(A1, HIGH);
  pinMode(INPIN, INPUT);
 
  SerialUSB.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  for(int i = 0; i<16;i++){
  pinSelect(i);
  SerialUSB.println(analogRead(INPIN));
  delay(100);
  }
}

void pinSelect(int pinnum){
  digitalWrite(WR, LOW);
    for (int x = 0; x<5; x++){
      byte state = bitRead(pinnum, x);
      digitalWrite(S[x], state);

    }
   
  digitalWrite(WR, HIGH);

}

