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
outputtemplate := "vfs.mps";
beginfig(0);
  defaultfont:="ptmr8r";
  boxit.a(btex 用户进程 etex);
  boxit.b(btex 系统调用界面 etex);
  boxit.c(btex VFS etex);
  boxit.d(btex Ext3 etex);
  boxit.e(btex Buffer Cache etex);
  boxit.f(btex 设备驱动程序 etex);
  boxit.g(btex 硬盘控制器 etex);
  boxit.minix(btex Minix etex);
  boxit.nfs(btex NFS etex);
  boxit.sysv(btex Sysv etex);
  boxit.direc(btex 目录cache etex);
  boxit.inode(btex Inode cache etex);
  boxit.hard(btex etex);

  % Len is the box's length
  % Hig is the box's hight
  numeric Len;
  numeric Hig;
  Len := 65;
  Hig := 14pt;
  a.e - a.w = (Len,0); a.n - a.s = (0,Hig);
  b.e - b.w = (Len,0); b.n - b.s = (0,Hig);
  c.e - c.w = (Len,0); c.n - c.s = (0,Hig);
  d.e - d.w = (35,0); d.n - d.s = (0,Hig);
  minix.e - minix.w = (35,0); minix.n - minix.s = (0,Hig);
  nfs.e - nfs.w = (35,0); nfs.n - nfs.s = (0,Hig);
  sysv.e - sysv.w = (35,0); sysv.n - sysv.s = (0,Hig);
  e.e - e.w = (Len,0); e.n - e.s = (0,Hig);
  f.e - f.w = (Len,0); f.n - f.s = (0,Hig);
  g.e - g.w = (Len,0); g.n - g.s = (0,Hig);
  direc.e - direc.w = (Len,0); direc.n - direc.s = (0,Hig);
  inode.e - inode.w = (Len,0); inode.n - inode.s = (0,Hig);

  % Dis is the hight between the boxes
  numeric Dis;
  Dis := 20;
  a.s - b.n = (0,30);
  b.s - c.n = (0,Dis);
  c.s - d.ne = (5,Dis);
  d.se - e.n = (-5,Dis);
  c.s - nfs.nw = (-5,Dis);
  d.w - minix.e = (10,0);
  sysv.w - nfs.e = (10,0);
  e.s - f.n = (0,Dis);
  f.s - g.n = (0,30);
  c.w - direc.e = (Dis,0);
  c.e - inode.w = (-Dis,0);
  hard.c = g.c;
  hard.e - hard.w = (100,0);
  hard.n - hard.s = (0,34);
  drawboxed(a,b,c,d,e,f,g,minix,nfs,sysv,direc,inode,hard);

  % draw the connectors
  drawarrow a.s -- b.n;
  drawarrow b.s -- c.n;
  
  drawarrow c.s -- minix.n;
  drawarrow c.s -- d.n;
  drawarrow c.s -- nfs.n;
  drawarrow c.s -- sysv.n;

  pair A[];
  A[1] = 1/5[e.nw,e.ne];
  A[2] = 2/5[e.nw,e.ne];
  A[3] = 3/5[e.nw,e.ne];
  A[4] = 4/5[e.nw,e.ne];
  drawarrow minix.s -- A[1];
  drawarrow d.s -- A[2];
  drawarrow nfs.s -- A[3];
  drawarrow sysv.s -- A[4];

  drawarrow e.s -- f.n;
  drawarrow f.s -- g.n;

  drawarrow c.w -- direc.e;
  drawarrow c.e -- inode.w;

  % draw the outline
  pair B[];
  B[1] = direc.w - (5,-56);
  B[2] = inode.e - (-5,-56);
  B[3] = inode.e - (-5,119);
  B[4] = direc.w - (5,119);

  draw B[1] -- B[2] -- B[3] -- B[4] -- cycle dashed evenly;
  label.rt(btex 硬件层 etex,hard.e);
  label.rt(btex Linux内核层 etex,b.e+(15,0));
  label.rt(btex 系统调用 etex,a.se+(15,-5));
endfig;

outputtemplate := "os-arch.mps";
beginfig(1);
  boxjoin(a.nw=b.sw; a.ne=b.se);
  boxit.a(btex Device Driver etex);
  boxit.b();
  boxit.c();
  boxit.d();
  boxit.e();

  numeric Len[],Hig[];
  Len[1] := 300;
  Hig[1] := 15;
  Hig[2] := 30;
  a.e - a.w = (Len[1],0); a.n - a.s = (0,Hig[1]);
  b.n - b.s = (0,Hig[2]); c.n - c.s = (0,Hig[2]);
  d.n - d.s = (0,Hig[1]); e.n - e.s = (0,Hig[2]);
  drawboxed(a,b,c,d,e);

endfig;

outputtemplate := "osarch.mps";
beginfig(2);
  boxjoin(a.nw=b.sw; a.ne=b.se);
  boxit.a(btex Block Device Driver etex);
  boxit.b(btex Volume Manager etex);
  boxit.c(btex File Systems etex);
  boxit.d(btex VFS etex);

  boxjoin(e.nw=f.sw; e.ne=f.se);
  boxit.e(btex Ethernet etex);
  boxit.f(btex IP etex);
  boxit.g(btex TCP/UDP etex);
  boxit.h(btex Socket etex);

  e.nw = a.ne; e.sw = a.se;  
  numeric Len[],Hig[];
  Len[1] := 95;
  Hig[1] := 15;
  Hig[2] := 30;
  a.e - a.w = (Len[1],0); a.n - a.s = (0,Hig[1]);
  b.n - b.s = (0,Hig[1]); c.n - c.s = (0,Hig[1]);
  d.n - d.s = (0,Hig[1]); e.n - e.s = (0,Hig[1]);
  f.n - f.s = (0,Hig[1]); g.n - g.s = (0,Hig[1]);

  drawboxed(a,b,c,d,e,f,g,h);
endfig;
end
