void game() {

  drawRoom();
  drawGameObjects();
  drawLightLayer();
  drawMiniMap();
  drawDarknessCell();

  //int i = 0;
  //while ( i < myObjects.size()) {
  // GameObject myObj = myObjects.get(i);
  // myObj.show();
  // myObj.act();
  //}
  //myHero.show();
  //myHero.act();
}
void drawRoom() {
  background(DARKBLUE);
  stroke(BLACK);
  strokeWeight(8);
  line(0, 0, width, height);
  line(width, 0, 0, height);
  //stroke(BLACK);
  //fill(WHITE);
  //rect(width/2,height/2,width-100,height-100);

  northRoom = map.get(myHero.rx, myHero.ry-1);
  eastRoom = map.get(myHero.rx+1, myHero.ry);
  southRoom = map.get(myHero.rx, myHero.ry+1);
  westRoom = map.get(myHero.rx-1, myHero.ry);

  println(northRoom, eastRoom, southRoom, westRoom);

  noStroke();
  fill(BLACK);
  if (northRoom != #FFFFFF) {
    ellipse(width/2, height*0.1, 100, 100);
  }
  if (eastRoom != #FFFFFF) {
    ellipse(width*0.9, height/2, 100, 100);
  }
  if (southRoom != #FFFFFF) {
    ellipse(width/2, height*0.9, 100, 100);
  }
  if (westRoom != #FFFFFF) {
    ellipse(width*0.1, height/2, 100, 100);
  }

  rectMode(CENTER);
  stroke(BLACK);
  fill(BLUE);
  rect(width/2, height/2, width*0.8, height*0.8);
}

void drawLightLayer () {
}


void drawDarknessCell () {
  for (int i = 0; i < darkness.size(); i++) {
    DarknessCell dark = darkness.get(i);
    dark.show();
  }
 }

  void drawGameObjects() {
    int i = 0;
    while (i<myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      myObj.show();
      myObj.act();
      if (myObj.HEALTHPOINTS == 0) {
        myObjects.remove(i);
      } else {
        i++;
      }
    }
  }

  void gameClicks() {
  }


void drawMiniMap () {
  int mapx = 0;
  int mapy = 0;
  stroke(BLACK,20);
  int i = 0;
  while (i < 100) {
    if(map.get(mapx,mapy) == WHITE) {
      
      fill(BLACK,100);
    } else if (map.get(mapx,mapy) == BLACK) {
      
      
      
      
}
