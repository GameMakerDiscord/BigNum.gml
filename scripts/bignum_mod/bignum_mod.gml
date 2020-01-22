/// @func bignum_mod(num1, num2, [string])
/// @arg {string/real} num1
/// @arg {real}		   num2
/// @arg {bool}		   [string]    Whether to return the value as a string

/*
	Returns: real / string
	num1 % num2
	Modulo of num1 and num2
*/

var a = __bignum_format(argument[0]), b = argument[1],
	str = (argument_count > 2) ? argument[2] : 0,
	na = (string_char_at(a, 1) == "-"), nb = (b < 0),
	ans = 0, la, i = 0;

if (na) a = string_delete(a, 1, 1);
if (nb) b = -b;

la = string_length(a);
while (i++ < la) {
	ans = (ans*10 + real(string_char_at(a, i))) % b;
}
if (na) ans = -ans;
if (str) ans = string(ans);

return ans;