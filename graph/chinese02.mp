verbatimtex
  \documentclass{article}
  \usepackage{amssymb}
  \usepackage{CJK}
  \AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
  \AtEndDocument{\end{CJK}}
  \begin{document}
  etex
beginfig(1);
  draw fullcircle scaled 2cm;
  label.rt(btex $\Lleftarrow$ 圆心 etex, origin);
endfig;
end.
