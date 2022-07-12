libname sastest "c:\sastest";
libname datain "C:\SampleData";

data null;
call symput('sdate',put(datetime(),B8601DT15.));
run;

proc append base=sastest.results&sdate.(compress=yes) data=datain.dmclaims_1 force;
run;
