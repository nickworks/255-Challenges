﻿package  {
	/**
	 * This class creates a circle that expands at an exponentially increasing rate.
	 */
		
		
		/** The current radius of the circle. */
		
		/** The color of the circle (chosen randomly). */
		 * This constructor sets the starting position of this object.
		 * @param	spawnX	The x position of this object's starting position.
		 * @param	spawnY	The y position of this object's starting position.
		 */
		/**
		 * This method erases and redraws the circle, using the radius property for the circle's size.
		 */
		/**
		 * This method is called every frame to animate the circle's radius and position.
		 */
			
			// increase the radius:
			
			// redraw the circle:
			// slide towards the mouse:
			// check if the circle is too large, mark as dead:
		/**
		 * This method bends a 0-to-1 value. The result is a slow-out as the value reaches 1.
		 * @param	val	The 0-to-1 value to bend.
		 * @param	exp	The exponent used to bend the curve. This should be a number greater than 1.
		 * @return	The "bent" value, still between 0 and 1.
		 */
			if(val > 1) val = 1;
			if(val < 0) val = 0;
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
		 */