/// @func bignum_digits(num)
/// @arg {string/real} num

/*
	Returns: real
	Number of digits in num
*/

var num = __bignum_format(argument0);
return (string_length(num) - (string_char_at(num, 1) == "-"));