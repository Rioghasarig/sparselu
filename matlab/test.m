A = gallery('poisson', 4);
mylu = lusol_obj(A, 'nstop', 4);
a2 = mylu.a2_ptr.Value;
locc2 = mylu.locc2_ptr.Value;
lenc2 = mylu.lenc2_ptr.Value; 
indc2 = mylu.indc2_ptr.Value;
q = mylu.q; 

i = [];
j = [];
b = [];
nelem = 0;
for k=5:16
    col = q(k);
    col_loc = locc2(col);
    col_len = lenc2(col);
    for i=1:col_len
        row = indc2(col_loc+(i-1));
        val = a2(col_loc+(i-1)); 
        
        nelem = nelem + 1;
        i(nelem) = row;
        j(nelem) = col;
        b(nelem) = val; 
    end
end