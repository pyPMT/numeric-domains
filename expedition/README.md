# expedition

We have a sequence of waypoints that we have to pass through using our sleds.
A sled starts at waypoint0, and must travel to waypointn, using 1 supply each time it travels between waypoints.
Each waypoint is connected to the next in a line, and may store supplies. The sled may store or retrive supplies
at waypoints, with the first waypoint having more than sufficient supplies.

All manually created instances have two sleds, and there are two sets of instances. One set of 10 instances the two sleds
share the same waypoints (so they can cooperate), and the other set have separate waypoints, so the sleds 
are completely independent.
