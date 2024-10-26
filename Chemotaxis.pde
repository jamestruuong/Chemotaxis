Walker[]bob;

void setup(){
 size(500,500);
 bob = new Walker[100];
 for(int i=0; i<bob.length; i++){
   bob[i]= new Walker();
  }
  for(int i=0; i<bob.length; i++){
   bob[i].fillColor();
  }
 
}

void draw(){
  background(1);
   
  for(int i=0; i<bob.length; i++){
    bob[i].show();
    bob[i].walk();
  }
  
  
}


class Walker{
  int myX, myY;
  
  Walker(){
    myX= width/2;
    myY= height/2;
    
  }
  
  void walk(){
    if(mouseX > myX){
      myX= myX + (int)(Math.random()*10-3);
    }else if(mouseX< myX){
      myX = myX + (int)(Math.random()*10-7);
    }
    if(mouseY > myY){
      myY = myY + (int)(Math.random()*10-3);
    }else if(mouseY < myY){
      myY= myY + (int)(Math.random()*10-7);
    }
  }
  void show(){
    
    ellipse(myX,myY, 20,20);
    
  }
  void fillColor(){
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
}

