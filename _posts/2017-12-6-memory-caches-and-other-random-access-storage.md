---
layout: post
last-updated: 2017-12-6
title: Memory Caches and Other Random Access Storage
---

In one of my CompSci classes, we're learning about how memory caches operate. Let me set the stage: we're dealing with a word-addressable, 8-row cache with an 8-bit address bus (which means that you only use 8 bits to describe what data you want from the cache) and 2 words per block.

Let's consider the 4 least significant bits of the address. They are used to describe the location within the cache. These 4 bits are broken into 3 bits to describe the index (since 3 bits can describe 8 unique values) and 1 bit to describe the offset (which indicates whether you want the first word in the block or the second). All that can be described in 4 bits. 

The remaining bits are the "tag", which is an identifier stored with the actual payload of the cache block. About 94% of the information that uniquely identifies the address exists in the tag, but that 6% can be determined solely by the physical location.

I've been doing some work with physical location mapping in Cartesian coordinates with a robot. When the robot encounters a location it thinks is new, it stores an object at map[x][y] with some information about the location, including it's approximate Cartesian coordinates. However, I realized that this was unneccesary (and a waste of some space). In order to find that object in the first place, one would need the x and y coordinates already. Sure, it's nice for redundancy or portability purposes -- after all, grabbing that location and passing it to another function with just one parameter for the location object would be smooth, but ultimately inefficient.

I realize that this is somewhat of a moot point. Yes, what I'm suggesting would save a small percentage of the overall digital space (either on disk or in memory). However, those savings might add up. 