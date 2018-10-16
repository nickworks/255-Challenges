package code {		import flash.display.MovieClip;	import flash.events.Event;	import flash.utils.getTimer;	import flash.events.KeyboardEvent;	/**
	 * This class is our main document class.
	 */	public class Game extends MovieClip {		
		public static var deltaTime:Number = 0;
		
		/**
		 * This stores the previous frame's time (in milliseconds).
		 */		private var timePrev:int;
		/**
		 * This array stores our collection of Pipe objects.
		 */		private var pipes:Array = new Array();
		/**
		 * This is our countdown timer we use for timing our Pipe spawns; when it reaches 0, spawn a new Pipe!
		 */
		private var pipeDelay:Number;
		/**
		 * This is our player's avatar.
		 */
		private var bird:Bird;
		/**
		 * This is the ground that slides by.
		 */
		private var ground:GroundSlider;
		/**
		 * This is the player's current score.
		 */
		private var score:int = 0;
		/**
		 * This is a countdown timer for after the player dies before showing the "press space to flap again" message.
		 */
		private var deadDelay:Number = 0;
		
		/**
		 * This is our game constructor; it is called once when our program begins.
		 * In this method, I setup the event listeners and I add several game objects to the stage.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);			
			KeyboardState.setup(stage);
			
			ground = new GroundSlider();
			addChild(ground);			
			
			bird = new Bird();
			addChild(bird);
			
			reset();		}
		/**
		 * This method resets the game.
		 */
		private function reset():void {
			bird.reset();
			for(;pipes.length > 0;){
				removePipe(pipes[0]);
			}
			score = 0;
			deadDelay = 0;
			pipeDelay = .5;
			msg.visible = false;
			updateScoreboard();
		}
		/**
		 * This method is our main game loop. It is called every time the screen is redrawn.
		 * @param e:Event	This is required, but unused in the method.
		 */		private function handleFrame(e:Event):void {			getDeltaTime();			
			bird.update();
			if(!bird.isDead){
				spawnPipes();
				updatePipes();
				ground.update();
				deadDelay = 1;			} else {
				deadDelay -= Game.deltaTime;
				if(deadDelay <= 0) {
					msg.visible = true;
					if(KeyboardState.keySpace && !KeyboardState.keySpacePrev){
						reset();
					}
				}
			}
			KeyboardState.update();		}
		/**
		 * This method loops through all of the pipes, updates each, and checks for collision and score.
		 * @param deltaTime:Number	This is the amount of time that has passed since the previous frame.
		 */
		private function updatePipes():void {
			for(var i:int = pipes.length - 1; i >= 0; i--){
				pipes[i].update();
				bird.checkCollision(pipes[i]);
				if(!bird.isDead && pipes[i].didScore(bird)) scorePoint();
				if(pipes[i].isDead) removePipe(pipes[i]);
			}
			// for every pipe: (remember to loop backwards!)
			////// update the pipe (call a method in the Pipe class)
			////// check for collision with bird (call a method in Bird class)
			////// if bird is NOT dead and the pipe scores a point ... (call a method in the Pipe class)
			////////// score a point (call a method in the Game class)
			////// if the pipe is dead ...
			////////// remove the pipe from the game (call a method in the Game class)
			
		}
		/**
		 * This method plays a sound and adds a point to the player's score.
		 */
		private function scorePoint():void {
			new SoundCoin().play();
			score++;
			updateScoreboard();
		}
		/**
		 * This method updates the scoreboard TextField object.
		 */
		private function updateScoreboard():void {
			scoreboard.text = "SCORE: " + score;
		}
		/**
		 * This method calculates how much time has passed since the previous frame.
		 * This method schould only be called once per frame.
		 * @return Number	The amount of time that has passed since the previous frame (in seconds).
		 */		private function getDeltaTime():void {
			var time:int = getTimer();			Game.deltaTime = (time - timePrev)/1000;
			timePrev = time;		}
		/**
		 * If pipeDelay has reached zero, this method spawns two pipes and adds them to the game.
		 * @param deltaTime:Number	This is the amount of time that has passed since the previous frame.
		 */		private function spawnPipes():void {			
			pipeDelay -= Game.deltaTime;
			if(pipeDelay > 0) return;
			pipeDelay = 1.75;			
						var Y:Number = Math.random() * 300 + 100;						var pipe1:Pipe = new Pipe(Y - 275, false);			var pipe2:Pipe = new Pipe(Y + 275, true);			
			var index:int = getChildIndex(bg) + 1;
						addChildAt(pipe1, index);			addChildAt(pipe2, index);						pipes.push(pipe1);			pipes.push(pipe2);		}
		/**
		 * This method removes an unused Pipe object from the game.
		 * @param pipe:Pipe	The Pipe object to remove.
		 */
		private function removePipe(pipe:Pipe):void {
			var index:int = pipes.indexOf(pipe);
			pipes.splice(index, 1);
			removeChild(pipe);
		}	}}