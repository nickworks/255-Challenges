Outcome: Student can create particle systems.


For this problem, write a few new classes to create the particle systems as seen in the RESULTS.swf file.


	-Create a bubble particle system that periodically spawns bubbles where the mouse is.
	-

Create water drop particles that spawn when the mouse is clicked.
	-

Be sure to remove particles when they are dead so that there are no memory leaks.

Student's Description of each of the Particles:
	-Bubbles:
		-Spawns one every .1 to .3 seconds.
		-Once spawned, quickly grows to a random full size.
		-Growth rate between bubbles is also random.
		-Has a random x velocity and negative y acceleration.
		-Has a random amount of time it is "alive" for.
		-As it is "dying" it's alpha value decreases.
		-Once the alpha is 0, isDead is true.
	-Explosion:
		-Spawns about 10 everytime the mouse is clicked.
		-They all spawn at the mouse's position.
		-Each has a different alpha value from about .2 to 1.
		-has a random starting x and y velocity.
		-has a downward acceleration.
		-Once it leaves the screen, isDead is true.