﻿package  {
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
		public var timer:Timer;
		public var origCT:ColorTransform;

			origCT = bg.transform.colorTransform;
			
			y = (Y + 2) * SIZE;
			reset();
		public function reset(){
			coverup.visible = true;
			bg.transform.colorTransform = origCT;
			isBomb = (Math.random() < .2);
			layerBomb.visible = isBomb;
		}
			coverup.visible = false;
			if(burn) boom();
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
		}