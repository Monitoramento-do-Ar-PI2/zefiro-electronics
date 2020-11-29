/*
Project: Solar Tracker
By: Felipe L. A.
Organization: Zefiro
*/
#include <Servo.h>

#define LDR0 (18)
#define LDR1 (19)
#define LDR2 (12)
#define LDR3 (13)

#define MOTORH (27)
#define MOTORV (28)

Servo Hservo; // Horizontal Servo motor
Servo Vservo; // Vertical Servo motor

int begin_HS = 175;
int begin_VS = 15;

int HS_toplimit = 175;
int VS_toplimit = 75;

int HS_downlimit = 5;
int VS_dowlimit = 15;

int servov = 0;
int servoh = 0;
// LDR pin connections
// name = analogpin;
int ldrlt = LDR0; //LDR top left - BOTTOM LEFT <--- BDG
int ldrrt = LDR1; //LDR top rigt - BOTTOM RIGHT
int ldrld = LDR2; //LDR down left - TOP LEFT
int ldrrd = LDR3; //ldr down rigt - TOP RIGHT

void setup(){
    Hservo.attach(MOTORH);
    Vservo.attach(MOTORV);
    Hservo.write(begin_HS);
    Vservo.write(begin_VS);
    delay(2500);
}

void loop() {
    int lt = analogRead(ldrlt); // top left
    int rt = analogRead(ldrrt); // top right
    int ld = analogRead(ldrld); // down left
    int rd = analogRead(ldrrd); // down right
    int dtime = 10; int tol = 90; // dtime=diffirence time, tol=toleransi
    int avt = (lt + rt) / 2; // average value top
    int avd = (ld + rd) / 2; // average value down
    int avl = (lt + ld) / 2; // average value left
    int avr = (rt + rd) / 2; // average value right
    int dvert = avt - avd; // check the diffirence of up and down
    int dhoriz = avl - avr;// check the diffirence og left and rigt

    if (-1*tol > dvert || dvert > tol){
        if (avt > avd){
            servov = ++servov;
            if (servov > VS_toplimit){
                servov = VS_toplimit;}
            }
            else if (avt < avd){
                servov= --servov;
                if (servov < VS_dowlimit){
                    servov = VS_dowlimit;
                }
            }
        Vservo.write(begin_VS);
    }
    if (-1*tol > dhoriz || dhoriz > tol){ // check if the diffirence is in the tolerance else change horizontal angle
        if (avl > avr){
            servoh = --servoh;
            if (servoh < HS_downlimit){
                servoh = HS_downlimit;
            }
        }
        else if (avl < avr){
            servoh = ++servoh;
            if (servoh > HS_toplimit){
                servoh = HS_toplimit;
        }
    }
        else if (avl = avr){
            delay(5000);
        }
        Hservo.write(begin_HS);
    }   
    delay(dtime);
 
}