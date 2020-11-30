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

void setup(){
    Hservo.attach(MOTORH);
    Vservo.attach(MOTORV);
    Hservo.write(begin_HS);
    Vservo.write(begin_VS);
    pinMode(LDR0, INPUT);
    pinMode(LDR1, INPUT);
    pinMode(LDR2, INPUT);
    pinMode(LDR3, INPUT);
    delay(100);
}

void loop() {

    int topLeft   = analogRead(LDR0); 
    int topRight  = analogRead(LDR1); 
    int downLeft  = analogRead(LDR2); 
    int downRight = analogRead(LDR3); 

    int tol = 90; 

    int av_top   = (topLeft + topRight)/2;   // average value top
    int av_down  = (downLeft + downRight)/2; // average value down
    int av_left  = (topLeft + downLeft)/2;   // average value left
    int av_right = (topRight + downRight)/2; // average value right
    int dif_vert = av_top - av_down;   // check the diffirence of up and down
    int dif_hori = av_left - av_right; // check the diffirence og left and rigt

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
        Vservo.write(servov);
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
            delay(100);
        }
        Hservo.write(servoh);
    }   
    delay(100);
 
}