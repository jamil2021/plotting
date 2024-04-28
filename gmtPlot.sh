gmt begin MsL_vs_MsR_gmt.pdf
	gmt set GMT_THEME cookbook
	gmt plot input.txt -R3/8/3/8 -Jx1i -B -Wthinner -Si0.2c -Gblue -BWS+t"MsL vs MsR" -Bx+l"MsL" -By+l"MsR"

    # Plot the MsR=MsL line (y = x)
    gmt plot compareLine.txt -R3/8/3/8 -Jx1i -B -Wthick  
    # echo "MsL >= MsR: " | gmt text -Gwhite -F+cTC+f14p -Dj8p
    # gmt text gmtText.txt -R3/8/3/8 -Jx1i -Gwhite -F+f18p,Helvetica,-=0.5p,red -Dj8p
    echo 5.7 7.7 "MsL >= MsR: " | gmt text -R3/8/3/8 -Jx1i -Gwhite -F+f12,Times-Roman+jLT -Dj8p
    echo 5.7 7.2 "MsL < MsR: " | gmt text -R3/8/3/8 -Jx1i -Gwhite -F+f12p,Helvetica,-=0.5p,black -Dj8p
    echo 5.7 6.9 "some other text " | gmt text -R3/8/3/8 -Jx1i -F+f14p+a30 -Dj8p
    gmt text -R3/8/3/8 -Jx1i -F+f32p+cCM+tWELCOME -B -Gyellow -Wfaint -S -C+tO
    echo 6.7 4.5 "WELCOME" | gmt text -R3/8/3/8 -Jx1i -F+f32p -B -Gyellow -Wfaint -S -C+to
gmt end show