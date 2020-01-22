/// @desc BigNum Demo

sum = bignum_add("99999999999999999999","99999999999999999999");
subtraction = bignum_subtract("99999999990999999999","99999999999999999999");
if (bignum_sign(subtraction) < 0) difference = bignum_abs(subtraction);
product = bignum_multiply("99999999999999999999","99999999999999999999");
quotient = bignum_divide("99999999999999999999",9);
modulo = bignum_mod("99999999999999999999",9,1);
maxNum = bignum_max(sum, subtraction, product);
minNum = bignum_min(product, modulo, quotient);
length = bignum_digits(maxNum,1);
if (bignum_compare(maxNum, minNum)) show_debug_message("EQUAL!");

show_debug_message("SUM: " + sum);
show_debug_message("SUB: " + subtraction);
show_debug_message("DIF: " + difference);
show_debug_message("PRD: " + product);
show_debug_message("QNT: " + quotient);
show_debug_message("MOD: " + modulo);
show_debug_message("MAX: " + maxNum);
show_debug_message("MIN: " + minNum);
show_debug_message("LEN: " + length);