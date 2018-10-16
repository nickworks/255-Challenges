package  {
	
	import flash.display.MovieClip;
	
	public class Player extends MovieClip {
		
		private const ACC:Number = 1000;
		private var velX:Number = 0;
		private var velY:Number = 0;
		
		public function Player() {
			
		}
		public function update():void {
			// handle input:
			if(Keyboard.isDown(Keyboard.W)){
				velY -= ACC * Time.deltaTime;
			}
			if(Keyboard.isDown(Keyboard.A)){
				velX -= ACC * Time.deltaTime;
			}
			if(Keyboard.isDown(Keyboard.S)){
				velY += ACC * Time.deltaTime;
			}
			if(Keyboard.isDown(Keyboard.D)){
				velX += ACC * Time.deltaTime;
			}
			
			// friction:
			velX *= .9;
			velY *= .9;
			
			// do euler physics:
			x += velX * Time.deltaTime;
			y += velY * Time.deltaTime;
			
			// rotate towards the mouse:
			var dx:Number = parent.mouseX - x;
			var dy:Number = parent.mouseY - y;
			rotation = Math.atan2(dy, dx) * 180 / Math.PI;
			
		}
	}
}
