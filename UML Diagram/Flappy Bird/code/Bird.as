﻿package code {
	
	 * This class is the player's avatar. Since we are using AABB collision detection, this class inherits
	 * from the ObjectAABB class.
	 */
		/**
		 * The amount of downward acceleration to apply per second (pixels-per-second-per-second).
		 */
		/**
		 * The amount of upward acceleration to apply for the jump.
		 */
		/**
		 * Whether or not the player has died.
		 */
		public var isDead:Boolean = false;
		/**
		 * The vertical velocity of the Player object.
		 */
		/**
		 * The Bird constructor. Here we set the AABB size of the bird.
		 */
			setSize(80, 60);
		/**
		 * This reset method is called when a new round has begun. It resets the Bird to its initial state.
		 */
		public function reset():void {
			x = y = 100;
			rotation = speedY = 0;
			isDead = false;
			play(); // begin flapping animation
		}
		/**
		 * This method contains the physics and input of the Bird object; it should be called every frame.
		 * @param dt:Number	This is the amount of time that has passed since the previous frame (delta time).
		 */
			if(y < 450){
				
				
					new SoundFlap().play();
				
				if(y < 0) y = 0; // clamp the bird to keep it on-screen
				
				calcAABB();
				
			} else {
				die();
			}
		/**
		 * Check for collision between this object and a Pipe object.
		 * @param pipe:Pipe The Pipe object to check against.
		 */
		public function checkCollision(pipe:Pipe):void {
			if(checkOverlap(pipe)) die();
		}
		/**
		 * This method is called when the player dies. It stops animations, plays a sound, and modifies state (isDead).
		 */
		private function die():void {
			if(isDead) return;
			new SoundLose().play();
			isDead = true;
			stop(); // stop animation
		}