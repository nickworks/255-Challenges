package  {	import flash.display.MovieClip;	
	/**
	 * This class is used to create a circle with a random
	 * location, color, and radius. Whenever the circle is
	 * reset, it picks all new random values.
	 */	public class Circle extends MovieClip{
				/** The radius of this circle object. */		public var radius:Number;
		/**
		 * This method picks a new random location, color,
		 * and radius for the circle. The circle is then
		 * redrawn using the new radius and color.
		 * @param	isSpecial	Whether or not to draw an outline around the circle.
		 */		public function reset(isSpecial:Boolean = false):void {			x = Math.random() * 550;			y = Math.random() * 400;			radius = Math.random() * 20 + 10;			graphics.clear();
			if(isSpecial) graphics.lineStyle(2, 0x0);			graphics.beginFill(0xFFFFFF * Math.random());			graphics.drawCircle(0, 0, radius);		}	}	}