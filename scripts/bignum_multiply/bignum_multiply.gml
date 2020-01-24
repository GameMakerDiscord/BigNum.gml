/// @func bignum_multiply(num1, num2,...)
/// @arg {string/real} num1
/// @arg {string/real} num2,...

/*
	Returns: string
	num1 * num2 * num3 * ...
	Product of the numbers
*/

var i = argument_count-1, prd = __bignum_format(argument[i]);
while (i--) prd = __bignum_pair_multiply(prd, __bignum_format(argument[i]));
return prd;