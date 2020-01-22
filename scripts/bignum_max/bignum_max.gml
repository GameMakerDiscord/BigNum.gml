/// @func bignum_max(num1, num2,...)
/// @arg {string/real} num1
/// @arg {string/real} num2,...

/*
	Returns: string
	max(num1, num2,...)
	Maximum number among the arguments
*/

var i = argument_count-1, mx = __bignum_format(argument[i]), num;

while (i--) {
	num = __bignum_format(argument[i]);
	if (bignum_compare(num, mx)) mx = num;
}

return mx;