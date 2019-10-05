verbatimtex
\documentclass[10pt]{article}
\usepackage{amssymb}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex
  
input boxes;
beginfig(1);
  boxjoin(a.sw=b.nw;a.se=b.ne);
  boxit.a(btex 应用层 etex);
  a.ne - a.nw = (80,0);
  boxit.b(btex 表示层 etex);
  boxit.c(btex 会话层 etex); boxit.d(btex 传输层 etex);
  boxit.e(btex 网络层 etex); boxit.f(btex 数据链路层 etex);
  boxit.g(btex 物理层 etex);
  drawboxed(a,b,c,d,e,f,g);
endfig;
end
