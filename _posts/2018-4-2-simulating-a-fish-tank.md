---
layout: post
last-updated: 2018-4-2
title: Simulating a Fish Tank
---

I've started working on a project I'm calling [lug-fishtank](https://github.com/wsu-lug/lug-fishtank). It's an fish tank simulator and a video doorbell system
rolled into one. You might ask "How did such a frankensteined concept come to be?" Well, the WSU Linux Users' Group has an office.
This office is barricaded behind two card access doors. The first door goes from the hallway to a large room belonging to the 3D Printing Club.
Both LUG and 3D Printing Club officers have card access to this room. The second door goes from the large room to a smaller room -- the LUG office. 
Only LUG officers have card access to this room. However, LUG members might want to have access to the room during office hours or some other time.
Society has already solved the problem of asking someone to open a door: we knock. Unfortunately, you can't knock on a door that you can't get to. 

The next best solution was a doorbell. Not just any doorbell though. A cool, interesting, insanely over-engineered doorbell.

### How over-engineered?

In a real fish tank, some fish might eat each other. A skilled aquarium tender would choose species of fish that lived in peace, but I know nothing about aquariums and these fish are virtual. In lug-fishtank, multiple species of fish exist within a food chain determined by aggression.


Feature list
- Genetic system
- Food chain system
- Video stream systemn