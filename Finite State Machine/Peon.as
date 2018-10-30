package  {
	
	import flash.display.MovieClip;
	import flash.geom.Rectangle;
	
	
	public class Peon extends MovieClip {

		// DONE: create property(ies) to track the player's state
		//1 = Idle, 2 = Accelerating, 3 = Decelerating, 4 = Stunned
		private var playersState:int = 1;
		
		private const MARGIN:int = 20;
		private var bounds:Rectangle = new Rectangle(MARGIN, MARGIN, 550 - MARGIN * 2, 400 - MARGIN * 2);
		
		private var friction:Number;
		private var acceleration:Number;
		private var velX = 0;
		private var velY = 0;

		private var stunTimer:int = 0;
		
		public function Peon() {
			scaleX = scaleY = .5;
			x = Math.random() * bounds.width + bounds.left;
			y = Math.random() * bounds.height + bounds.top;
			acceleration = Math.random() * .5 + .1;
			friction = Math.random() * .05 + .025;
			stop();
		}
		/**
		 * This method updates the Peon.
		 * @param	isMousePressed	Whether or not the mouse is currently pressed down.
		 */
		public function update(isMousePressed:Boolean):void {
			
			// DONE: swap out the player's artwork to reflect which state it is in
			// TODO: create a finite state machine with correct behavior and transitions
			switch (playersState) {
				case 1:
					gotoAndStop(1); // Idle
					resetStunTimer();
					decelerate();
					doEulerPhysics();
					if(isMousePressed) playersState = 2; // Is now Accelerating
					if(isOutOfBounds()) playersState = 4; // Is now Stunned
					break;
				
				case 2:
					gotoAndStop(2); // Accelerating
					accelerateTowardsMouse();
					doEulerPhysics();
					if(!isMousePressed) playersState = 3; // Is now Decelerating
					if(isOutOfBounds()) playersState = 4; // Is now Stunned
					break;
				
				case 3:
					gotoAndStop(3); // Decelerating
					decelerate();
					doEulerPhysics();
					if(isSlowedToStop()) playersState = 1; // Is now Idle
					if(isOutOfBounds()) playersState = 4; // Is now Stunned
					break;
				
				case 4:
					gotoAndStop(4); // Stunned
					jitter();
					doEulerPhysics();
					if(!isOutOfBounds() && tickStunTimer()) playersState = 1; //Is now Idle
					break;
				
			}
			
		}
		/**
		 * This method counts down a "Stun" timer. When the timer hits 0, the function returns true.
		 * @return	Whether or not the timer is finished.
		 */
		private function tickStunTimer():Boolean {
			stunTimer --;
			if(stunTimer <= 0) return true;
			return false;
		}
		/**
		 * This method resets the stun timer.
		 */
		private function resetStunTimer():void {
			stunTimer = 80;
		}
		/**
		 * This method causes the Peon to accelerate towards the mouse.
		 * This method also rotates the Peon to point in the direction it's moving.
		 */
		private function accelerateTowardsMouse():void {
			if(parent.mouseX < x) velX -= acceleration;
			if(parent.mouseX > x) velX += acceleration;
			if(parent.mouseY < y) velY -= acceleration;
			if(parent.mouseY > y) velY += acceleration;
			rotation = Math.atan2(velY, velX) * 180 / Math.PI;
		}
		/**
		 * This method detects whether the Peon has slowed to a stop.
		 * @return	Whether or not this object is considered to be "stopped".
		 */
		private function isSlowedToStop():Boolean {
			if(Math.abs(velX) < 2 && Math.abs(velY) < 2) return true;
			return false;
		}
		/**
		 * Slow this object down.
		 */
		private function decelerate():void {
			velX *= (1 - friction);
			velY *= (1 - friction);
		}
		/**
		 * Apply velocity to this object's position.
		 */
		private function doEulerPhysics():void {
			x += velX;
			y += velY;
		}
		/**
		 * Cause this object to "jitter".
		 */
		private function jitter():void {
			rotation = 0;
			x += Math.random() * 4 - 2;
			y += Math.random() * 4 - 2;
		}
		/**
		 * This method detects whether the object is "out of bounds".
		 * If it is out of bounds, it sets velocity so that this object will move back towards the acceptable play area.
		 * @return	Whether or not this object is out of bounds.
		 */
		private function isOutOfBounds():Boolean {
			var result:Boolean = false;
			
			if(x < bounds.left){
				velX = .5;
				result = true;
			}
			if(x > bounds.right){
				velX = -.5;
				result = true;
			}
			if(y < bounds.top){
				velY = .5;
				result = true;
			}
			if(y > bounds.bottom){
				velY = -.5;
				result = true;
			}
			return result;
		}
	}
	
}
