/// @func bignum_min(num1, num2,...)
/// @arg {string/real} num1
/// @arg {string/real} num2,...

/*
	Returns: string
	min(num1, num2,...)
	Minimum number among the arguments
*/

var i = argument_count-1, mn = __bignum_format(argument[i]), num;

while (i--) {
	num = __bignum_format(argument[i]);
	if (bignum_compare(mn, num)) mn = num;
}

return mn;