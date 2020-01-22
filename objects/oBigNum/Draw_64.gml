/// @desc 

var xx = 20, yy = 10, hh = 20;

yy += hh; draw_text(xx, yy, "# Addition: 99999999999999999999 + 99999999999999999999");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 + 99999999999999999999));
yy += hh; draw_text(xx, yy, "BigNum: " + bignum_add("99999999999999999999","99999999999999999999"));
yy += hh;

yy += hh; draw_text(xx, yy, "# Subtraction: 99999999999999999999 - 99999999990999999999");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 - 99999999990999999999));
yy += hh; draw_text(xx, yy, "BigNum: " + bignum_subtract("99999999999999999999","99999999990999999999"));
yy += hh;

yy += hh; draw_text(xx, yy, "# Multiplication: 99999999999999999999 * 99999999999999999999");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 * 99999999999999999999));
yy += hh; draw_text(xx, yy, "BigNum: " + bignum_multiply("99999999999999999999","99999999999999999999"));
yy += hh;

yy += hh; draw_text(xx, yy, "# Division [int]: 99999999999999999999 / 9");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 div 9));
yy += hh; draw_text(xx, yy, "BigNum: " + bignum_divide("99999999999999999999",9));
yy += hh;

yy += hh; draw_text(xx, yy, "# Modulo: 99999999999999999999 % 9");
yy += hh; draw_text(xx, yy, "Normal: " + string(99999999999999999999 % 9));
yy += hh; draw_text(xx, yy, "BigNum: " + string(bignum_mod("99999999999999999999",9)));
yy += hh;

yy += hh; draw_text(xx, yy, "# SUPPORTS NEGATIVE NUMBERS!");