/*
Session on concatenating databases
Done in lab time
*/

*Named library;
LIBNAME H "H:\My Documents\Github\tl1-grant\mscr\biostats\";

*Open up the cholera data sets from the villages;
PROC CONTENTS DATA = H.cholera_village1;
PROC CONTENTS DATA = H.cholera_village2;
RUN;

* Concatenate the data now;
DATA H.cholera_villages;
  SET H.cholera_village1 H.cholera_village2;
RUN;

* Explore the tables;
PROC FREQ DATA = H.cholera_villages;
  TABLES area;
RUN;
