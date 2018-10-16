package  {	import flash.display.MovieClip;	import flash.events.MouseEvent;	import flash.events.Event;	
	/**
	 * This class defines the behavior and state of a Dust object.
	 * This object pulses, growing and shrinking over time.
	 * When the mouse rolls over, this object grows larger.
	 * When the mouse rolls out, this object returns to its original behavior.
	 * When the mouse is pressed, this object begins shaking.
	 * When the mouse is released, this object should be destroyed.
	 */	public class Dust extends MovieClip{
		/** Whether or not the mouse is currently over this object. */		private var hover:Boolean = false;
		/** Whether or not the mouse button is currently considered down. */		private var mouseDown:Boolean = false;
		/** An offset for the pulse wave, so the pulses aren't in sync with each other. */		private var waveOffset:Number = Math.random() * 6;
		/** The base x-position. This ensures that the object can't drift when it is randomly shaking. */		private var baseX:Number;
		/** The base y-position. This ensures that the object can't drift when it is randomly shaking. */		private var baseY:Number;		
		/**
		 * This constructor positions this object and sets up all of the event listeners.
		 * @param	spawnX	The x-position to use for this object.
		 * @param	spawnY	The y-position to use for this object.
		 */		public function Dust(spawnX:Number, spawnY:Number){			buttonMode = true;			baseX = x = spawnX;			baseY = y = spawnY;			draw();			addEventListener(Event.ENTER_FRAME, handleFrame);			addEventListener(MouseEvent.MOUSE_OVER, handleRollOver);			addEventListener(MouseEvent.MOUSE_OUT, handleRollOut);			addEventListener(MouseEvent.MOUSE_DOWN, handleMouseDown);			addEventListener(MouseEvent.MOUSE_UP, handleMouseUp);		}
		/**
		 * This method draws a circle using a random color.
		 */		private function draw():void {			graphics.clear();			graphics.beginFill(0xFFFFFF * Math.random());			graphics.drawCircle(0, 0, 60);		}
		/**
		 * This event handler is called when the mouse rolls over this object.
		 * @param	e	The MouseEvent object that called this handler function.
		 */		private function handleRollOver(e:MouseEvent):void {			hover = true;		}
		/**
		 * This event handler is called when the mouse rolls out from this object.
		 * @param	e	The MouseEvent object that called this handler function.
		 */		private function handleRollOut(e:MouseEvent):void {			hover = false;			mouseDown = false;		}
		/**
		 * This event handler is called when the mouse is pressed while over this object.
		 * @param	e	The MouseEvent object that called this handler function.
		 */		private function handleMouseDown(e:MouseEvent):void {			mouseDown = true;		}
		/**
		 * This event handler is called when the mouse is released.
		 * @param	e	The MouseEvent object that called this handler function.
		 */		private function handleMouseUp(e:MouseEvent):void {			if(mouseDown == true){				dispose(); // destroy this object			}			mouseDown = false;		}
		/**
		 * This event handler updates this object, causing it to animate.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			waveOffset += .1;			var targetScale:Number = hover ? 1 : Math.sin(waveOffset) * .05 + .1;						scaleX += (targetScale - scaleX) * .5;			scaleY = scaleX;						if(mouseDown){				scaleX += Math.random() * .2 - .1;				scaleY += Math.random() * .2 - .1;				alpha = 1;				x = baseX + Math.random() * 10 - 5;				y = baseY + Math.random() * 10 - 5;			} else {				alpha = .5;				x = baseX;				y = baseY;			}		}
		/**
		 * This method is responsible for destroying this object.
		 */		private function dispose():void {			// TODO: Destroy this object by preparing it for garbage collection. Be sure not to have a memory leak!		}	}	}