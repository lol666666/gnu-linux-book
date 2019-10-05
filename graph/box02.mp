input boxes;
vardef drawshadowed(text t) =
  fixsize(t);
  forsuffixes s=t:
	fill bpath.s shifted (1pt,0pt);
	unfill bpath.s;
	drawboxed(s);
  endfor
enddef;
beginfig(51)
  boxit.a(btex Box 1 etex);
  boxit.b(btex Box 2 etex);
  b.n = a.s - (0,20pt);
  drawshadowed(a,b);
  drawarrow a.s -- b.n;
endfig;
end;
