/// @func bignum_divide(num1, num2)
/// @arg {string/real} num1
/// @arg {real}		   num2

/*
	Returns: string
	int(num1 / num2)	| num1 div num2
	Quotient(int) when num1 is divided by num2
*/

var a = __bignum_format(argument0), b = argument1,
	na = (string_char_at(a, 1) == "-"), nb = (b < 0),
	qnt = "", dvd = 0, la, i = 0;

if (!b) {
	show_error("BigNum: Cannot divide by 0", true);	
}

if (na) a = string_delete(a, 1, 1);
if (nb) b = -b;

la = string_length(a);
while (i++ < la) {
	dvd = (dvd*10 + real(string_char_at(a, i)));
	if (dvd >= b) {
		qnt += string(dvd div b);
		dvd = dvd % b;
	}
}
if (na ^ nb) qnt = "-" + qnt;

return __bignum_format(qnt);