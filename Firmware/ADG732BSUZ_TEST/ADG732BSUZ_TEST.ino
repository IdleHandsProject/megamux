/* TEST BOARD FIRMWARE FOR ARDUINO AND THE ADG732BSUZ 32 CHANNEL MULTIPLEXER
 *  BOARD CALLED "MegaMUX"
 *  
 *  CONNECTION INSTRUCTIONS BELOW.
 *  This will connect 32 outputs to one pin on the arduino
 *  
 *  Created by Sean Hodgins 
 *  Watch the Video Tutorial on Youtube - http://youtube.com/seanhodginsfilms
 *  Support my Open Source Projects on Patreon! - https://patreon.com/seanhodgins
 *  
 *  This software is licences under cc-by-sa-nc-3.0
 */
 
int S[5] = {13, 12, 11, 10, 9}; //A0, A1, A2, A3, A4 Respectively

int CS = 8;
int WR = 7;
int EN = 6;

int INPIN = A0; //IO on MegaMUX

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
  pinMode(INPIN, OUTPUT);
  digitalWrite(INPIN, LOW);
  SerialUSB.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i = 0; i<32;i++){
  pinSelect(i);
  digitalWrite(INPIN, HIGH);
  delay(100);
  digitalWrite(INPIN, LOW);
  }
}

void pinSelect(int pinnum){
  digitalWrite(WR, LOW);
    for (int x = 0; x<5; x++){
      byte state = bitRead(pinnum, x);
      digitalWrite(S[x], state);
      SerialUSB.print(state);
    }
    SerialUSB.println();
  digitalWrite(WR, HIGH);
}

