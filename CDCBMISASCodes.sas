/**********Extract 2014 data*****************************/
/**********Click on the Data file  LLCP2014 to auto matically upload data 
into SAS****************/
ods graphics off;
ods html close;
ods noresults;

proc sql;
		create table datatable2014 as
		select _STATE,IYEAR,SEX,HTM4,WTKG3,_BMI5,_PRACE1,_AGE80
		from LLCP2014;

	delete from datatable2014	where WTKG3=99999	OR HTM4=999;

	   
quit;
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2014;
	set datatable2014 ;
	rename  WTKG3 =WEIGHT;
 	rename HTM4 =HEIGHT;
	rename _BMI5=BMI;
	rename _PRACE1= RACE;
	rename _AGE80 =AGE;
run;

*
proc print data=datatable2014(firstobs=9000 obs= 9050);
*run;

/**********Extract 2013 data*****************************/
/**********Click on the Data file  LLCP2013to auto matically upload data 
into SAS****************/
ods graphics off;
ods html close;
ods noresults;

proc sql;
		create table datatable2013 as
		select _STATE,IYEAR,SEX,HTM4,WTKG3,_BMI5,_PRACE1 ,_AGE80
		from LLCP2013;

	delete from datatable2013	where WTKG3=99999	OR HTM4=999;

quit;
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2013;
	set datatable2013;
	rename  WTKG3 =WEIGHT;
 	rename HTM4 =HEIGHT;
	rename _BMI5=BMI;
	rename _PRACE1= RACE;
	rename _AGE80 =AGE;
run; 

*
proc print data=datatable2013(firstobs=5 obs= 50);
*run;



*************************2012 Data*************************************************

/****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2012 as
		select _STATE,IYEAR,SEX,HTM4,WTKG3,_BMI5,_PRACE ,AGE
		from LLCP2012; 
	 delete from datatable2012	where WTKG3=99999	OR HTM4=999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2012;
	set datatable2012;
	rename  WTKG3 =WEIGHT;
 	rename HTM4 =HEIGHT;
	rename _BMI5=BMI;
	rename _PRACE = RACE;
	
run; 

*
proc print data=datatable2012(firstobs=2 obs=50);
*run;

*************************2011 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2011 as
		select _STATE,IYEAR,SEX,HTM4,WTKG3,_BMI5,_PRACE ,AGE
		from  LLCP2011;
		 delete from datatable2011	where WTKG3=99999	OR HTM4=999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2011;
	set datatable2011;
	rename  WTKG3 =WEIGHT;
 	rename HTM4 =HEIGHT;
	rename _BMI5=BMI;
	rename _PRACE = RACE;
	
run; 
/*proc print data=datatable2011(firstobs=20 obs=100);
run;*/



/**********Extract 2010 data*****************************/
/**********Click on the Data file  CDBRFS10 to auto matically upload data 
into SAS****************/
ods graphics off;
ods html close;
ods noresults;

proc sql;
		create table datatable2010 as
		select _STATE,IYEAR,WTKG2 ,HTM3,SEX,_PRACE, AGE,_BMI4
		from CDBRFS10;

 delete from datatable2010	where WTKG2=99999	OR HTM3=999;

quit;
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable2010;
	set datatable2010;
	rename  WTKG2 =WEIGHT;
 	rename HTM3 =HEIGHT;
	rename _BMI4=BMI;
	rename _PRACE = RACE;
	
run; 
/*
proc print data=datatable2010(firstobs=5 obs= 50);
run;


*************************2009 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2009 as
		select  _STATE,IYEAR,WTKG2 ,HTM3,SEX,_PRACE, AGE,_BMI4
		from CDBRFS09 ; 

		delete from datatable2009	where  WTKG2=99999  OR HTM3=999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2009;
	set datatable2009;
	rename  WTKG2 =WEIGHT;
 	rename HTM3 =HEIGHT;
	rename _BMI4=BMI;
	rename _PRACE = RACE;
	
run; 
//*
proc print data=datatable2009(firstobs=200 obs=300);
run;


*************************2008 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2008 as
		select  _STATE,IYEAR,WTKG2 ,HTM3,SEX,_PRACE, AGE,_BMI4
		from CDBRFS08 ;

		delete from datatable2008 	where  WTKG2=99999  OR HTM3=999;


quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2008;
	set datatable2008;
	rename  WTKG2 =WEIGHT;
 	rename HTM3 =HEIGHT;
	rename _BMI4=BMI;
	rename _PRACE = RACE;
	
run;

//* 
proc print data=datatable2008(firstobs=10 obs=60);
run;


*************************2007 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2007 as
		select _STATE,IYEAR,WTKG2 ,HTM3,SEX,_PRACE, AGE,_BMI4
		from  CDBRFS07; 

delete from datatable2007 	where  WTKG2=99999  OR HTM3=999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2007;
	set datatable2007;
	rename  WTKG2 =WEIGHT;
 	rename HTM3 =HEIGHT;
	rename _BMI4=BMI;
	rename _PRACE = RACE;
	
run; 

//**
proc print data=datatable2007(firstobs=2 obs=50);
run;


*************************2006 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2006 as
		select _STATE,IYEAR,WTKG2 ,HTM3,SEX,_PRACE, AGE,_BMI4
		from  CDBRFS06;

		delete from datatable2006	where  WTKG2=99999  OR HTM3=999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable2006;
	set datatable2006;
	rename  WTKG2 =WEIGHT;
 	rename HTM3 =HEIGHT;
	rename _BMI4=BMI;
	rename _PRACE = RACE;
	
run; 

/**

proc print data=datatable2006(firstobs=2 obs=50);
run;



*************************2005 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2005 as
		select  _STATE,IYEAR,WTKG2 ,HTM3,SEX,_PRACE, AGE,_BMI4
		from CDBRFS05 ;

	delete from datatable2005 where  WTKG2=99999  OR HTM3=999;



quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable2005;
	set datatable2005;
	rename  WTKG2 =WEIGHT;
 	rename HTM3 =HEIGHT;
	rename _BMI4=BMI;
	rename _PRACE = RACE;
	
run; 

//**
proc print data=datatable2005(firstobs=2 obs=50);
run;

*************************2004 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2004 as
		select _STATE,IYEAR,WTKG2 ,HTM3,SEX,_PRACE, AGE,_BMI4
		from CDBRFS04 ; 

		delete from datatable2004 where  WTKG2=99999  OR HTM3=999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable2004;
	set datatable2004;
	rename  WTKG2 =WEIGHT;
 	rename HTM3 =HEIGHT;
	rename _BMI4=BMI;
	rename _PRACE = RACE;
	
run; 

//**
proc print data=datatable2004(firstobs=2 obs=50);
run;


*************************2003 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2003 as
		select  _STATE,IYEAR,WTKG  ,HTM2,SEX,_PRACE, AGE,_BMI3
		from  cdbrfs03 ;

		delete from datatable2003 where  WTKG =99999  OR HTM2=999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable2003;
	set datatable2003;
	rename  WTKG  =WEIGHT;
 	rename HTM2 =HEIGHT;
	rename _BMI3=BMI;
	rename _PRACE = RACE;
	
run; 

//**
proc print data=datatable2003(firstobs=2 obs=50);
run;

*************************2002 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2002 as
		select  _STATE,IYEAR,WTKG ,HTM ,SEX,_PRACE, AGE,_BMI2
		from cdbrfs02 ; 

		delete from datatable2002 where  WTKG =99999  OR HTM =999;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable2002;
	set datatable2002;
	rename  WTKG  =WEIGHT;
 	rename HTM  =HEIGHT;
	rename _BMI2=BMI;
	rename _PRACE = RACE;
	
run; 

//*
proc print data=datatable2002(firstobs=2 obs=50);
run;


**********************************************************************************************
Different measurements scales were used for the weight and height as well as BMI 

*************************2001 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2001 as
		select _STATE,IYEAR,WTKG*100,HTM*100,SEX,_PRACE, AGE,_BMI2*0.01

		from CDBRFS01 ; 

		delete from datatable2001 where  _TEMA001=9999.99  OR _TEMA002=9999.99 OR _TEMA003= 9999.99;


quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable2001;
	set datatable2001;
	rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename _PRACE = RACE;
	
run; 

*proc print data=datatable2001(firstobs=100 obs=200);
*run;

*************************2000 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable2000 as
		select _STATE,IYEAR,SEX,RACE, AGE,WEIGHT*100/2.2,HEIGHT*0.3,_BMI2*10
		from CDBRFS00 ; 

		delete from datatable2000 where  _TEMA003 =9990;

quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;



data datatable2000;
	set datatable2000;
	rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	
run; 

proc print data=datatable2000(firstobs=2 obs=50);
run;

*************************1999 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1999 as
		select _STATE,IYEAR,SEX,ORACE, AGE,WEIGHT*100/2.2,HEIGHT*0.3,_BMI*10 
		from CDBRFS99 ; 

		delete from datatable1999
		where  _TEMA001=777.77 OR _TEMA001=999.99 OR _TEMA002=777.77 OR _TEMA002=999.99 OR _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1999;
	set datatable1999;
	rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;

*proc print data=datatable1999(firstobs=2 obs=50);
*run;


*************************1998 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1998 as
		select _STATE,IYEAR,SEX,ORACE, AGE,WEIGHT*100/2.2,HEIGHT*0.3 ,_BMI*10 
		from CDBRFS98 ; 

		delete from datatable1998
		where   _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable1998;
	set datatable1998;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;

data datatable1998;
length IYEAR $ 4 ;
 set datatable1998;
 if IYEAR="98" then IYEAR= "1998" ;
   		 else IYEAR= "1999";
run;

*************************1997 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1997 as
		select  _STATE,IYEAR,SEX,ORACE, AGE,WEIGHT*100/2.2,HEIGHT*0.3 ,_BMI*10 
		from CDBRFS97  ; 

		delete from datatable1997
		where  _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1997;
	set datatable1997;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;

data datatable1997;
length IYEAR $ 4 ;
 set datatable1997;
 if IYEAR="97" then IYEAR= "1997" ;
   		 else IYEAR= "1998";
run;


*************************1996 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1996 as
		select _STATE,IYEAR,SEX,ORACE, AGE ,WEIGHT*100/2.2,HEIGHT*0.3,_BMI*10
		from CDBRFS96 ; 

		delete from datatable1996
		where   _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1996;
	set datatable1996;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1996;
length IYEAR $ 4 ;
 set datatable1996;
 if IYEAR="96" then IYEAR= "1996" ;
   		 else IYEAR= "1997";
run;

*************************1995 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1995 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from CDBRFS95 ; 

		delete from datatable1995
		where  _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1995;
	set datatable1995;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1995;
length IYEAR $ 4 ;
 set datatable1995;
 if IYEAR="95" then IYEAR= "1995" ;
   		 else IYEAR= "1996";
run;

*************************1994 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1994 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from  CDBRFS94; 

		delete from datatable1994
		where   _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1994;
	set datatable1994;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
run;


data datatable1994;
length IYEAR $ 4 ;
 set datatable1994;
 if IYEAR="94" then IYEAR= "1994" ;
   		 else IYEAR= "1995";
run;

*proc print data=datatable1994(firstobs=2 obs=50);
*run;

*************************1993 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1993 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from  CDBRFS93; 

		delete from datatable1993
		where  _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1993;
	set datatable1993;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1993;
length IYEAR $ 4 ;
 set datatable1993;
 if IYEAR="93" then IYEAR= "1993" ;
   		 else IYEAR= "1994";
run;

*proc print data=datatable1993(firstobs=2 obs=50);
*run;

*************************1992 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1992 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from  CDBRFS92;

		delete from datatable1992
		where   _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1992;
	set datatable1992;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1992;
 length IYEAR $ 4 ;
 set datatable1998;
 if IYEAR="92" then IYEAR= "1993" ;
   		 else IYEAR= "1994";
run;
*proc print data=datatable1992(firstobs=2 obs=50);
*run;

*************************1991 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1991 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from  CDBRFS91; 

		delete from datatable1991
		where   _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1991;
	set datatable1991;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1991;
 length IYEAR $ 4 ;
 set datatable1991;
 if IYEAR="91" then IYEAR= "1991" ;
   		 else IYEAR= "1992";
run;




*************************1990 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1990 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from  CDBRFS90; 

		delete from datatable1990
		where  _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;


data datatable1990;
	set datatable1990;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1990;
 length IYEAR $ 4 ;
 set datatable1990;
 if IYEAR="90" then IYEAR= "1990" ;
   		 else IYEAR= "1991";
run;

*proc print data=datatable1990(firstobs=2 obs=50);
*run;



*************************1989 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1989 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,RACE,AGE,_BMI*10
		from  CDBRFS89; 

		delete from datatable1989
		where   _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

data datatable1989;
	set datatable1989;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1989;
 length IYEAR $ 4 ;
 set datatable1989;
 if IYEAR="89" then IYEAR= "1989" ;
   		 else IYEAR= "1990";
run;

*proc print data=datatable1989(firstobs=2 obs=50);
*run;


*************************1988 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1988 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from  CDBRFS88; 

		delete from datatable1988
		where   _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;



data datatable1988;
	set datatable1988;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;


data datatable1988;
length IYEAR $ 4 ;
 set datatable1988;
 if IYEAR="88" then IYEAR= "1988" ;
   		 else IYEAR= "1989";
run;

*proc print data=datatable1988(firstobs=2 obs=50);
*run;


*************************1987 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1987 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,ORACE,AGE,_BMI*10
		from  CDBRFS87; 

		delete from datatable1987
		where  _TEMA003=9990;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;



data datatable1987;
	set datatable1987;
    rename  _TEMA001  =WEIGHT;
	rename _TEMA002  =HEIGHT;
	rename _TEMA003=BMI;
	rename ORACE=RACE;
	
run;

data datatable1987;
 length IYEAR $ 4 ;
 set datatable1987;
 if IYEAR= 87 then IYEAR= '1987'  ;
   		 else IYEAR= '1988'   ;
run;


data finalBMIdata2 ;
 set  datatable2010 datatable2009 datatable2008 datatable2007 datatable2006 datatable2005
    datatable2004 datatable2003 datatable2002 datatable2001 datatable2000 datatable1999
     datatable1998 datatable1999 datatable1997 datatable1996 datatable1995 datatable1994
datatable1993 datatable1992 datatable1991 datatable1990 datatable1989 datatable1988
datatable1987;
run;

/**Produces data required for sgplot  step below*/ 
ods output table=BMIStateRaceYr;
title "Table of BMI Data by State and year";
proc tabulate data= finalBMIdata2;
	class  IYEAR _STATE RACE;
	var BMI ;*Use these variables to create table of Statistical summaries;
	table  _STATE*RACE*(BMI*median),IYEAR;
run;
ods html close;
ods rtf close;


title 'Time Series Graph of Median BMI by State ,Race and Year';
ods html style=htmlbluecml;
proc sgpanel data=BMIStateRaceYr;
    panelby RACE ;
	series x=IYEAR y=BMI_Median / lineattrs=(pattern=solid) markers group=_STATE;
	rowaxis grid;
	colaxis grid;
	rowaxis label="Median Body Mass Index (BMI)";
	colaxis label="Year";
run;

/**Produces data required for sgplot  step below*/ 
ods output table=BMIStateSexYr;
title "Table of BMI Data by State and year";
proc tabulate data= finalBMIdata2;
	class  IYEAR _STATE SEX;
	var BMI ;*Use these variables to create table of Statistical summaries;
	table  _STATE*SEX*(BMI*median),IYEAR;
run;
ods html close;
ods rtf close;


title 'Time Series Graph of Median BMI by State ,Sex and Year';
ods html style=htmlbluecml;
proc sgpanel data=BMIStateSexYr;
    panelby SEX / rows=2 spacing=10;
	series x=IYEAR y=BMI_Median / lineattrs=(pattern=solid) markers group=_STATE;
	rowaxis grid;
	colaxis grid;
	rowaxis label="Median Body Mass Index (BMI)";
	colaxis label="Year";
run;



/**Produces data required for sgplot  step below*/ 
ods output table=BMIDataYear2;
title "Table of BMI Data by State and year";
proc tabulate data= finalBMIdata2;
	class  IYEAR _STATE;
	var BMI ;*Use these variables to create table of Statistical summaries;
	table  _STATE*(BMI*median),IYEAR;
run;
ods html close;
ods rtf close;



title 'Time Series Graph of Median BMI by state and year';
ods html style=htmlbluecml;
proc sgplot data=BMIDataYear2 ;
	series x=IYEAR y=BMI_Median / lineattrs=(pattern=solid) markers group=_STATE;
	xaxis grid;
	yaxis grid;
	yaxis label="Median Body Mass Index (BMI)";
	xaxis label="Year";
run;


/** Export data into a CSV fomat********
proc export data=BMIDataYear2 
   outfile='C:\Users\daawinpa\Desktop\BMIStateYr.csv'
   dbms=csv
   replace;
run; **/

*************************************************************************************
************************************************************************************
************************************************************************************
**********************************************************************************
*************************1986 Data*************************************************
***********BMI data Missing******************
//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1986 as
		select _STATE,IYEAR,WEIGHT,HEIGHT,SEX,ORACE,AGE
		from  CDBRFS86; 

		delete from datatable1986
		where WEIGHT=999 OR HEIGHT=999 OR WEIGHT=777 OR HEIGHT=777 ;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

proc print data=datatable1986(firstobs=2 obs=50);
run;

data datatable1986;
	set datatable1986;
	HEIGHT= HEIGHT*0.3;
	WEIGHT= WEIGHT*0.454545*100 ;
	BMI= (WEIGHT*100/(HEIGHT*HEIGHT)); 
    
	rename ORACE=RACE;
	
run;


proc print data=datatable1986(firstobs=2 obs=50);
run;

*************************1985 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1985 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT,SEX,RACE,AGE
		from  CDBRFS85; 

		delete from datatable1985
		where WEIGHT=777 OR HEIGHT=999 OR HEIGHT=777 OR WEIGHT=999;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

proc print data=datatable1985(firstobs=2 obs=50);
run;


*************************1984 Data*************************************************

//****CLick on downloaded SAS Data on the Survey to automatically load data base into SAS
and run these commands*************/;
ods graphics off;
ods html close;
ods noresults; 
proc sql;
		create table datatable1984 as
		select _STATE,IYEAR,WEIGHT*100/2.2,HEIGHT*0.3,SEX,RACE,AGE
		from  CDBRFS84; 

		delete from datatable1984
		where  WEIGHT=777 OR HEIGHT=999 OR HEIGHT=777 OR WEIGHT=999;
quit;	
ods output close;
ods results; * turning back results on ;
ods html path="%sysfunc(getoption(work))";
ods graphics on;

proc print data=datatable1984(firstobs=100 obs=150);
run;


//** Export data into a CSV fomat********//;
proc export data=sashelp.class (where=(sex='F'))
   outfile='c:\myfiles\Femalelist.csv'
   dbms=csv
   replace;
run;
