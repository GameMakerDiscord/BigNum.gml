/// @func __bignum_explode(num)
/// @arg {string/real} num

/*
	Returns: array
	Arrayfies the digits of num [1-indexed]
	
	NOTE:
	arr[0] contains the sign of num
	arr[0] = 1		if num < 0
	arr[0] = 0		if num >= 0
*/

var num = __bignum_format(argument0),
	neg = (string_char_at(num, 1) == "-"),
	len = string_length(num) - neg,
	arr = array_create(len+1);

if (neg) num = string_delete(num, 1, 1);
arr[@ 0] = neg;

while (len) {
	arr[@ len] = real(string_char_at(num, len));
	--len;
}

return arr;