START
 S FIL="/home/zipcode/2022_Gaz_zcta_national.txt"
 O FIL:(read)
 U FIL F  Q:$ZEOF=1  D
 . R LIN
 . S ZIP=$P(LIN,$C(9),1)
 . Q:ZIP="GEOID"!(ZIP="")
 . S LAT=$P(LIN,$C(9),6)
 . S LAT=$TR(LAT," ","")
 . S LONG=$P(LIN,$C(9),7)
 . S LONG=$TR(LONG," ","")
 . S ^ZIP(ZIP)=LAT_","_LONG
 C FIL
 QUIT
