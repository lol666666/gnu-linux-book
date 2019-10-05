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
outputtemplate := "AddCommitCheckout.mps";
beginfig(0);
  defaultfont:="ptmr8r";
  boxit.a(btex
	  \begin{tabular} {c}
	  Local repository directory \\
	  /home/richard/mygit/test/.git/
	  \end{tabular}
	  etex);
  boxit.b(btex
	  \begin{tabular} {c}
	  Local index file \\
	  /home/richard/mygit/test/.git/index
	  \end{tabular}
	  etex);
  boxit.c(btex
	  \begin{tabular} {c}
	  Local working directory \\
	  /home/richard/mygit/test/
	  \end{tabular}
	  etex);

  % Len is the box's length
  % Hig is the box's hight
  numeric Len;
  numeric Hig;
  Len := 65;
  Hig := 14;
  a.e - a.w = (Len*3.5,0); a.n - a.s = (0,Hig+15);
  b.e - b.w = (Len*2.7,0); b.n - b.s = (0,Hig+15);
  c.e - c.w = (Len*3.5,0); c.n - c.s = (0,Hig+15);

  % Dis is the hight between the boxes
  numeric Dis;
  Dis := 50;
  a.sw - b.nw = (0,50);
  b.sw - c.nw = (0,50);

  drawboxed(a,b,c);

  % draw the connectors
endfig;
end
