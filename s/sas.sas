%macro putit( string= ); 
     %put &string; 
     %mend; 

%putit(string=Hello World)
