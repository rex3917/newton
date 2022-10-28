function x=newton(x,n,a,b)
  fx=f(x);
  for i=1:n
      fp=ff(x);
      if(abs(fp)<a)
        printf("small derivate");
        return;
      endif
     d=fx/fp;
     x=x-d;
     fx=f(x);
     if(abs(d)<b)
        printf("converge");
        return;
     endif
  endfor
endfunction

function y=f(x)
  y=(x-1)*(x^2+x+6);
endfunction

function y=ff(x)
  y=3*x*x+5;
endfunction
