verbatimtex
\documentclass[10pt]{article}
\usepackage{CJK}
\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}
\AtEndDocument{\end{CJK}}
\begin{document}
etex
input boxes;

outputtemplate := "KeepAlivedStatus.mps";
% fig0 is playbook topo
beginfig(0);
  boxit.a(btex Initialize etex);
  boxit.b(btex Master etex);
  boxit.c(btex Backup etex);

  % 确定box.b及box.c的位置，相对于box.a
  b.ne = a.sw - (10,20);
  c.nw = a.se + (10,-20);

  % 确定各box的尺寸，使拥有相同的尺寸
  a.e - a.w = b.e - b.w = c.e - c.w = (60,0);
  a.n - a.s = b.n - b.s = c.n - c.s = (0,24);
  
  drawboxed(a,b,c);

  % 画出各连接
  pair A[],B[],C[],D[];
  % box.a的左边两个点
  A[1] = 1/3[a.nw,a.sw];
  A[2] = 2/3[a.nw,a.sw];
  % box.a的右边两个点
  A[3] = 1/3[a.ne,a.se];
  A[4] = 2/3[a.ne,a.se];

  % 同上
  B[1] = b.n;
  B[2] = 1/4[b.ne,b.nw];
  B[3] = 1/3[b.ne,b.se];
  B[4] = 2/3[b.ne,b.se];

  % 同上
  C[1] = 1/3[c.nw,c.sw];
  C[2] = 2/3[c.nw,c.sw];
  C[3] = c.n;
  C[4] = 1/4[c.nw,c.ne];

  % 拐角的4个点
  D[1] = (xpart B[1], ypart A[1]);
  D[2] = (xpart B[2], ypart A[2]);
  D[3] = (xpart C[3], ypart A[3]);
  D[4] = (xpart C[4], ypart A[4]);

  drawarrow B[1] -- D[1] -- A[1];
  drawarrow A[2] -- D[2] -- B[2];
  
  drawarrow C[3] -- D[3] -- A[3];
  drawarrow A[4] -- D[4] -- C[4];

  drawarrow B[3] -- C[1];
  drawarrow C[2] -- B[4];
endfig;

end
