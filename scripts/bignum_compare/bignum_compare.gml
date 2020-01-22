/// @func bignum_compare(num1, num2)
/// @arg {string/real} num1
/// @arg {string/real} num2

/*
	Returns: real
	-1		if num1 > num2
	 0		if num1 = num2
	 1		if num1 < num2
*/

var a = __bignum_format(argument0), b = __bignum_format(argument1),
	na = (string_char_at(a, 1) == "-"), nb = (string_char_at(b, 1) == "-"),
	ta, tb, da, db, i;
	
if (na & !nb) return -1;
if (!na & nb) return 1;

if (na) a = string_delete(a, 1, 1);
if (nb) b = string_delete(b, 1, 1);

da = string_length(a);
db = string_length(b);
if (da != db) return (((da < db)*2-1) * (na*2-1));

i = 0;
while (i++ < da) {
	ta = real(string_char_at(a, i));
	tb = real(string_char_at(b, i));
	if (ta != tb) return (((ta < tb)*2-1) * (na*2-1));
}

return 0;