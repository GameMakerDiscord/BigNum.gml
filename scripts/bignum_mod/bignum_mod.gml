/// @func bignum_mod(num1, num2)
/// @arg {string/real} num1
/// @arg {real}		   num2

/*
	Returns: real
	num1 % num2
	Modulo of num1 and num2
*/

var a = __bignum_format(argument0), b = argument1,
	na = (string_char_at(a, 1) == "-"), nb = (b < 0),
	ans = 0, la, i = 0;

if (na) a = string_delete(a, 1, 1);
if (nb) b = -b;

la = string_length(a);
while (i++ < la) {
	ans = (ans*10 + real(string_char_at(a, i))) % b;
}
if (na) ans = -ans;

return ans;