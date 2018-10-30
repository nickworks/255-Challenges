package {

	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.getTimer;

	public class Game extends MovieClip {

		static public var deltaTime: Number = 0;
		private var prevTime: int = 0;

		// DONE: create a variable to reference the particles
		private var particles: Array = new Array;
		// DONE: create a "timer" variable to delay bubbles from spawning
		private var timer: Number = 0;

		public function Game() {

			addEventListener(Event.ENTER_FRAME, gameLoop);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, handleClick);

		}
		private function gameLoop(e: Event): void {
			calcDeltaTime();
			// DONE: call a method to periodically spawn bubbles
			countdownTimer();
			// DONE: call a method to update particles (and remove them if dead)
			updateParticles();
		}
		private function countdownTimer(): void {
			timer -= deltaTime;
			if (timer <= 0) {
				timer = Math.random();
				var pb: ParticleBubble = new ParticleBubble(mouseX, mouseY);
				particles.push(pb);
				addChild(pb);
			}
		}
		private function updateParticles(): void {
			if (particles.length > 0) {
				for (var i: int = particles.length - 1; i >= 0; i--) {
					particles[i].update();
					if (particles[i].isDead) {
						removeChild(particles[i]);
						particles.splice(i, 1);
					}
				}
			}
		}
		private function calcDeltaTime(): void {
			var currTime: int = getTimer();
			deltaTime = (currTime - prevTime) / 1000.0;
			prevTime = currTime;
		}
		private function handleClick(e: MouseEvent): void {
			// DONE: spawn explosion particles
			for (var j: int = 0; j <= 10; j++) {
				var pe: ParticleExplosion = new ParticleExplosion(mouseX, mouseY);
				particles.push(pe);
				addChild(pe);
			}
		}
	}
}