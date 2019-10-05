verbatimtex
\documentclass[10pt]{article}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex
  
input boxes;
input rboxes;

% system variables
ahangle := 40;

% fig0 is linux virtual file system topo
beginfig(0);
  boxit.a(btex Shell解释程序 etex);
  boxit.b(btex \begin{tabular}{c}
      用户程序\quad各种应用程序包 \\
      系统命令\quad窗口命令\quad库函数
      \end{tabular} etex);
  boxit.c(btex 系统调用 etex);
  boxit.d(btex \begin{tabular}{c}
      核心层： \\
      存储管理\quad进程管理 \\
      设备管理\quad文件管理
      \end{tabular} etex);
  boxit.e(btex 硬件层 etex);
  a.sw = b.nw; a.se = b.ne;
  b.sw = c.nw; b.se = c.ne;
  c.sw = d.nw; c.se = d.ne;
  d.sw = e.nw; d.se = e.ne;
  a.se - a.sw = b.se - b.sw = c.se - c.sw = d.se - d.sw = e.se - e.sw = (140,0);

  circleit.cc(btex 用户 etex);
  circleit.dd(btex 用户 etex);

  cc.dx=cc.dy; dd.dx=dd.dy;

  cc.w = a.nw + (5,30);
  dd.e = a.ne - (5,-30);
  
  drawboxed(a,b,c,d,cc,dd);

  pair A[];
  A[1] = 1/3[a.nw,a.ne];
  A[2] = 2/3[a.nw,a.ne];
  draw cc.s -- A[1];
  draw dd.s -- A[2];

endfig;
end
