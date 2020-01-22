/// @func bignum_abs(num)
/// @arg {string/real} num

/*
	Returns: string
	|num|
	Absolute value of num
*/

var num = __bignum_format(argument0);
return ((string_char_at(num, 1) == "-") ? string_delete(num, 1, 1) : num);