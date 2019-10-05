verbatimtex
\documentclass[10pt]{article}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex

input metaflow;

beginfig(0);
%draw rect1(btex \textc{this is \\ center-aligned \\ text} etex);
z1c=(0,0);
draw rect1(btex test etex);
putitem2 20down of 1;
draw rect2(btex \begin{tabular}{c} this is \\ center-aligned \\ text \end{tabular} etex);
endfig;
end
