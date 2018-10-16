package  {		import flash.display.MovieClip;	import flash.events.Event;	import flash.events.MouseEvent;		/**
	 * This class defines the behavior and state of this game, in
	 * which 5 circles are spawned. One circle moves with the mouse
	 * and collision detection is used to determine if the
	 * mouse-following circle is overlapping with any other circle.
	 * When the user clicks, the circles are regenerated randomly.
	 */	public class Game extends MovieClip {		
		/** The first Circle object. This one will follow the mouse around. */		var circleA:Circle = new Circle();
		/** The second Circle object. */		var circleB:Circle = new Circle();
		/** The third Circle object. */		var circleC:Circle = new Circle();
		/** The fourth Circle object. */		var circleD:Circle = new Circle();
		/** The fifth Circle object. */		var circleE:Circle = new Circle();		
		/**
		 * This constructor triggers the circles to be added, and
		 * it sets up the event listeners.
		 */		public function Game() {			spawnCircles();			stage.addEventListener(MouseEvent.MOUSE_MOVE, handleMove);			stage.addEventListener(MouseEvent.MOUSE_DOWN, handleClick);		}
		/**
		 * This event handler is fired whenever the mouse is clicked. It,
		 * in turn, calls the spawnCircles() method.
		 * @param	e	The MouseEvent object that called this handler function.
		 */		private function handleClick(e:MouseEvent):void {			spawnCircles();		}
		/**
		 * This method "resets" each of the circles, and
		 * adds them to the display list.
		 */		private function spawnCircles():void {			circleA.reset(true);			circleB.reset();			circleC.reset();			circleD.reset();			circleE.reset();						addChild(circleA);			addChild(circleB);			addChild(circleC);			addChild(circleD);			addChild(circleE);
			handleMove(null);		}
		/**
		 * This method is our game loop. It is called each frame.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleMove(e:MouseEvent):void {			circleA.x = mouseX;			circleA.y = mouseY;						var opacity:Number = .25;			if(checkCollision(circleA, circleB)){				opacity = 1;			}			if(checkCollision(circleA, circleC)){				opacity = 1;			}			if(checkCollision(circleA, circleD)){				opacity = 1;			}			if(checkCollision(circleA, circleE)){				opacity = 1;			}			circleA.alpha = opacity;					}
		/**
		 * This method checks for collision detection between two Circle objects.
		 * @param	one	One of the two Circle objects to use.
		 * @param	two	One of the two Circle objects to use.
		 * @return	Whether or not the two Circle objects are overlapping.
		 */		private function checkCollision(one:Circle, two:Circle):Boolean {
			// TODO: check if Circle one overlaps Circle two
			
			// If overlapping occurs, return true
			// Otherwise, return false			return false;		}	}}