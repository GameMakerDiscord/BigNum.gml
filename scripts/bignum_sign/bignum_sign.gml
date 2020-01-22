/// @func bignum_sign(num)
/// @arg {string/real} num

/*
	Returns: real
	-1		if num > 0
	 0		if num = 0
	 1		if num < 0
*/

var num = __bignum_format(string(argument0));
return ((num != "0") * ((string_char_at(num, 1) != "-")*2-1));