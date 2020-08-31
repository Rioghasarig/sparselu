function mylu = run_test()
    A = gallery('dramadah', 20);
    %disp('A');
    %disp(full(A));
    mylu = lusol_obj(A);
    U = mylu.U;
    L = mylu.L0;
    p = mylu.p;
    q = mylu.q;

    disp(1);
    disp(full(L(p,p)*U(p,q)))
    for i =1:9
        disp(i+1)
        mylu.cfactorize();
        %U = mylu.U;
        %L = mylu.L0;
        %p = mylu.p;
        %q = mylu.q; 
        %disp(full(L(p,p)*U(p,q)))
    end

    disp('A(p,q)');
    disp(full(A(p,q)));

end

