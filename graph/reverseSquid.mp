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
	  Squid \\
	  同步代理 \end{tabular} etex);
  boxit.c(btex \begin{tabular}{c}
	  后端 \\
      服务器 \end{tabular} etex);
  b.n = a.s - (0,20);
  c.n = b.s - (0,20);
  b.ne - b.nw = (50,0);
  c.ne - c.nw = (50,0);
  drawboxed(a,b,c);
  drawdblarrow a.s -- b.n;
  drawdblarrow b.s -- c.n;
endfig;
end
