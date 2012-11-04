beginfig(1)
numeric u;
path g;
pair a,b,c,d,e,f;
pen verythin;
verythin:= pencircle scaled 0.1pt;
u = 2.5cm;
draw (0,2u)--(0,0)--(4u,0);
pickup pencircle scaled 1pt;
g:= (0,0) for i=1 upto 8: ..(i/2,(i/4)-0.5*((i/3)**2)+((i/4)**3)-0.9*((i/5)**4))*u endfor;
draw g;
x:=1.5;
delta:=0.3;
a=(x,0)*u;
b=(x+delta,0)*u;
c= (a--(xpart a, 10*u)) intersectionpoint g;
d= (b--(xpart b, 10*u)) intersectionpoint g;
e= (xpart a, ypart d);
f= (xpart b, ypart c);
dotlabel.ulft(btex $A$ etex, a);
dotlabel.bot(btex $x$ etex, a);
dotlabel.urt(btex $B$ etex, b);
dotlabel.bot(btex $x+\delta$ etex, b);
dotlabel.llft(btex $C$ etex, c);
dotlabel.top(btex $D$ etex, d);
dotlabel.ulft(btex $E$ etex, e);
dotlabel.lrt(btex $F$ etex, f);
label.llft(btex $t$ etex,(4u,0));
draw c--(0, ypart c) withpen verythin;
draw d--(0, ypart d) withpen verythin;
label.llft(btex $f(x)$ etex, (0, ypart c));
label.ulft(btex $f(x+\delta x)$ etex, (0, ypart d));

endfig;

end
