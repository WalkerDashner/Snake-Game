void keyPressed()
{
  if(keyCode == RIGHT)
  {
    for(int i = 0; i < boxes; i ++){
      if(Snake[0].Vel.x != -1 && Snake[0].Vel.y != 0){
        Snake[i].Dir(1,0);
      }
    }
  }
  if(keyCode == LEFT)
  {
    for(int i = 0; i < boxes; i ++){
      if(Snake[0].Vel.x != 1 && Snake[0].Vel.y != 0){
        Snake[i].Dir(-1,0);
      }
    }
  }
  if(keyCode == UP)
  {
    for(int i = 0; i < boxes; i ++){
      if(Snake[0].Vel.x != 0 && Snake[0].Vel.y != 1){
        Snake[i].Dir(0,-1);
      }
    }
  }
  if(keyCode == DOWN)
  {
    for(int i = 0; i < boxes; i ++){
      if(Snake[0].Vel.x != 0 && Snake[0].Vel.y != -1){
        Snake[i].Dir(0,1);
      }
    }
  }
  if(key == ' ' && GameEnd == true){
    loop();
    for(int i = 0; i < boxes; i ++){
      Snake[i].Reset();
    }
    boxes = 1;
    score = -1;
    Food.x = 10;
    Food.y = 10;
  }
  
  
  
}
