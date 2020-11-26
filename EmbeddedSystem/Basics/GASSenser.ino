/*
Project: Gas senser
By: Felipe L. A.
Organization: Zefiro
*/


#define BUILTIN_LED 2
#define WE_pin 34
#define AUX_pin 35

float GASSenser(int reads, int sensor_port);
float filter(float input, bool first, float last);
float value0 = 0;
float value1 = 0;

void setup() {
   Serial.begin(115200);
  // put your setup code here, to run once:
  pinMode(BUILTIN_LED, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
  pinMode(WE_pin, INPUT);     // Initialize the WE_pin pin as an input
  pinMode(AUX_pin, INPUT);     // Initialize the AUX_pin pin as an input

  Serial.println("Setup Done!");
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(BUILTIN_LED, HIGH);
  Serial.println("Lendo WE\n");
  //value0 = analogRead(potPin0);
  value0 = GASSenser(25, WE_pin);
  delay(1000);
  digitalWrite(BUILTIN_LED, LOW);
  Serial.println("Lendo AUX");
  value1 = GASSenser(25, AUX_pin);
  delay(1000);
  Serial.print("WE: ");
  Serial.println(value0);
  Serial.print("AUX: ");
  Serial.println(value1);
  delay(1000);
}


float GASSenser(int reads, int sensor_port){
    float sense = 0;
    float filtered_sense;
    int i;
    for(i = 0; i < reads; i++){
        sense = analogRead(sensor_port);
        if(i == 0){
            filtered_sense = filter(sense, true, 0);
        }
        else {
            filtered_sense = filter(sense, false, filtered_sense);
        }
    }
    return filtered_sense;
}


//Exponential Moving Average (EMA)
float filter(float input, bool first, float last){ 
  float alpha = 0.45f;
  float S;
  if(first){
    S = input;
  }else{
    S = last;
    S = alpha * input + (1 - alpha) * S;
  }
  return S;
}