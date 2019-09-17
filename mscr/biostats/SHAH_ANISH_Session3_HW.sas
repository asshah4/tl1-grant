/* 
Homework for SAS session 3
Anish Shah
09/18/19
*/

* Set up a library name;
LIBNAME CLASS "H:\My Documents\Github\tl1-grant\mscr\biostats\";

* Import in hte candy;
PROC IMPORT OUT = CLASS.candy
	DATAFILE = "H:\My Documents\Github\tl1-grant\mscr\biostats\candy_nutrition.xls"
	DBMS = EXCEL REPLACE;
	GETNAMES = YES;
	MIXED = YES;
	SCANTEXT = YES;
	USEDATE = YES;
	SCANTIME = YES;
RUN;

* Spill the candy guts;
PROC CONTENTS DATA = CLASS.candy;
RUN;

* Temporary file for messing with teh candy;
DATA WORK.candy_temp;
	SET CLASS.candy;

	* Change all the nutrition to content per gram, instead of per serving;
	calories_per_g = calories / serving_size_(g)
	total_fat_per_g = 
	sat_fat_per_g = 
	sodium_per_g
	carb_per_g =
	sugar_per_g =
	protein_per_g = 

	* Chocolate coding;
	IF candy_type = "chocolate" THEN candy_type = 1;
		ELSE candy_type = 0;

RUN;

* Save the new candy bits;
DATA CLASS.candy_mod;
	SET WORK.candy_temp;
RUN;

* Sample data of new obs;
PROC PRINT DATA = CLASS.candy_mod (OBS = 10);
RUN;

* Check the contents;
PROC CONTENTS DATA = CLASS.candy_mod;
RUN;

* Descriptive analysis of variables;
PROC UNIVARIATE DATA = CLASS.candy_mod;
	VAR calories_per_g total_fat_per_g sat_fat_per_g sodium_per_g carb_per_g sugar_per_g protein_per_g;
RUN;

* Descripive analysis by type of candy;
PROC UNIVARIATE DATA = CLASS.candy_mod;
	CLASS candy_type;
	VAR calories_per_g total_fat_per_g sat_fat_per_g sodium_per_g carb_per_g sugar_per_g protein_per_g;
RUN;
