(function(g){var window=this;'use strict';var d4=function(a){g.V.call(this,{G:"div",L:"ytp-miniplayer-ui"});this.Ve=!1;this.player=a;this.T(a,"minimized",this.ah);this.T(a,"onStateChange",this.mJ)},e4=function(a){g.cK.call(this,a);
this.j=new d4(this.player);this.j.hide();g.EJ(this.player,this.j.element,4);a.Af()&&(this.load(),g.O(a.getRootNode(),"ytp-player-minimized",!0))};
g.w(d4,g.V);g.h=d4.prototype;
g.h.QG=function(){this.tooltip=new g.$N(this.player,this);g.H(this,this.tooltip);g.EJ(this.player,this.tooltip.element,4);this.tooltip.scale=.6;this.Cc=new g.YK(this.player);g.H(this,this.Cc);this.Fh=new g.V({G:"div",L:"ytp-miniplayer-scrim"});g.H(this,this.Fh);this.Fh.Ba(this.element);this.T(this.Fh.element,"click",this.uC);var a=new g.V({G:"button",Ea:["ytp-miniplayer-close-button","ytp-button"],W:{"aria-label":"Close"},U:[g.eH()]});g.H(this,a);a.Ba(this.Fh.element);this.T(a.element,"click",this.Dj);
a=new g.m_(this.player,this);g.H(this,a);a.Ba(this.Fh.element);this.er=new g.V({G:"div",L:"ytp-miniplayer-controls"});g.H(this,this.er);this.er.Ba(this.Fh.element);this.T(this.er.element,"click",this.uC);var b=new g.V({G:"div",L:"ytp-miniplayer-button-container"});g.H(this,b);b.Ba(this.er.element);a=new g.V({G:"div",L:"ytp-miniplayer-play-button-container"});g.H(this,a);a.Ba(this.er.element);var c=new g.V({G:"div",L:"ytp-miniplayer-button-container"});g.H(this,c);c.Ba(this.er.element);this.lQ=new g.yM(this.player,
this,!1);g.H(this,this.lQ);this.lQ.Ba(b.element);b=new g.wM(this.player,this);g.H(this,b);b.Ba(a.element);this.nextButton=new g.yM(this.player,this,!0);g.H(this,this.nextButton);this.nextButton.Ba(c.element);this.Ih=new g.MN(this.player,this);g.H(this,this.Ih);this.Ih.Ba(this.Fh.element);this.Mc=new g.IM(this.player,this);g.H(this,this.Mc);g.EJ(this.player,this.Mc.element,4);this.jC=new g.V({G:"div",L:"ytp-miniplayer-buttons"});g.H(this,this.jC);g.EJ(this.player,this.jC.element,4);a=new g.V({G:"button",
Ea:["ytp-miniplayer-close-button","ytp-button"],W:{"aria-label":"Close"},U:[g.eH()]});g.H(this,a);a.Ba(this.jC.element);this.T(a.element,"click",this.Dj);a=new g.V({G:"button",Ea:["ytp-miniplayer-replay-button","ytp-button"],W:{"aria-label":"Close"},U:[g.kH()]});g.H(this,a);a.Ba(this.jC.element);this.T(a.element,"click",this.pZ);this.T(this.player,"presentingplayerstatechange",this.Yc);this.T(this.player,"appresize",this.xb);this.T(this.player,"fullscreentoggled",this.xb);this.xb()};
g.h.show=function(){this.ye=new g.xp(this.Zr,null,this);this.ye.start();this.Ve||(this.QG(),this.Ve=!0);0!==this.player.getPlayerState()&&g.V.prototype.show.call(this);this.Mc.show();this.player.unloadModule("annotations_module")};
g.h.hide=function(){this.ye&&(this.ye.dispose(),this.ye=void 0);g.V.prototype.hide.call(this);this.player.Af()||(this.Ve&&this.Mc.hide(),this.player.loadModule("annotations_module"))};
g.h.qa=function(){this.ye&&(this.ye.dispose(),this.ye=void 0);g.V.prototype.qa.call(this)};
g.h.Dj=function(){this.player.stopVideo();this.player.Oa("onCloseMiniplayer")};
g.h.pZ=function(){this.player.playVideo()};
g.h.uC=function(a){if(a.target===this.Fh.element||a.target===this.er.element)this.player.V().N("kevlar_miniplayer_play_pause_on_scrim")?g.gG(this.player.yb())?this.player.pauseVideo():this.player.playVideo():this.player.Oa("onExpandMiniplayer")};
g.h.ah=function(){g.O(this.player.getRootNode(),"ytp-player-minimized",this.player.Af())};
g.h.Vd=function(){this.Mc.Tb();this.Ih.Tb()};
g.h.Zr=function(){this.Vd();this.ye&&this.ye.start()};
g.h.Yc=function(a){g.U(a.state,32)&&this.tooltip.hide()};
g.h.xb=function(){g.YM(this.Mc,0,this.player.Ya().getPlayerSize().width,!1);g.LM(this.Mc)};
g.h.mJ=function(a){this.player.Af()&&(0===a?this.hide():this.show())};
g.h.pc=function(){return this.tooltip};
g.h.If=function(){return!1};
g.h.gg=function(){return!1};
g.h.yj=function(){return!1};
g.h.wz=function(){};
g.h.Zo=function(){};
g.h.uu=function(){};
g.h.yp=function(){return null};
g.h.Sx=function(){return null};
g.h.Ek=function(){return new g.Hm(0,0,0,0)};
g.h.handleGlobalKeyDown=function(){return!1};
g.h.handleGlobalKeyUp=function(){return!1};
g.h.ws=function(a,b,c,d,e){var f=0,k=d=0,l=g.Vm(a);if(b){c=g.Fp(b,"ytp-prev-button")||g.Fp(b,"ytp-next-button");var m=g.Fp(b,"ytp-play-button"),n=g.Fp(b,"ytp-miniplayer-expand-watch-page-button");c?f=k=12:m?(b=g.Tm(b,this.element),k=b.x,f=b.y-12):n&&(k=g.Fp(b,"ytp-miniplayer-button-top-left"),f=g.Tm(b,this.element),b=g.Vm(b),k?(k=8,f=f.y+40):(k=f.x-l.width+b.width,f=f.y-20))}else k=c-l.width/2,d=25+(e||0);b=this.player.Ya().getPlayerSize().width;e=f+(e||0);l=g.sh(k,0,b-l.width);e?(a.style.top=e+"px",
a.style.bottom=""):(a.style.top="",a.style.bottom=d+"px");a.style.left=l+"px"};
g.h.showControls=function(){};
g.h.Fm=function(){};
g.h.Tl=function(){return!1};g.w(e4,g.cK);e4.prototype.create=function(){};
e4.prototype.aj=function(){return!1};
e4.prototype.load=function(){this.player.hideControls();this.j.show()};
e4.prototype.unload=function(){this.player.showControls();this.j.hide()};g.bK("miniplayer",e4);})(_yt_player);
