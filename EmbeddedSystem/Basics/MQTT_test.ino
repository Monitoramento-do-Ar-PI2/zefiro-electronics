/*
Project: MQTT Test
By: Felipe L. A.
Organization: Zefiro
*/

#include <WiFi.h>
#include <PubSubClient.h>

#define MSG_BUFFER_SIZE  (50)
#define BUILTIN_LED (2)
const char* ssid = "Your WiFi Name";
const char* password = "Your WiFi Password";
const char* mqtt_server = "broker.mqtt-dashboard.com"; // Recommended the use of MQTTbox aplication for analisys

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
char msg[MSG_BUFFER_SIZE];

// WiFi Setup and Connection
void setup_wifi() {
    delay(10);
    Serial.println();
    Serial.print("Connecting to ");
    Serial.println(ssid);

    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);

    while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print("Try connection...");
    }
    randomSeed(micros());

    Serial.println("");
    Serial.println("Successful WiFi connection");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
}

// Callback function for MQTT protocol

void callback(char* topic, byte* payload, unsigned int length) {
    Serial.print("Message arrived [");
    Serial.print(topic);
    Serial.print("] ");
    for (int i = 0; i < length; i++) {
        Serial.print((char)payload[i]);
    }
    Serial.println();
    value = random(0,1000) * random(0,250);  
    // Switch on the LED if an 1 was received as first character
    if ((char)payload[0]  == '1') {
        digitalWrite(BUILTIN_LED, HIGH);
        snprintf (msg, MSG_BUFFER_SIZE, "Value: #%f", value);
        Serial.print("Publish message: ");
        Serial.println(msg);
        client.publish("Zefiro/StationName/Esp1", msg);
    } else{
        digitalWrite(BUILTIN_LED, LOW);  // Turn the LED off by making the voltage HIGH
        value = GASSenser(15, potPin1);
        snprintf (msg, MSG_BUFFER_SIZE, "Value: #%f", value);
        Serial.print("Publish message: ");
        Serial.println(msg);
        client.publish("Zefiro/StationName/Esp0", msg);
    }
}

void reconnect() {
  // Loop until reconnection
    while (!client.connected()) {
        Serial.println("Attempting MQTT connection...");
        // Client ID setup
        Serial.print("Client ID: ");
        String clientId = "ESP32Client-StationName";
        Serial.print(clientID);
        // Attempt to connect
        if (client.connect(clientId.c_str())) {
            Serial.println("Connection succeeded");
            // Once connected, publish an announcement in Broker...
            client.publish("Zefiro/Station", "StationName");
            // ... and resubscribe
            client.subscribe("Zefiro");
        } else {
            Serial.print("Connection failed, rc=");
            Serial.print(client.state());
            Serial.println("Retrying in 1 second");
            // Wait 5 seconds before retrying
            delay(1000);
        }
    }
}


void setup() {
  // Initialize Serial port
  Serial.begin(115200);
  pinMode(BUILTIN_LED, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883); // Broker connection port
  client.setCallback(callback); //Setting callback function as the callback of MQTT protocol 
}

void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
}