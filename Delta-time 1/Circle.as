﻿package  {		import flash.display.MovieClip;		/**
	 * This class defines the behavior and state of a circle
	 * that moves across the screen.
	 */	public class Circle extends MovieClip {		
		/**
		 * This method updates this object's position, causing it to move.
		 */		public function update():void {
			
			// TODO: Modify this method to use delta-time.
			// TODO: Make this object move at a rate of 200 pixels-per-second.
						x += 200 * Game.dtScaled;
						if(x > 590) x = -40 ;		}	}}