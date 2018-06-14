ClassSnake Snake[] = new ClassSnake[4900]; //make so many Snake Objects that the game cannot run out
PVector Food = new PVector(10,10); //make a PVector for the foods location
//initialize two intigers that are used for keeping track of snake boxes and score
int boxes = 1;
int score = -1;
float FrameRateCounter = 10;

void setup()
{
  size(700,700);  //set window size
  rectMode(CENTER);
  frameRate(25);  //slow down the frame rate to make the game more playable
  
  //initialize all Snake Objects
  for(int i = 0; i < Snake.length; i ++){
    Snake[i] = new ClassSnake();
  }


}

void draw()
{
  background(0); //clear the screen every loop
  
  //loop through all the snake boxes user has collected and run methods on them
  for(int i = 0; i < boxes; i ++){
    Snake[i].Move(i); //move the object's Position Vector to its appropiate location
    Snake[i].Show(); //display the appropiate amount of snake boxes
    if (i!=0 && Snake[i].SelfHit(Snake[0].Pos)){
      text(str(score), width/2,height/2);
      noLoop();
    }
  }
  
  //update the Previous Position of every box(Used to place the box behind to that location)
  //for(int i = 0; i < boxes; i ++){
  //  Snake[i].PrevPosUpdate();
  //}
  
  //make sure the head does not hit the edges of the screen
  if(Snake[0].Pos.x > width || Snake[0].Pos.x < 0 || Snake[0].Pos.y > height || Snake[0].Pos.y < 0){
    text(str(score), width/2,height/2);
    noLoop();
  }
  
  //place the food in a different location when it is eaten(also increase amount of boxes and score)
  if(Snake[0].Pos.x == Food.x && Snake[0].Pos.y == Food.y){
    Food.x = floor(random(1,69)) * 10;
    Food.y = floor(random(1,69)) * 10;
    boxes = boxes + 3;
    score++;
  }
  
  //display the food
  fill(255,0,255);
  rect(Food.x, Food.y,10,10);
}