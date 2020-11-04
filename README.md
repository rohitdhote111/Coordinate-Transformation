# Coordinate-Transformation
## UTM COORDINATE SYSTEM AND ITS TRANSFORMATION TO SPHERICAL COORDINATE SYSTE

I have privided here a Code to convert UTM coordinate system into spherical coordinate system. Here i have used easting and northing(x,y) and latitude and longitude(ф, λ) of the place.
Data used for calculation is as follows
-	Radius of the earth R = 6371000 meters
-	Easting and Northing of Borivali, Mumbai, Maharashtra
          X   =   274415.09 m
          Y   =   2127538.47 m
          UTM zone 43N
-	Longitude of central meridian of 43N zone 
      λ0 = 750 00’ 0”
     
## Methodology
- Step 1: Take the UTM coordinates of location (Easting, Northing)
- Step 2: Calculation of parameters for spheroid
   R = 6,371,000 meters
	 a = b = R = 6,371,000 meters
	 e = √("(a2-b2)/a2 " )= 0
	 e’ = 0
	 e1 = (1-(1-e2)0.5)/(1+(1-e2)0.5)  = 0
	 μ = m/R
	 T1 = tan2ф1
	 C1 = e’2 * cos2ф1 = 0
	 D = x/(N1*k0) = x/(R*k0)        where  k0 = 0.9996
- Step 3: Calculation of coordinates ф and λ of the point by substituting above parameters in the following formulae.

    Ф = ф1 – (N1 tanф1 / M1)*[D2/2 – (5+3T1 + 10C1 -4C12-9e’2)D4/24 + (61+90T1 +298C1+45T12-252e’2-3C12)D5/120]

    Λ = λ0 + [D-(1+2T1+C1)D3/6 + (5-2C1+28T1-3C12+8e’2+24T12)D5/120]/ cosф
    
## Results 
-	After converting UTM coordinates to  spherical coordinates we get 
Ф= 19.0000 0   7.0000’   21.4418”
Λ  = 77.00000   36.0000’   43.3729”

For Borivali, Mumbai, Maharashtra

-	These spherical coordinates are somewhat close to Geodetic coordinates and this variation is due to taking sphere instead of ellipsoid as datum.




