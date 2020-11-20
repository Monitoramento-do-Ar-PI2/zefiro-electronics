#define NO2_we 36
#define NO2_aux 39
///////
float WE_no2 = 0;
float AUX_no2 = 0;
float WE_no2F = 0;
float AUX_no2F = 0;
double NO2_ppm = 0;
const double no2_we_offset = 225.0;
const double no2_aux_offset = 245.0;
const double no2_S = 430.0;
///////
float filter(float input);
double ppm_calc(float WE_pin, double WE_offset, float AUX_pin,
                double AUX_offset, double S);


void setup() 
{
  pinMode(NO2_we, INPUT);
  pinMode(NO2_aux, INPUT);
  Serial.begin(115200);
}

void loop() 
{
  WE_no2 = analogRead(NO2_we) *(3.3/4096) ;
  AUX_no2 = analogRead(NO2_aux) *(3.3/4096);
  WE_no2F =  filter(WE_no2);
  AUX_no2F =  filter(AUX_no2);
  Serial.println("---------------------------------------------");
  Serial.print("Work pin: ");
  Serial.println(WE_no2F);
  Serial.print("Auxiliary pin: ");
  Serial.println(AUX_no2F);
  Serial.println("---------------------------------------------");
  delay(100);
  NO2_ppm = ppm_calc(WE_no2F, no2_we_offset, AUX_no2F, no2_aux_offset, no2_S);
  Serial.println("---------------------------------------------");
  Serial.print("N02(ppm): ");
  Serial.println(NO2_ppm);
  Serial.println("---------------------------------------------");



  Serial.println(analog_value);
 
  delay(100);                       // wait for a second
}

//Exponential Moving Average (EMA)
float filter(float input){
  float alpha = 0.5f;
  static float S;
  static bool first = true;

  if (first){
    S = input;
    first = false;
  }else{
    S = alpha * input + (1 - alpha) * S;
  }
  return S;
}

double ppm_calc(float WE_pin, double WE_offset, float AUX_pin, double AUX_offset, double S){
  double gas_ppm;

  gas_ppm = ((WE_pin - (WE_offset*10e-3))-(AUX_pin - (AUX_offset*10e-3)))/(S*10e-3);

  return gas_ppm;
}
