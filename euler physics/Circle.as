﻿package  {		import flash.display.MovieClip;	import flash.events.Event;
	import flash.geom.Point;		/**
	 * This class defines the behavior and state of a circle-shaped particle.
	 * This particle moves according to euler physics, having acceleration and velocity.
	 */	public class Circle extends MovieClip {		
		/** The x-component of this object's current velocity. */		var velX:Number = 10;
		/** The y-component of this object's current velocity. */		var velY:Number = 10;
		/** Gravity for the projcet */
		private var gravity:Point = new Point(0, 1);		
		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Circle():void {			addEventListener(Event.ENTER_FRAME, update);		}
		/**
		 * This method "resets" the particle, moving it back to the
		 * mouse position and giving it a random velocity.
		 */		private function reset():void {			x = parent.mouseX;			y = parent.mouseY;			velX = Math.random() * 10 - 5;			velY = Math.random() * - 10;			alpha = Math.random();		}		/**
		 * This event handler updates this object, causing it to move.
		 * @param	e	The Event object that called this handler function.
		 */		public function update(e:Event):void {						// TODO: implement Euler integration by using velocity, and adding gravity			velY += gravity.y;
			velX += gravity.x;
			
			x += velX;
			y += velY;
						if(y > 410) reset();		}	}}