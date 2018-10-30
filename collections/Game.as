﻿package  {		import flash.display.MovieClip;	import flash.events.MouseEvent;	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;	
	/**
	 * This class defines the state and behavior of this game.
	 */	public class Game extends MovieClip {		
		/** This array holds all of our CoolThing game objects. */		// TODO: create an array property
		
		/** This counter is used to limit how quickly new objects are spawned. */		var counter:int = 0;		
			var cool: Array = new Array();
		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Game() {			var timer:Timer = new Timer(20);
			timer.addEventListener(TimerEvent.TIMER, timerTick);
			timer.start();		}
		/**
		 * This eventhandler method is called by our Timer.
		 * @param	e	The TimerEvent object that called this function.
		 */		private function timerTick(e:TimerEvent):void {
			spawn();
			updateThings();
			
		}
		/**
		 * This method updates each of the CoolThing objects in our scene.
		 * "Dead" objects are removed from the game.
		 */		private function updateThings():void{
			for (var i: int = cool.length - 1; i >= 0; i--) {
				// Update thing.
				cool[i].update();

			// TODO: iterate through the array, updating each CoolThing
			// TODO: if a CoolThing object is "dead" remove it from the array
						if (cool[i].isDead) {
					removeChild(cool[i]);
					cool.splice(i, 1);
				}
			}
					}
		/**
		 * This function is called to spawn new CoolThing objects.
		 * It uses the counter property to limit how many objects
		 * are spawning.
		 */		private function spawn():void {			counter ++;			if (counter >= 10) {
				var ct: CoolThing = new CoolThing(mouseX, mouseY);
				cool.push(ct); // add CoolThing object to array.
				addChild(ct);
				counter = 0;
			}					}	}	}