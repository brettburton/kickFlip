


class Style{
  
color c1;
color c2;
color c3;
color c4;
color c5;
color c6;

int h0;
int h1;
int h2;
int h3;
int h4;
int h5;
int h6;


int p;

int centerX;
int centerY;

int col1; 
int col2;
int col3;
int col4;
int col5;
int col6;
int col7;
int col8;

int row1;
int row2;
int row3;
int row4;
int row5;
int row6;
int row7;
int row8;
  
Style() {
  
  //all initially grey
  c1 = color(80,80,80);
  c2 = color(80,80,80);
  c3 = color(80,80,80);
  c4 = color(80,80,80);
  c5 = color(80,80,80);
  c6 = color(80,80,80);

  h0 = int(width/25);
  h1 = int(width/20);
  h2 = int(width/16); 
  h3 = int(width/13);
  h4 = int(width/10);
  h5 = int(width/6.6);
  h6 = int(width/5);
  
  p = int(width/35);
  
  centerX = int(width/2);
  centerY = int(width/2);
  
  col1 = int(width/8);
  col2 = int(width/4);
  col3 = int(width/2.66);
  col4 = int(width/2);
  col5 = int(width/1.6);
  col6 = int(width/1.33);
  col7 = int(width/1.14);
  col8 = int(width);
  
  row1 = int(width/8);
  row2 = int(width/4);
  row3 = int(width/2.66);
  row4 = int(width/2);
  row5 = int(width/1.6);
  row6 = int(width/1.33);
  row7 = int(width/1.14);
  row8 = int(width);
  
}

void scheme(int sch_) {
  
  if (sch_ == 1){
  c1 = color(79,87,170);
  c2 = color(143,0,46); 
  c3 = color(69,72,87);
  c4 = color(190,226,231);
  c5 = color(116,105,255);
  c6 = color(255,235,135);
  }
  
  if (sch_ == 2){
  c1 = color(75,146,253);
  c2 = color(255,184,73); 
  c3 = color(242,48,162);
  c4 = color(199 ,247,22);
  c5 = color(255,20,14);
  c6 = color(14,93,216);
  }
  
}
  
}
