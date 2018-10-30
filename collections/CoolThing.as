package  {	import flash.display.MovieClip;	import flash.events.MouseEvent;	
	/**
	 * This class creates a circle that expands at an exponentially increasing rate.
	 */	public class CoolThing extends MovieClip{
				/** Whether or not this object should be removed. */		public var isDead:Boolean = false;
		
		/** The current radius of the circle. */		private var radius:Number = 2;
		
		/** The color of the circle (chosen randomly). */		private var color:uint = 0xFFFFFF * Math.random();				/**
		 * This constructor sets the starting position of this object.
		 * @param	spawnX	The x position of this object's starting position.
		 * @param	spawnY	The y position of this object's starting position.
		 */		public function CoolThing(spawnX:Number, spawnY:Number){			x = spawnX;			y = spawnY;		}
		/**
		 * This method erases and redraws the circle, using the radius property for the circle's size.
		 */		private function draw():void {			graphics.clear();			graphics.beginFill(color);			graphics.drawCircle(0, 0, radius);		}
		/**
		 * This method is called every frame to animate the circle's radius and position.
		 */		public function update():void {
			
			// increase the radius:			radius += lerp(.01, 20, radius / 700);
			
			// redraw the circle:			draw();			
			// slide towards the mouse:			if(parent){				var ease:Number = inversePow(2 / radius, 3);				x += (parent.mouseX - x) * ease;				y += (parent.mouseY - y) * ease;			}			
			// check if the circle is too large, mark as dead:			if(radius > 800){				isDead = true;			}		}
		/**
		 * This method bends a 0-to-1 value. The result is a slow-out as the value reaches 1.
		 * @param	val	The 0-to-1 value to bend.
		 * @param	exp	The exponent used to bend the curve. This should be a number greater than 1.
		 * @return	The "bent" value, still between 0 and 1.
		 */		private function inversePow(val:Number, exp:int = 2):Number {
			if(val > 1) val = 1;
			if(val < 0) val = 0;			return 1 - Math.pow(1 - val, exp);		}
		/**
		 * This method is a standard linear interpolation function.
		 * A linear interpolation returns a number in the min-to-max range,
		 * based on an input percentage, t. When t is 0%, the function
		 * returns min; when t is 100%, the function returns max. Any
		 * other percentage is a value between min and max.
		 * @param	min	The minimum of the range of possible values.
		 * @param	max	The maximum of the range of possible values.
		 * @param	t	The percentage. The value should be in the 0-to-1 range.
		 * @return	The interpolated value.
		 */		private function lerp(min:Number, max:Number, t:Number):Number{			if(t < 0) t = 0;			if(t > 1) t = 1;			return (max - min) * t + min;		}	}	}