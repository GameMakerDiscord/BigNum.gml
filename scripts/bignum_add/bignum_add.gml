/// @func bignum_add(num1, num2,...)
/// @arg {string/real} num1
/// @arg {string/real} num2,...

/*
	Returns: string
	num1 + num2 + num3 + ...
	Sum of the numbers
*/

var i = argument_count-1, sum = __bignum_format(argument[i]);
while (i--) sum = __bignum_pair_add(sum, __bignum_format(argument[i]));
return sum;