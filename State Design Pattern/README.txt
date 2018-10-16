Outcome: Student can implement the State Design Pattern.

For this problem, recreate RESULTS.swf by coding the State Design Pattern.

1. Create an "abstract" superclass that defines the scene classes' shared interface.

2. Change the super class of each scene to their new superclass.

3. In the Game class, make a variable to hold a reference to the current scene.

4. In the Game constructor, switch to the Title scene.

5. In the Game.gameLoop(), update the current scene.

6. In the Game class, add the ability to change the current scene.

7. In each scene class, tell the Game class when to switch to different scenes. DON'T use static methods or properties to achieve this.

8. In each scene class, create a method to remove any eventlisteners. Be sure to call this method when swapping scenes to be sure there are NO memory leaks.