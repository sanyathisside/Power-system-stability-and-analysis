clc
clear all

y12= complex(2, (-8));
y13= complex(1, (-4));
y23= complex(0.666, (-2.664));
y24= complex(1, (-4));
y34=complex(2, (-8));
y14=0;

y21= y12;
y31=y13;
y32=y23;
y42=y24;
y43=y34;
y41=y14;


Y12= -(y12);
Y13= -(y13);
Y14= -(y14);
Y21= -(y21);
Y23= -(y23);
Y24= -(y24);
Y31= -(y31);
Y32= -(y32);
Y34= -(y34);
Y41= -(y41);
Y42= -(y42);
Y43= -(y43);

Y11= y12 + y13 +y14;
Y22= y21 + y23 +y24;
Y33= y31 + y32 + y34;
Y44= y41 + y42 + y43;

Y= [Y11 Y12 Y13 Y14; Y21 Y22 Y23 Y24; Y31 Y32 Y33 Y34; Y41 Y42 Y43 Y44]