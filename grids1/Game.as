﻿package  {
	import flash.events.Event;
	import flash.events.TimerEvent;
	
		var pleaseWait:Boolean = false;
		var timer:Timer = new Timer(1500, 1);
		var intensity:Number = 0;
		 * This constructor sets up the event listeners for this object.
		 * Then, a grid of Cell objects is created.
		 * Finally, the Cells are all made aware of their neighbors.
		 */
			addEventListener(Event.ENTER_FRAME, handleFrame);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, handleTimer);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, stageClicked);
		/**
		 * This method only controls camera shake.
		 * @param e:Event	The Event object that called this event handler.
		 */
		private function handleFrame(e:Event):void {
			if(intensity > 0) {
				intensity -= .02;
				var result = 50 * intensity * intensity;
				x = Math.random() * result - result/2;
				y = Math.random() * result - result/2;
			} else {
				x = 0;
				y = 0;
			}
		}
		/**
		 * This method creates a 2D grid of Cell objects.
		 * Each Cell is added to the display tree and inserted into a 2D array.
		 * Each Cell has a MOUSE_DOWN event listener added to it.
		 */
			
			 * Each cell instantiated should:
			 *	- Be added to the display tree.
			 *	- Have a mouse down event listener that fires "cellClicked"
			 * 	- Be stored in the 2D array.
			 */
			/* END */
		/**
		 * This method tallies how many bombs are nearby each Cell object.
		 * The each Cell object is made aware of this number via Cell.setCount()
		 */
		/**
		 * This method checks to see if there is a bomb at a specified location in the grid.
		 * @param X:int	x-coordinate to lookup on the grid.
		 * @param Y:int	y-coordinate to lookup on the grid.
		 * @return Boolean	Whether or not a bomb was found.
		 */
		/**
		 * This method looks up and returns the Cell at a specified location in the grid.
		 * @param X:int	x-coordinate to lookup on the grid.
		 * @param Y:int	y-coordinate to lookup on the grid.
		 * @return Cell	The Cell object at the location. If no Cell was found, return null;
		 */
		/**
		 * This event handler is called when a Cell is clicked on.
		 * @param e:MouseEvent	The MouseEvent that called this event handler.
		 */
			
		/**
		 * This method "exposes" a Cell. If the Cell isn't nearby any bombs, this function
		 * behaves recursively to expose all nearby Cell objects.
		 * If the game has been lost, all Cell objects are exposed and told to change colors.
		 * @param cell:Cell	The Cell to expose.
		 */
			if(cell == null) return;
			
			
			if(hasLost) return;
		/**
		 * This function is called when the player clicks on a Bomb.
		 * @param X:int	The x-coordinate of the Bomb.
		 * @param Y:int The y-coordinate of the Bomb.
		 */
			pleaseWait = true;
			bar.derp.visible = true;
			timer.start();
			kablooey(X, Y);
		/**
		 * This function causes a massive explosion!
		 * Every Cell is set on a Timer according to their distance from the explosion's origin.
		 * When the Timer finished, the Cell changes colors and spawns Particle objects.
		 * @param OX:int	The x-coordinate of the explosion origin.
		 * @param OY:int	The y-coordinate of the explosion origin.
		 */
		private function kablooey(OX:int, OY:int):void {
			intensity = 1;
			for(var X:int = 0; X < grid.length; X++){
				for(var Y:int = 0; Y < grid[X].length; Y++){

					var dx:int = OX - X;
					var dy:int = OY - Y;
					var fuse:int = 20 * (dx * dx + dy * dy)/5;
					
					grid[X][Y].queueBoom(fuse);
				}
			}
		}
		/**
		 * This resets the game so the player can play again.
		 */
		private function reset():void {
			hasLost = false;
			bar.derp.visible = false;
			for(var X:int = 0; X < grid.length; X++){
				for(var Y:int = 0; Y < grid[X].length; Y++){
					grid[Y][X].reset();
				}
			}
			setNeighbors()
		}
		/** This event handler is called when the stage is clicked. */
		private function stageClicked(e:MouseEvent):void {
			if(hasLost == true && pleaseWait == false){
				reset();
			}
		}
		/** This event handler is called when the Timer is finished. */
		private function handleTimer(e:Event):void {
			pleaseWait = false;
		}