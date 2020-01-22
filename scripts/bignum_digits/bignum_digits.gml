/// @func bignum_digits(num, [string])
/// @arg {string/real} num
/// @arg {bool}		   [string]    Whether to return the value as a string

/*
	Returns: real / string
	Number of digits in num
*/

var num = __bignum_format(argument[0]),
	str = (argument_count > 1) ? argument[1] : 0,
	len = string_length(num) - (string_char_at(num, 1) == "-");

return (str ? string(len) : len);