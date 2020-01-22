/// @func bignum_subtract(num1, num2)
/// @arg {string/real} num1
/// @arg {string/real} num2

/*
	Returns: string
	num1 - num2
	Subtraction of num1 and num2
*/

var a = __bignum_format(argument0), b = __bignum_format(argument1), c = "",
	na = (string_char_at(a, 1) == "-"), nb = (string_char_at(b, 1) == "-"),
	sub = "", diff, i, j, carry = 0;

if (na) a = string_delete(a, 1, 1);
if (nb) b = string_delete(b, 1, 1);

if (na & !nb) return ("-" + bignum_add(a, b));
if (!na & nb) return bignum_add(a, b);

if (bignum_compare(a, b) < 0) {
	c = a;
	a = b;
	b = c;
}

i = string_length(a);
j = string_length(b);
while (i || j) {
	if (i) diff = real(string_char_at(a, i--))-carry;
	if (j) diff -= real(string_char_at(b, j--));
	if (diff < 0) {
		diff += 10;
		carry = 1;
	}
	sub = string(diff % 10) + sub;
}
if (c != "") sub = "-" + sub;

return __bignum_format(sub);