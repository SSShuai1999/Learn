doubleMe x = x * 2

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x < 100 
                      then doubleMe x
                      else x 

doubleSmallNumber' x = (if x < 100 then doubleMe x else x) + 1

boomBangs xs = [if x > 10 then "BANG" else "BOOM" | x <- xs, odd x ]

