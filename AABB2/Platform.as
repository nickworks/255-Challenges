﻿package  {
	
	import flash.display.MovieClip;
	
	public class Platform extends MovieClip {
		
		public var aabb:AABB = new AABB();
		
		public function Platform() {

			Game.platforms.push(this);
			
			// TODO: using this.width and this.height set the size of the AABB
			aabb.setSize(this.width, this.height);
			// TODO: calc AABB
			aabb.calc(x,y);
		}
	}
	
}
