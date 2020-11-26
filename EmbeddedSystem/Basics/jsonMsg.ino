/*
Project: jsonMSG
By: Felipe L. A.
Organization: Zefiro
Comments: Publish JSON message in MQTT topic. 
*/


#include <WiFi.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>

#define StationID_JSON (329) // JSON_OBJECT_SIZE(10) --- Details in https://arduinojson.org/v6/assistant/
#define BUILTIN_LED (2) //Control LED

const char* ssid = "Your WiFi Name";
const char* password = "Your WiFi Password";
const char* mqtt_server = "broker.mqtt-dashboard.com";

WiFiClient espClient;
PubSubClient client(espClient);
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
    // Switch on the LED if an 1 was received as first character
    if ((char)payload[0]  == '1') {
        digitalWrite(BUILTIN_LED, HIGH);
        client.publish("Zefiro/JsonTest/1", msg);
    } else{
        digitalWrite(BUILTIN_LED, LOW);
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
            client.publish("Zefiro/Station", msg);
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
    Serial.println("=============Zefiro JSON Test=============")
    // Setup the json message
    size_t capacity = JSON_OBJECT_SIZE(10);
    DynamicJsonDocument doc(capacity);
    String name = "Station-";
    name += String(random(0xffff), HEX);
    doc["name"] = name;
    doc["latitude"] = random(-90, 91);
    doc["longitude"] = random(-180,181);
    doc["no2"] = random(0,4096)*(3.3/4096)*(3.3/4096) + random(192, 284);
    doc["o3"] = random(0,4096)*(3.3/4096) + 231.73*0.523;
    doc["co"] = random(0,4096)*(3.3/4096) + 13.15*0.523;
    doc["pm2_5"] = random(0,4096)*(3.3/4096)+ 71.345*0.523;
    doc["pm10"] = random(0,4096)*(3.3/4096)+ 121.89*0.523;
    doc["so2"] = random(0,4096)*(3.3/4096) + random(84, 174);
    doc["smoke"] = random(0,2);

    // Serial print for control
    Serial.println("Publish message: ");
    serializeJsonPretty(doc, msg);
    Serial.println(msg);
    
    serializeJson(doc, msg);

    pinMode(BUILTIN_LED, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
    setup_wifi();
    client.setServer(mqtt_server, 1883);
    client.setCallback(callback);
}


void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  delay(100);
}