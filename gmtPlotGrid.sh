gmt begin gmtPlotGrid pdf
  gmt subplot begin 2x2 -Fs12c -M5p -A -Scb -Srl -R0/80/0/10
    gmt subplot set
    gmt plot input.txt -R3/8/3/8 -Jx2c -Wthinner -Si0.2c -Gblue -BWS+t"MsL vs MsR" -Bx+l"MsL" -By+l"MsR"
    gmt plot compareLine.txt -R3/8/3/8 -Jx2c -Wthick 
    gmt subplot set
    gmt plot input.txt -R3/8/3/8 -Jx2c -Wthinner -Si0.2c -Gred -BWS+t"MsL vs MsR" -Bx+l"MsL" -By+l"MsR"
    gmt plot compareLine.txt -R3/8/3/8 -Jx2c -Wthick 
    gmt subplot set
    gmt plot input.txt -R3/8/3/8 -Jx2c -Wthinner -Si0.2c -Ggreen -BWS+t"MsL vs MsR" -Bx+l"MsL" -By+l"MsR"
    gmt plot compareLine.txt -R3/8/3/8 -Jx2c -Wthick 
    gmt subplot set
    gmt plot input.txt -R3/8/3/8 -Jx2c -Wthinner -Si0.2c -Gyellow -BWS+t"MsL vs MsR" -Bx+l"MsL" -By+l"MsR"
    gmt plot compareLine.txt -R3/8/3/8 -Jx2c -Wthick 
  gmt subplot end
gmt end show