input latexmp;
setupLaTeXMP(
  packages="amssymb,CJK",
  preamble=("\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}" &
  "\AtEndDocument{\end{CJK}}"));

input metaflow;

beginfig(1);
  z1c=(0,0);
  draw rect1(textext("实验"));
  putitem2 20down of 1;
  z2s=z2ds+(0,2);
  draw rect2(textext("测试"));
  drawarrow connector(1,2,down,down);

  putitems(2,3) like (1,2);
  %z3s = (60,40);
  draw diamond3(textext("评估"));
endfig;

end
