package {
	import flash.display.MovieClip;
	import flash.utils.getTimer;
	import flash.events.Event;
	import flash.text.TextFieldAutoSize;
	/**
	 * This class defines the behavior and state of the game,
	 * in which a countdown timer triggers a circle to animate
	 * every 3 seconds.
	 */
	public class Game extends MovieClip {
		// TODO: Make any necessary modifications to support the calculation and use of delta-time.

		/** The countdown timer. How much time, in seconds, until the circle animates. */
		private var timer: Number = 0;
		/** The art work to animate. */
		private var art: MovieClip = new MovieClip();
		/** The amount of time that has passed since the start of the game. */
		private var time: Number = 0;
		/** The amount of time that has passed since the last frame. */
		private var dt: Number = 0;
		/** The amount of time that had passed since the start of the game last frame. */
		private var timeLast: Number = 0;
		/**
		 * This constructor sets up our artwork, adding it to the stage.
		 * It also sets up an ENTER_FRAME event listener.
		 */
		public function Game() {
			addChild(art);
			art.x = 275;
			art.y = 200;
			redrawCircle();
			timerLabel.autoSize = TextFieldAutoSize.LEFT;
			addEventListener(Event.ENTER_FRAME, handleFrame);
		}
		/*
		 * This event handler create our game loop.
		 * @param	e	The Event object that called this handler function.
		 */
		private function handleFrame(e: Event): void {
			var dt: Number = calcDeltaTime();
			animateCircle();
			countdown(dt);
			timerLabel.text = Math.ceil(timer).toString();
		}
		/**
		 * This method calculates and returns delta-time, in seconds.
		 * @return How much time has passed since the previous frame (in seconds).
		 */
		private function calcDeltaTime(): Number {
			// TODO: Calulcate and return delta-time (in seconds)

			time = getTimer();
			dt = (time - timeLast) / 1000;
			timeLast = time;

			return dt;
		}
		/**
		 * This method animates the artwork. It should be called every frame.
		 */
		private function animateCircle(): void {
			art.scaleX += (1 - art.scaleX) * .25;
			art.scaleY = art.scaleX;
		}
		/**
		 * This method implements the countdown timer. Every 3 seconds, this
		 * method should call the warp() method.
		 */
		private function countdown(dt: Number): void {
			// TODO: Modify this method to call the warp() method every 3 seconds. Use the timer property.
			timer = timer - dt;
			if(timer <= 0){
				warp();
				timer = 3;
			}
		}
		/**
		 * This method redraws the circle and scales it up to 1500% its size.
		 */
		private function warp(): void {
			redrawCircle();
			art.scaleY = art.scaleX = 15;
		}
		/**
		 * This method redraws the circle artwork, using a random color.
		 */
		private function redrawCircle(): void {
			art.graphics.clear();
			art.graphics.lineStyle(5, 0);
			art.graphics.beginFill(0xFFFFFF * Math.random());
			art.graphics.drawCircle(0, 0, 50);
		}
	}
}