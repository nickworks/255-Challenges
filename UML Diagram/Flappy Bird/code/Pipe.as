package code {		import flash.display.MovieClip;		/**
	 * This class represents the vertical pipes that the player must dodge. Because we are
	 * using AABB collision detection for this game, this class inherits from ObjectAABB.
	 */	public class Pipe extends ObjectAABB {		
		/**
		 * This is the pipe's horizontal speed (pixels-per-second).
		 */		private static const SPEED_X:Number = -200;
		/**
		 * This flag represents whether or not we are finished with the pipe (ie. if it's gone off the side of the screen).
		 */		public var isDead:Boolean = false;
		/**
		 * Whether or not this pipe has already given the player a point.
		 */
		public var isScored:Boolean = false;		
		/**
		 * The Pipe constructor.
		 * @param y:Number	Where to position the pipe vertically.
		 * @param flip:Boolean	Whether or not to flip the pipe artwork vertically.
		 */		public function Pipe(y:Number, flip:Boolean) {			x = 650;			this.y = y;			if(flip) scaleY = -1;
			cacheAsBitmap = true;
			setSize(78, 354);		}
		/**
		 * This update method should be called every frame; it causes the pipe to move.
		 * @param dt:Number	This is the amount of time that has passed since the previous frame (delta time).
		 */		public function update():void {			
			x += SPEED_X * Game.deltaTime;
						if(x < -50) isDead = true;
			calcAABB();		}
		/**
		 * This method checks to see whether or not the player should get a point for passing this pipe.
		 * @param bird:Bird	A reference to the Bird object (player's avatar).
		 * @return Boolean	Whether or not the player should get a point.
		 */
		public function didScore(bird:Bird):Boolean {
			/* If the player has already received a point from this pipe, then the method returns false so we don't give
			 * the player another point from the same pipe.
			 */
			if(isScored) return false;

			/* Since pipes are spawned in pairs, we need to ignore half of our Pipe objects or the player would get
			 * double points. For this reason, I only let the vertically flipped pipes (scaleY < 0) give the player points.
			 */
			if (bird.edgeL > edgeR && scaleY < 0){
				isScored = true;
				return true;
			}
			return false;
		}	}	}