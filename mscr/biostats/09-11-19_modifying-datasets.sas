/* 09-11-19_modifying-datasets
*/

*Name my library;
LIBNAME CLASS "H:\My Documents\Github\tl1-grant\mscr\biostats\";

*Stroke data set;
PROC CONTENTS DATA = CLASS.strokestudy_baseline;
RUN;

*Sample of obs;
PROC PRINT DATA = CLASS.strokestudy_baseline (OBS = 10);
RUN;

*Perform desc analysis of the vars;
PROC UNIVARIATE DATA = CLASS.strokestudy_baseline;
	VAR age sbp ldl;
	HISTOGRAM age;
	INSET N MEAN STD /POS = NE;
RUN;
