/// @func bignum_add(num1, num2)
/// @arg {string/real} num1
/// @arg {string/real} num2

/*
	Returns: string
	num1 + num2
	Sum of num1 and num2
*/

var a = __bignum_format(argument0), b = __bignum_format(argument1),
	na = (string_char_at(a, 1) == "-"), nb = (string_char_at(b, 1) == "-"),
	sum = "", tmp = 0, i, j;

if (na) a = string_delete(a, 1, 1);
if (nb) b = string_delete(b, 1, 1);

if (na & !nb) return bignum_subtract(b, a);
if (!na & nb) return bignum_subtract(a, b);

i = string_length(a);
j = string_length(b);
while (i || j) {
	if (i) tmp += real(string_char_at(a, i--));
	if (j) tmp += real(string_char_at(b, j--));
	sum = string(tmp % 10) + sum;
	tmp = tmp div 10;
}
if (tmp) sum = "1" + sum;
if (na)  sum = "-" + sum;

return sum;