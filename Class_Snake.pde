class ClassSnake
{
  PVector Pos = new PVector(0,10);
  PVector Vel = new PVector(1,0);
  PVector PrevPos = Pos.copy();
  
  void Show(){
    
    rect(Pos.x,Pos.y,10,10);
    
  }
  void Move(int BoxNum){
    PrevPos = Pos.copy();
    if(BoxNum == 0){
      Pos.x = Pos.x + Vel.x * 10;
      Pos.y = Pos.y + Vel.y * 10;
      fill(255,0,0);
    }
    else{
      Pos.x = Snake[BoxNum - 1].PrevPos.x;
      Pos.y = Snake[BoxNum - 1].PrevPos.y;
      fill(0,255,0);
    }
    
  }
  void Dir(int X, int Y){
    Vel.x = X;
    Vel.y = Y;
    
  }
  boolean SelfHit(PVector PositionOfHeadBox){
    if(Pos.x == PositionOfHeadBox.x && Pos.y==PositionOfHeadBox.y){
      return true;
    }
    return false;
  }
  void Reset(){
    Pos.x = 0;
    Pos.y = 10;
    PrevPos = Pos.copy();
    Vel.x = 1;
    Vel.y = 0;
    
  }
}
