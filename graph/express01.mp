verbatimtex \def\twolines#1#2{\vbox{\hbox{#1} \hbox{#2}}} etex
input expressg;
beginfig(1)
  z1=(0,0);
  drawEXPRESSION(1);
  z2bl=z1tr;
  drawINTEGER(2);
  z3bl=z2tr;
  drawBOOLEAN(3);
  z4bm=z3tm;

  drawcirclebox(4, namespace(btex ABS etex)(nextra))(btex ABS etex);

  numeric diam;
  diam = namespace(btex ABS etex)(nextra);

  z5bm=z4tm;
  drawcirclebox(5, diam)(btex SAB etex);

  x5ml-x5tl = x5tr-x6bl;
  y6mr=y5tm;
  drawENT(6, pconl, enth)(btex an\_ent etex);

  z7bm=(x6tm,y6tm+u);
  drawLEVENT(7, pconl, eventh)(btex levent etex);

  z8=(x7tl, y7tr+u);
  drawGEVENT(8, pconl, eventh)(btex gevent etex);

  z9br=1/8[z3tl,z3tr];
  drawSCHEMA(9, pconl, schemah)(btex a\_schema etex);

  numeric xmid, len;
  xmid = x8tr + diam;
  len = 2diam;

  z11=(xmid, y1ml); z111=z11 shifted (len, 0);
  drawdashO(11, 111);

  pair moveright;
  moveright = (len, 0);

  z12=(xmid, y2ml); z121=z12 shifted moveright;
  drawnormalO(12, 121);

  z13=(xmid, y3ml); z131=z13 shifted moveright;
  drawthickO(13, 131);

  pair moveup;
  moveup = (0, y13-y12);

  z14=z13 shifted moveup; z141=z14 shifted moveright;
  drawnormalD(14, 141);

  z15=z14 shifted moveup; z151=z15 shifted moveright;
  drawnormalCA(15, 151);

  z16=z15 shifted moveup; z161=z16 shifted moveright;
  drawnormalOA(16, 161);

  z17=z16 shifted moveup; z171=z17 shifted moveright;
  drawnormalF(17, 171);

  z300=(0,y8tm+diam); z301=(x111,y300);
  draw z300--z301 dashes;

  numeric mup; mup := onelineh;

  z302=(0,y300+mup);
  drawcardbox(302, pconl, onelineh, 1/4onelineh)("");

  z303bm=(x302tm, y302tm+mup);
  drawdiamondbox(303, pconl, 2onelineh)(btex jewel etex);

  z304=(0, y303tm+mup);
  drawdoublerectangle(304, pconl, 2onelineh, 3/4);
  label(btex top etex, z304ct);

  z305=(0, y304tm+mup);
  drawtriplerectangle(305, pconl, 3onelineh, 2/5, 0.2);
  label(btex top etex, z305ct);
  label("middle", z305cm);

  z306=(0,y305tm+mup);
  drawindexbox(306, 2pconl, 3onelineh, 3/4pconl, onelineh)(btex pack etex);
  z307=1/8[z306bl,z306tr];
  drawENT(307, 1/4pconl, onelineh)(btex E etex);

  z308=(0, y306P.tl+mup);
  z309ml=z308c;
  drawcardbox(308, pconl, 2onelineh, 1/4onelineh)(btex covered etex);
  drawdashboxover(309, pconl, onelineh);

  z310bm=(x306bm,y309tm+mup);
  drawovalbox(310, 2pconl, 2onelineh)("");

  z311ml=(x310mr+mup, y310ml);
  drawroundedbox(311, 2pconl, 2onelineh, 1/2onelineh)("rounded");

  z312ml=(x311mr+mup, y311mr);
  drawroundedbox(312, 2pconl, 2onelineh, 3/2onelineh)(btex large radius etex);

  z314=(x312bm-1/4pconl, y312bm-1/2mup);
  hiderectangle(314, 1/2pconl, (3/2onelineh + mup));

  z315tm=(x312bm, y312bm-mup);
  drawdashellipse(315, 2pconl, 2onelineh);

  z316tm=(x315bm, y315bm-mup);
  drawdashcircle(316, diam);

  z317bc=(x311bm,y304br);
  drawdrum(317, pconl, 3onelineh)(btex drum etex);

  z317A=(x317tc, y317tc+2onelineh);
  drawnormalthree(317tml, 317A, 317tmr);
  smooth(317tml, 317A, 317tmr);

  z320bm = (x317bm, y302);
  drawstickman(320, onelineh, 2onelineh);

  z325bm = (x320bm, y306);
  drawoutputbox(325, pconl, 2onelineh)(btex output etex);

  z330 = (x320bm, y309ml);
  drawCircledDot(330, 3/2onelineh);

  z401bm=(1/2[x11,x111], y301+mup);
  drawcircleA(401, diam);

  z402=(xmid, y401tm+mup); z502=(x111, y402);
  drawdashA(402, 502);

  z403=(xmid, y402+mup); z503=(x111, y403);
  drawdashOA(403, 503);

  z404=(xmid, y403+mup); z504=(x111, y404);
  drawnormalOD(404, 504);

  z405=(xmid, y404+mup); z505=(x111, y405);
  drawnormalCD(405, 505);

  z406=(xmid, y405+mup); z506=(x111, y406);
  drawnormalDCA(406, 506);

  numeric ang; ang = 180/7;
  z600=(xmid, y406+2mup);
  z601=z699 rotatedaround(z600, ang);
  z602=z699 rotatedaround(z600, 2ang);
  z603=z699 rotatedaround(z600, 3ang);
  z604=z699 rotatedaround(z600, 4ang);
  z605=z699 rotatedaround(z600, 5ang);
  z606=z699 rotatedaround(z600, 6ang);
  z607=z699 rotatedaround(z600, 7ang);
  drawnormalCA(600,601);
  drawnormalOA(600,602);
  drawnormalF(600,603);
  drawdashA(600,604);
  drawnormalOD(600,605);
  drawnormalCD(600,606);
endfig; % end figure 1
end

