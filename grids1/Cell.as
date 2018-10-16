package  {	import flash.display.MovieClip;	import flash.geom.ColorTransform;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
		public class Cell extends MovieClip {				public static const SIZE:int = 25;				public var X:int;		public var Y:int;		public var isBomb:Boolean = false;
		public var timer:Timer;
		public var origCT:ColorTransform;				public function Cell(X:int, Y:int) {

			origCT = bg.transform.colorTransform;
						this.X = X;			this.Y = Y;			x = X * SIZE;
			y = (Y + 2) * SIZE;			mouseChildren = false;
			reset();		}
		public function reset(){
			coverup.visible = true;
			bg.transform.colorTransform = origCT;
			isBomb = (Math.random() < .2);
			layerBomb.visible = isBomb;
		}		public function setCount(num:int):void {			label.text = "" + num;			label.visible = (num > 0);		}		public function uncover(burn:Boolean):void {
			coverup.visible = false;
			if(burn) boom();		}		public function isUncovered():Boolean {			return !coverup.visible;		}
		public function boom():void {
			var brightness:Number = Math.random() * .3;

			if(isBomb) brightness += .5;
			
			var f = function(n){
				return n * brightness;
			};
			
			bg.transform.colorTransform = new ColorTransform(f(1), f(.5), f(.1), 1, f(255), f(Math.random() * 128), 0, 0);
		}
		public function queueBoom(time:int):void {
			timer = new Timer(time, 1);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, handleTimer);
			timer.start();
		}
		private function handleTimer(e:TimerEvent):void {
			uncover(true);
			if(isBomb) makeParticles();
		}
		private function makeParticles():void {
			for(var i:int = 0; i < 1; i++){
				parent.addChild(new Particle(x, y));
			}
		}	}}