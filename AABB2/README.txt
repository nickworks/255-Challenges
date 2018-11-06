Outcome: Student can implement AABB collision detection.
	

1. In the AABB class, create property(ies) to store the 4 edges of the bounding box

	2. In the AABB class, create property(ies) to store the size (or half-size) of the bounding box
	
3. In the AABB.setSize() method, store the size of the box

	4. In the AABB.calc() method, calculate the 4 edges of the box

	5. In the AABB.overlaps() method, return true if the boxes overlap, and return false if they do not

	6. In the Platform constructor, set the size of the aabb AND calculate aabb edges.
	
7. In the Player constructor, set the size of the aabb.
	
8. In Player.update(), calculate aabb edges.

	9. In Player.applyFix(), apply the fix AND make sure the velocity doesn't accumulate and cause clipping through the platforms.

	10. In the Game.handleFrame() method, if a player overlaps with a platform, calculate the fix and apply it to the player.