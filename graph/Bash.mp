verbatimtex
\documentclass[10pt]{article}
\usepackage{amssymb}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex
input metaflow;

outputtemplate := "do.mps";
beginfig(1);
  z1c=(0,0);
  z1mr - z1ml = (30,0);
  draw circ1(btex etex);
  putitem2 20down of 1;

  z2mr - z2ml = (65,0);
  z2um - z2lm = (0,20);
  draw rect2(btex 循环体 etex);
  drawarrow connector1(1,2,down,down);

  putitems(2,3) like (1,2);

  z3mr - z3ml = (65,0);
  z3um - z3lm = (0,35);
  draw diamond3(btex bool表达式 etex);
  drawarrow connector2(2,3,down,down);

  putitems(3,4) like (2,3);

  z4mr - z4ml = (30,0);
  draw circ4(btex etex);
  drawarrow connector3(3,4,down,down);

  z5mr = 1/2[z3lm,z4um];
  drawopen rect5(btex 真 etex);

  pair A[];
  A[1] = z3c + (65,0);
  A[2] = 1/2[z1lm,z2um] + (65,0);
  A[3] = 1/2[z1lm,z2um];
  path P;
  P = z3mr -- A[1];
  draw P;
  draw A[1] -- A[2];
  drawarrow A[2] -- A[3];

  z6lm = point .5 of P;
  drawopen rect6(btex 假 etex);
endfig;

end
