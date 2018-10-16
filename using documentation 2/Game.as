package  {
	
	import flash.display.MovieClip;
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.filters.ConvolutionFilter;
	import flash.geom.Rectangle;
	import flash.geom.Point;
	import flash.display.Sprite;
	import flash.utils.getTimer;
	
	public class Game extends MovieClip {
		
		/** The pixels in a Bitmap that will be added to the stage. */
		var bmd:BitmapData;
		/** This Sprite is drawn into, and then it is used to draw into the BitmapData every frame. */
		var canvas:Sprite = new Sprite();
		/** The x-position of the mouse on the previous frame. */
		var prevX:int = -1;
		/** The y-position of the mouse on the previous frame. */
		var prevY:int = -1;
		/**
		 * This constructor instantiates a new BitmapData and a new Bitmap.
		 * It also adds the ENTER_FRAME event listener.
		 */
		public function Game() {
			bmd = new BitmapData(stage.stageWidth, stage.stageHeight, true);
			addChild(new Bitmap(bmd));
			addEventListener(Event.ENTER_FRAME, handleFrame);
		}
		/**
		 * This function handles the ENTER_FRAME event.
		 * @param e:Event	The Event object that called this event handler.
		 */
		private function handleFrame(e:Event):void {
			draw();
			blurPixels();
		}
		/**
		 * This function draws into the canvas Sprite. Then it draws the Sprite's
		 * graphics into the BitmapData.
		 */
		private function draw():void {
			canvas.graphics.clear();
			if(prevX >= 0 && prevY >= 0 && (prevX != mouseX || prevY != mouseY)){
				canvas.graphics.lineStyle(2, 0x0);
				canvas.graphics.moveTo(prevX, prevY);
				canvas.graphics.lineTo(mouseX, mouseY);
				canvas.graphics.lineStyle(0, 0x0, 0x0);
				canvas.graphics.beginFill(0xFFFFFF * Math.random(), 1);
				canvas.graphics.drawCircle(prevX, prevY, 5);
				canvas.graphics.endFill();
				bmd.draw(canvas);
			}
			prevX = mouseX;
			prevY = mouseY;
		}
		/**
		 * This function creates and applies a ConvolutionFilter to the BitmapData.
		 */
		private function blurPixels():void {
			var matrix:Array = [1,2,1,2,0,2,1,2,1];
			var weight:Number = 11;
			/* START: Instantiate a new 3x3 convolution filter.
			 * Use the matrix declared above for the ConvolutionFilter's matrix parameter.
			 * Use the weight declared above for the ConvolutionFilter's divisor paramter.
			 * Apply the ConvolutionFilter to the BitmapData; use a method in the BitmapData class.
			 */

			/* END */
		}
	}
}
