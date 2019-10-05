verbatimtex
\documentclass[11pt]{article}
\usepackage{amssymb}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex
  
input boxes;
input rboxes;
beginfig(1);
  z1c = (0,0);
  draw rrect1(btex 浏览器 etex);
  draw rect2(btex \textc{Squid \\ 同步代理} etex);
endfig;
end
