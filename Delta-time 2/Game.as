﻿package  {		import flash.display.MovieClip;	import flash.utils.getTimer;	import flash.events.Event;	import flash.text.TextFieldAutoSize;		/**
	 * This class defines the behavior and state of the game,
	 * in which a countdown timer triggers a circle to animate
	 * every 3 seconds.
	 */	public class Game extends MovieClip {
		// TODO: Make any necessary modifications to support the calculation and use of delta-time.
		
		/** The countdown timer. How much time, in seconds, until the circle animates. */		private var timer:Number = 0;
		/** The art work to animate. */		private var art:MovieClip = new MovieClip();		
		/**
		 * This constructor sets up our artwork, adding it to the stage.
		 * It also sets up an ENTER_FRAME event listener.
		 */		public function Game() {			addChild(art);			art.x = 275;			art.y = 200;			redrawCircle();						timerLabel.autoSize = TextFieldAutoSize.LEFT;			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/*
		 * This event handler create our game loop.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {
			
			Time.update();						animateCircle();						countdown();						timerLabel.text = Math.ceil(timer).toString();		}

		/**
		 * This method animates the artwork. It should be called every frame.
		 */		private function animateCircle():void {			art.scaleX += (1 - art.scaleX) * .25;			art.scaleY = art.scaleX;		}
		/**
		 * This method implements the countdown timer. Every 3 seconds, this
		 * method should call the warp() method.
		 */		private function countdown():void {			
			// TODO: Modify this method to call the warp() method every 3 seconds. Use the timer property.
			if(timer > 0){
				timer -= Time.dt;
			} else {
				warp();
				timer = 3;
			}
					}
		/**
		 * This method redraws the circle and scales it up to 1500% its size.
		 */		private function warp():void {			redrawCircle();			art.scaleY = art.scaleX = 15;		}
		/**
		 * This method redraws the circle artwork, using a random color.
		 */		private function redrawCircle():void {			art.graphics.clear();			art.graphics.lineStyle(5, 0);			art.graphics.beginFill(0xFFFFFF * Math.random());			art.graphics.drawCircle(0, 0, 50);		}	}}