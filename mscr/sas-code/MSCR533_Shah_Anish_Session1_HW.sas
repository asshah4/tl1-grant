/******************************
* Name Shah, Anish:
* Lab 1 in-lab exercise
******************************/

/* Data set for exercise */
DATA lab1_exercise;
	INPUT subject$ age daycare$ sore_throat$;
	DATALINES;
C 3 yes no
E 2 no no
F 3 no no
G 3 no no
A 1 yes yes
B 2 yes yes
D 4 yes yes
H 4 no yes
I 1 yes yes
J 4 no no
K 3 no no
L 2 yes yes
M 1 yes yes
;
RUN;

/* Descriptive statistics */
PROC FREQ DATA = lab1_exercise;
	TABLES subject age daycare sore_throat;
	TABLES sore_throat / plots = freqplot;
	TABLES daycare*sore_throat / plots = freqplot;
RUN;

PROC UNIVARIATE DATA = lab1_exercise;
	VAR age;
	HISTOGRAM age;
	INSET n mean std;
RUN;

/************************************************
Answers from part 6:
a: 13
b: 2.5
c: 1.1
d: 7
e: 54
f: 7
g: 54
h: 6
i: 46
***********************************************/
