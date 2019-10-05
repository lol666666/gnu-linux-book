verbatimtex
\documentclass[10pt]{article}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex
  
input boxes;
input rboxes;
beginfig(1);
  rboxit.a(btex 浏览器 etex);
  a.ne - a.nw = (50,0);
  boxit.b(btex \begin{tabular}{c}
	  Nginx \\
	  异步代理 \end{tabular} etex);
  boxit.c(btex \begin{tabular}{c}
	  后端 \\
	  服务器 \end{tabular} etex);
  b.n = a.s - (0,20);
  c.n = b.s - (0,20);
  b.ne - b.nw = (50,0);
  c.ne - c.nw = (50,0);
  drawboxed(a,b,c);

  pair A[];
  pair B[];
  pair C[];
  pair D[];

  A[1] = 1/4[a.sw,a.se];
  A[2] = 1/4[a.se,a.sw];
  B[1] = 1/4[b.nw,b.ne];
  B[2] = 1/4[b.ne,b.nw];
  C[1] = 1/4[b.sw,b.se];
  C[2] = 1/4[b.se,b.sw];
  D[1] = 1/4[c.nw,c.ne];
  D[2] = 1/4[c.ne,c.nw];

  drawdblarrow A[1] -- B[1];
  drawdblarrow A[2] -- B[2];
  drawdblarrow C[1] -- D[1];
  drawdblarrow C[2] -- D[2];
endfig;
end
