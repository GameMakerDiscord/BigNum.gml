/// @desc __bignum_format(num)
/// @arg num

/*
	Returns: string
	num, without the unnecessary 0's and signs
*/

var num = string(argument0),
	neg = (string_char_at(num, 1) == "-"),
	ind = 1;

num = string_digits(num);
while (string_char_at(num, ind) == "0") ++ind;

if (ind > string_length(num)) return "0";

num = string_delete(num, 1, ind-1);
if (neg) num = "-" + num;
return num;