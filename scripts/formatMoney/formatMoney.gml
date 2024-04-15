function formatMoney(n){
	var str = string(n);
	for(var i = string_length(str) - 2; i > 1; i -= 3){
		str = string_insert(",", str, i);
	}
	return "$" + str;
}