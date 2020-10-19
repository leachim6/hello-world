function wtf(a,b,c){
    var out = a*b*c;
    for (i = 0; i < 100; i++) {
        out = a*out;
        console.log(out);
    };
    
}