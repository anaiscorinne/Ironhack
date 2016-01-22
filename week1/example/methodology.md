1. Figure out what classes I need. (classes)
2. Identify attributes that change between individuals. (instance variables)
3. Identify actions that can be performed. (methods)
4. Identify which attributes should be their own class.
5. Assign every single attribute, and every single action, to a class. 
6. Think about what information actions need, what additional parameters are necessary (arguments you'll need to send to the methods).


Starship Example

1. CLASS

Starship


2. ATTRIBUTES (instance variables)

Missions (will have lots of parameters, so this could be another class)
Capacity
Weapons (lots of parameters, so this could be another class)
Shields (lots of parameters also)
Speed
Crew (could be an array, things inside array could be classes in it and of themselves too)
Name
HomeBase

3. ACTIONS 

Fly (destination info)
TakeOff
Engage the Enemy (need to know who the enemy is or where he is)
Evade
Go Light Speed