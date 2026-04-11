Yay, I finally have another post ready.

With the release of the Open Robotics Competition season 1 ruleset. I would like to announce that I will be competing under my own team, named Evolution Robotics. Currently, the team is just me, but I do have plans to eventually expand it with a few others. Since this is a new endeavour of mine, I wanted to share some of my goals and motivations for this team, along with some of the technical plans for future robots.

## Goals
The main goal of Evolution Robotics for now is to be one of, if not the best, teams in ORC. This goal is somewhat ambiguous and admittedly somewhat lofty considering my competition, but I think it is doable. Being good at ORC, in my opinion, requires many of the same skills you need to be good at FTC or FRC, just on a smaller scale. As I have been competing or volunteering in FRC for the last 4 years, I have a fairly decent idea of what is needed to build a winning robot and strategy.

A few other goals of the team are:
- To act as an outlet for me to show my own skills in robotics (Resume material).
- To further my learning and experimentation in various robotics concepts.
- To meet other like-minded individuals with a love for robotics.  

These goals are more self-explanatory, better defined, and I would say just as important as the main goal. In my experience, it is the fact that goals like this are so widespread that makes competitive robotics such a compelling sport.    

## Planned Design Methodology
My main inspiration for design is FRC team 1690 Orbit. Orbit builds amazing machines and backs them up with arguably the best software in FRC.

An amazing robot requires both amazing hardware and amazing software. Having one but not the other will, at best, result in a robot never reaching its full potential, and at worst, can result in one part sabotaging the other. While I do plan to build fairly complex robots (all hail turret). Since software is my specialty, I would rather keep the mechanical side of the robots fairly simple and use complex software to give me a competitive edge.

## Tech stack
Okay, enough of me ranting, here is the interesting stuff. I've been thinking about stuff like this for a while and have decided to use the following stack of tools for the competition.

[Onshape](https://onshape.com):  
Onshape, at the moment, is my favorite CAD software. The fact that it is incredibly extensible through community feature scripts and apps has made several tasks quite simple.

[Copper-rs](https://github.com/copper-project/copper-rs):  
Copper-rs is a robotics framework similar to tools like WPILIB or ROS2. Originally, I was planning to make my own framework, but I've found that the time investment required for me to build a comparable toolkit would take away a lot from development time without much benefit. After looking at a couple of other toolkits (most notably ROS2), I settled on Copper for the following reasons:
- Rust is my favorite programming language by a ridiculous margin. Since it follows the Rust way of doing things, certain issues will likely be caught by the compiler before I even consider deploying to hardware.
- It has amazing logging and replay support, with nearly everything being logged by default.
- The control flow is deterministic, well-defined, and easy to understand.
- It allows me to easily split a program into components without splitting it into multiple processes.  
- Decently easy to set up simulations.
- It is not a bloody nightmare to work with (Looking at you ROS)

[Onshape-to-Robot](https://github.com/Rhoban/onshape-to-robot):  
Onshape to Robot is a tool that takes Onshape assemblies and turns them into simulation file descriptions. It is a really customizable tool allowing you to define custom collision geometry, MuJoCo actuators, and more. I am far too lazy to write URDF and MJCF files manually, so this tool is a lifesaver.

[EvoMuJoCo](https://crates.io/crates/evomujoco):  
EvoMuJoCo is an abstraction of MuJoCo-rs that I made to make building simulations a bit quicker. Instead of having to read and write to the mujoco arrays manually, EvoMuJoCo provides a set of structs and helper methods to interact with them instead. I don't know if this is a good idea considering the law of leaky abstractions, but I personally prefer this workflow, so I'm probably going to keep it.

[Moteus](https://mjbots.com/products/moteus-r4-11):  
I managed to get some Moteus R4.11 controllers at their discounted price of $60. Moteus controllers are quite interesting since they have built-in encoders, closed-loop control, and CAN-FD. If I'm being honest, I wanted a tool that replicated the more advanced functionality of the Spark Max controllers I have used in FRC, and the Moteus controllers were the best bang for the buck option.

[Depth-AI](https://docs.luxonis.com/software-v3/depthai/):  
Not gonna lie, I just happen to have an Oak D Lite and need a project to justify it since it is not very good at slam (in my experience). I will probably use it for AI game piece detection since the on-board AI processor seems to be well-suited for such a task. Worst case scenario, it is a little less computation that the central processor has to do.

[Nix](https://nixos.org/):  
For those who don't know, Nix is a package manager that easily allows for declarative package management and easy creation of development environments. I daily drive NixOS on my personal machines and have found it to be quite useful in several projects. I am still deciding between using a standard Nix flake or using devenv. The main factor will probably be whichever one is easier to use. I also plan to package the robot code as a Nix Package to streamline deployment to the robot.

## Media and CAD/Code releases
When time allows, I hope to share my progress through various posts here and on the Evolution Robotics YouTube channel (which is empty at the time of writing). I mainly plan to share build progress and occasionally break down designs and techniques.

I also plan to release much of my CAD and code, though I don't know when that will happen.

CAD will probably be released when the robot is released, since I find that, looking at other robots, CAD is one of the most helpful resources I have found. Also, it is easier to get help with a design if others can see the design. (Also, I don't have a way to keep CAD private since I'm on Onshape's free tier)

Code will likely be released a fair bit later. Since most of my advantages will likely come from code, I would like to keep a few tricks up my sleeve. That said, I will likely be releasing various CuTasks, Snippets, and tools throughout the season. I may also release stripped-down versions of robot code (Basically all the robot code except anything I don't want to release). This feels like a good balance between contributing to the ORC software ecosystem while maintaining some competitive advantages from any tools I make.

## Event
This is more of a stretch goal than anything, but I do eventually hope to host an ORC competition in my home state of Idaho. Currently, the main obstacles to this goal are funding and interest. Funding is an obvious obstacle since I will need to buy the arena (around $300-$500) and potentially pay a fee to get a place to acquire a venue to host the competition at. Interest is also a major issue simply because ORC is so new. While a couple of my friends have shown interest in the competition, no one has said for sure whether they plan to compete. If you are interested in sponsoring an Idaho event, or are interested in starting a team, or competing in Idaho, feel free to reach out to me on the [ORC Discord](https://discord.gg/wjZhSPXY8J)

## Conclusion
That is pretty much all I have for now. Since the ORC rules are so new, I don't have many designs or tools to show at the moment. Hopefully, over the coming months, I will be able to post more useful articles here showing my progress, and I hope to see others work as well.

Good luck, everyone!

