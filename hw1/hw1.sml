
fun is_older(p1:(int*int*int),p2:(int*int*int)) = 
	if #1 p1 <> #1 p2 then #1 p1 < #2 p2 else
		if #2 p1 <> #2 p2 then #2 p1 < #2 p2 else
			if #3 p1 <> #3 p2 then #3 p1 < #3 p2 else false


fun number_in_month(p1:(int*int*int) list ,p2:int) = 
	if null p1 then 0
	else
		(if #2 (hd p1) = p2 then 1 else 0) + number_in_month (tl p1,p2)

fun number_in_months(p1:(int*int*int) list , p2:int list) = 
	if null p2 then 0
	else
		number_in_month(p1,hd p2) + number_in_months(p1,tl p2)
