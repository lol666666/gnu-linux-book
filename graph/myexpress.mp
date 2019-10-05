verbatimtex
\documentclass[10pt]{article}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex
input expressg;
% fig0 is playbook topo
beginfig(0);
  z1=(0,0);
  drawENT(1, pconl, enth)(btex Playbook etex);
  
  z2ml=z1mr+(20,0);
  drawENT(2, pconl, enth)(btex Play etex);
  
  z3ml=z2mr+(20,0);
  drawENT(3, pconl, enth)(btex Hosts etex);

  z4tm=z2bm-(0,20);
  drawENT(4, pconl, enth)(btex Tasks etex);

  z5tm=z3bm-(0,20);
  drawENT(5, pconl, enth)(btex Modules etex);

  drawnormalF(1mr,2ml);
  drawnormalF(2mr,3ml);
  drawnormalF(2bm,4tm);
  drawnormalF(4mr,5ml);
endfig;
end
