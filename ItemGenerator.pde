math math = new math();
utils U = new utils();
errors errors = new errors();
boolean latex = false; // writes latex tags
Table T = new Table();

void setup() {
  size(400, 400);
  U.initTable();
  int[] c = new int[3];
  c[0] = 0;
  c[1] = 0;
  c[2] = 0;

  for (int i=0; i<1; i++) {
    monomial m1 = U.generateMonomial(c);
    //  monomial m2 = U.generateMonomial(-2);
    //monomial m3 = U.generateNonSimilar(m1, 1);
    String _m1 = m1.stringify();
    print("complexity ("+c[0]+","+c[1]+","+c[2]+"): ");
    println(_m1);
//    c = U.smoothStep(c);
    //    c = U.step(c, floor(random(0, 3)), floor(random(0,2)));
  }
  //String _m2 = m2.stringify();
  //String _m3 = m3.stringify();

  //U.generateItem("x^2-y^2", 0.5).printme();
    U.generateItem("(x+y)(x-y)",c).printme();
  // U.generateItem("x^2+y^2+2xy",0.5).printme();
  //   U.generateItem("(x+y)^2",0.5).printme();

  //U.generateCsv(T, "(x+y)^2", 0.5, 10, "binomial_square_compact");
}
void draw() {
  background(0);
//  keyPressed();
}

void keyPressed() {
  if (keyCode == 'A') {
    text("A", 100, 100);
  } else {
    text("hello", 100, 100);
  }
}
