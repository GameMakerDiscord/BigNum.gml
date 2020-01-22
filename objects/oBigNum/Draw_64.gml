/// @desc 

var xx = 20, yy = 0, hh = 20;

yy += hh; draw_text(xx, yy, "# Addition: 99999999999999999999 + 99999999999999999999");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 + 99999999999999999999));
yy += hh; draw_text(xx, yy, "BigNum: " + sum);
yy += hh;

yy += hh; draw_text(xx, yy, "# Subtraction: 99999999990999999999 - 99999999999999999999");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 - 99999999990999999999));
yy += hh; draw_text(xx, yy, "BigNum: " + subtraction);
yy += hh; draw_text(xx, yy, "Difference: " + difference);
yy += hh;

yy += hh; draw_text(xx, yy, "# Multiplication: 99999999999999999999 * 99999999999999999999");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 * 99999999999999999999));
yy += hh; draw_text(xx, yy, "BigNum: " + product);
yy += hh;

yy += hh; draw_text(xx, yy, "# Division [int]: 99999999999999999999 / 9");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 div 9));
yy += hh; draw_text(xx, yy, "BigNum: " + quotient);
yy += hh;

yy += hh; draw_text(xx, yy, "# Modulo: 99999999999999999999 % 9");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 % 9));
yy += hh; draw_text(xx, yy, "BigNum: " + modulo);
yy += hh;

yy += hh; draw_text(xx, yy, "# SUPPORTS NEGATIVE NUMBERS!");