/* 09/04/19 class on importing files
this is the batch window for for extracting/importing
data file is sandwich excel file */

*Import function;
PROC IMPORT OUT = WORK.class
				DATAFILE = "H:\My Documents\Github\tl1-grant\mscr\SAS-class\sandwiches_in_excel.xlsx"
				DBMS = EXCEL REPLACE;
	GETNAMES = YES;
	MIXED = YES;
	SCANTEXT = YES;
	USEDATE = YES;
	SCANTIME = YES;
RUN;

*Extract the names of hte columns;
PROC CONTENTS DATA = WORK.class;
RUN;
