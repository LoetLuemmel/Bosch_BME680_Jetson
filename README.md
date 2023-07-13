# Bosch_BME680_Jetson

Aligned for Nvidia Jetson Xavier with I2C Bus #8.<br>
I2C connections as per Jim's tutorial on **[Jetsonhacks.com](https://jetsonhacks.com/2018/10/23/i2c-nvidia-jetson-agx-xavier-developer-kit/)** .
<br>
<code>
Bosch_BME680_Jetson$ i2cdetect -y -r 8
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- -- 
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
70: -- -- -- -- -- -- -- 77  
</code>
<br>
My I2C BME680 can be located on bus 8 with an I2C address 0x77.


# Accuracy

Mr. Su already asked Bosch Sensortec, why the temperature keeps rising.<br>
I have the same problem, it started at ~32.2°C and keeps rising.<br>
<br>
<code>
Status: 176 Index: 0 T: 37.42 degC, P: 964.42 hPa, H 26.24 %rH , G: 144190 ohms
</code>
<br>
Real temperature ~23°C.<br>
However, I was more interested in getting the I2C driver also runnig on a Jetson Xavier.<br>
About temperature accuracy, I will worry later and remember a similar issue with a BOSCH BMP280 a while ago with ARM mbed and a nice Nixie (display tubes) circuit. - No the Nixies were not too hot or close to the sensor.  J

How to compile
---

In the directory:
`make`

How to execute
---

`./main`

# Kudos

Thanks for the fundamental work from Bosch Sensortec and Mr. Su from Berlin for his Jetson Nano conversion!
