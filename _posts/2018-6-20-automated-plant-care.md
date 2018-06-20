---
layout: post
last-updated: 2018-6-20
title: Automated Plant Care
---
This project has been on my mental wishlist for months (if not years). I'm terrible at caring for the plants I get, but love having them around. Designing and building a system to care for my plants automatically would keep them alive, maybe even healthy. 

There will be three main parts of this project:

- Sensors: the inputs to the system
- A microcontroller/Raspberry Pi: the brains of the system
- Actuators: the outputs of the system

### Sensors
At this point, I know that I want multiple light sensors per plant so I know what parts are getting light and which parts are getting shaded. I also know I'll need at least one soil moisture sensor to prompt for hydration. I may also want a temperature sensor to monitor the temperature of the soil, but this is less critical (I think) because I could also just monitor the temperature of the air around the plants.

### Microcontroller
I think I could get away with using a modest [ESP8266](https://www.sparkfun.com/products/13678) with an I/O multiplexer to read the sensor data and control the actuators. However, the ESP wouldn't be responsible for the decision-making of when to water or turn the plants. I'm thinking a single Raspberry Pi could be in charge of that for all the plants. The ESPs would periodically check in to report sensor data and see if the Pi had any new tasks for them. 

### Actuators
This plant care system will stand on its own i.e. it won't be hooked into a municipal water supply. It will be served from a water tank, probably one of those seven gallon camping water tanks. I'm thinking I'll only need two actuators. I will need a water pump to supply the plant with water. I also want a turntable to turn the plant a little bit each day so it grows (roughly) vertical rather than leaning towards the sun. Both of these should be able to be supplied with 5 volts.

I will continue to update this post as the project progresses. I don't have a specific timeline, but my goal is to complete the whole thing by Christmas 2018. 
