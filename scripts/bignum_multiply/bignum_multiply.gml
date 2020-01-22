/// @func bignum_multiply(num1, num2)
/// @arg {string/real} num1
/// @arg {string/real} num2

/*
	Returns: string
	num1 * num2
	Product of num1 and num2
*/

var a = __bignum_format(argument0), b = __bignum_format(argument1),
	na = (string_char_at(a, 1) == "-"), nb = (string_char_at(b, 1) == "-"),
	prd = "0", tmp, da, db, la, lb, i, j, p = "";

if (na) a = string_delete(a, 1, 1);
if (nb) b = string_delete(b, 1, 1);
db = __bignum_explode(b);

la = string_length(a);
lb = array_length_1d(db);

for (i = 0; i < la; ++i) {
	da = real(string_char_at(a, la-i));
	tmp = 0;
	p = "";
	j = lb;
	
	while (--j) {
		tmp += da * db[j];
		p = string(tmp % 10) + p;
		tmp = tmp div 10;
	}
	p = string(tmp) + p;
	repeat(i) p += "0";
	
	prd = bignum_add(prd, p);
}
if (na ^ nb) prd = "-" + prd;

return prd;