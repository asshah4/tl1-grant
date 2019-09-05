*Step 1: (not shown) import the Excel file into
a SAS data set named strokestudy;
*Step 2: perform descriptive analyses;
*Descriptive statistics for LDL;
PROC UNIVARIATE DATA=WORK.strokestudy; *Don't have actual data set;
TITLE Baseline LDL for Stroke Study Patients; VAR ldl;
HISTOGRAM ldl;
INSET MEAN STD MEDIAN QRANGE / POSITION=NE;
RUN;
*Distribution of gender;
PROC FREQ DATA=work.strokestudy;
TITLE Gender of Stroke Study Patients; TABLES gender /PLOTS=FREQPLOT;
RUN;
