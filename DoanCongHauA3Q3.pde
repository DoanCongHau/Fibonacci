//ASSIGNMENT 3 - QUESTION 3
//Written by Cong Hau Doan

import javax.swing.JOptionPane;
String n = JOptionPane.showInputDialog("enter a string of character: ");
final String SOURCE_STRING = " 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
final String CIPHER_STRING = "#A8fZKnVv0Tme5Eh61QGdubFt4qBsgOWM9DjIrcLzlUJ3NSaX7wpoiC2xPYRkyH";
final int SPACING = 50, GREY=#DED5D5;
int position;
int x, y;
int Offset=0;
int a;

void setup() {
  size(500, 500);
  textSize(20);
  background(GREY);
}

void draw() {
  cipher();
  Offset();
}

void mousePressed() {
  if (mousePressed) {
    background(GREY);
    Offset+=1;
    if (Offset>=10) {
      Offset=10;
    }
  }
}
void Offset() {
  text(Offset, 400, 400);
}

void cipher() {
  int y=0;
  for (int x=0; x<int(n.length()); x++) {
    if (x!=0 && x%10==0) {
      y++;
    }
    for (int j=0; j<SOURCE_STRING.length(); j++) {
      if (SOURCE_STRING.charAt(j)==n.charAt(x)) { 
        if ((j+Offset)<CIPHER_STRING.length()) {
          a=(j+Offset);
          text(CIPHER_STRING.charAt(a), (x%10)*SPACING, y*SPACING+50);
        } else {
          a=(j+Offset)%CIPHER_STRING.length();
          text(CIPHER_STRING.charAt(a), (x%10)*SPACING, y*SPACING+50);
        }
      }
    }
  }
}
