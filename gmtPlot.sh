gmt begin 
	gmt set GMT_THEME cookbook
	gmt plot input.txt -R3/8/3/8 -Jx1i -B -Wthinner -Si0.2c -Gblue -BWS+t"MsL vs MsR" -Bx+l"MsL" -By+l"MsR"

    # Plot the MsR=MsL line (y = x)
    gmt plot compareLine.txt -R3/8/3/8 -Jx1i -B -Wthick  
gmt end show