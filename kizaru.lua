local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,15 -10 ),v7("\0\89","\58\46\119\81\200\145\208\37"),function(v42) if (v9(v42,2)==81) then local v93=0;while true do if (v93==0) then v30=v8(v11(v42,1,1));return "";end end else local v94=v10(v8(v42,16));if v30 then local v102=v13(v94,v30);v30=nil;return v102;else return v94;end end end);local function v31(v43,v44,v45) if v45 then local v95=(v43/(2^(v44-(2 -1))))%(2^(((v45-1) -(v44-1)) + 1)) ;return v95-(v95%1) ;else local v96=0;local v97;while true do if (v96==0) then v97=2^(v44-1) ;return (((v43%(v97 + v97))>=v97) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (v46==1) then return v47;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + (3 -1) );v29=v29 + (4 -2) ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,32)==1) and  -1) or 1 ;v55=3;end if (v55==3) then if (v60==0) then if (v59==0) then return v61 * (931 -(857 + 74)) ;else local v119=0;while true do if (0==v119) then v60=1;v58=0;break;end end end elseif (v60==2047) then return ((v59==(568 -(367 + 201))) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/((929 -(214 + 713))^52))) ;end if (v55==1) then v58=1;v59=(v31(v57,1,20) * ((621 -(555 + 64))^32)) + v56 ;v55=2;end if (0==v55) then v56=v34();v57=v34();v55=1;end end end local function v36(v62) local v63=0;local v64;local v65;while true do if (v63==2) then v65={};for v103=1, #v64 do v65[v103]=v10(v9(v11(v64,v103,v103)));end v63=3;end if (v63==3) then return v14(v65);end if (v63==0) then v64=nil;if  not v62 then local v118=0;while true do if (v118==0) then v62=v34();if (v62==(0 + 0)) then return "";end break;end end end v63=1;end if (v63==1) then v64=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;v63=2;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66=0;local v67;local v68;local v69;local v70;local v71;local v72;while true do if (v66==2) then for v105=1,v34() do local v106=0;local v107;while true do if (v106==0) then v107=v32();if (v31(v107,878 -(282 + 595) ,1638 -(1523 + 114) )==0) then local v120=0;local v121;local v122;local v123;while true do if (v120==1) then v123={v33(),v33(),nil,nil};if (v121==0) then local v125=0;while true do if (v125==0) then v123[3]=v33();v123[4]=v33();break;end end elseif (v121==1) then v123[3 -0 ]=v34();elseif (v121==2) then v123[1068 -(68 + 997) ]=v34() -(2^16) ;elseif (v121==(1273 -(226 + 1044))) then local v360=0;while true do if (v360==0) then v123[3]=v34() -(2^16) ;v123[4]=v33();break;end end end v120=2;end if (v120==0) then v121=v31(v107,2,3);v122=v31(v107,4,6);v120=1;end if (v120==3) then if (v31(v122,3,3)==(1 + 0)) then v123[1 + 3 ]=v72[v123[4]];end v67[v105]=v123;break;end if (2==v120) then if (v31(v122,1,1)==(4 -3)) then v123[2]=v72[v123[2]];end if (v31(v122,2,2)==1) then v123[120 -(32 + 85) ]=v72[v123[3]];end v120=3;end end end break;end end end for v108=1,v34() do v68[v108-1 ]=v39();end return v70;end if (v66==0) then v67={};v68={};v69={};v70={v67,v68,nil,v69};v66=1;end if (v66==1) then v71=v34();v72={};for v110=1,v71 do local v111=v32();local v112;if (v111==1) then v112=v32()~=0 ;elseif (v111==2) then v112=v35();elseif (v111==3) then v112=v36();end v72[v110]=v112;end v70[1 + 2 ]=v32();v66=2;end end end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[2];local v78=v73[960 -(892 + 65) ];return function(...) local v79=v76;local v80=v77;local v81=v78;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -(2 -1) ;local v88={};local v89={};for v98=0,v87 do if (v98>=v81) then v85[v98-v81 ]=v86[v98 + 1 ];else v89[v98]=v86[v98 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do v91=v79[v83];v92=v91[1];if (v92<=36) then if (v92<=17) then if (v92<=8) then if (v92<=(5 -2)) then if (v92<=(1 -0)) then if (v92>0) then local v132=0;local v133;while true do if (v132==0) then v133=v91[2];v89[v133](v21(v89,v133 + (351 -(87 + 263)) ,v84));break;end end elseif (v89[v91[182 -(67 + 113) ]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92>(2 + 0)) then local v134=v91[2];v89[v134](v21(v89,v134 + 1 ,v91[7 -4 ]));else v89[v91[2]]=v91[3] + v89[v91[4]] ;end elseif (v92<=5) then if (v92==4) then if  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end else v89[v91[2]]=v89[v91[3]][v91[4]];end elseif (v92<=6) then v89[v91[2]]=v91[3] + v89[v91[4]] ;elseif (v92==7) then v89[v91[2]]=v75[v91[3]];else local v242=v91[2];v89[v242]=v89[v242]();end elseif (v92<=(9 + 3)) then if (v92<=10) then if (v92>9) then v89[v91[2]]();else v89[v91[7 -5 ]]={};end elseif (v92==11) then do return v89[v91[954 -(802 + 150) ]]();end else v89[v91[2]]=v89[v91[7 -4 ]];end elseif (v92<=(24 -10)) then if (v92>13) then v89[v91[2]]={};else v89[v91[2]]=v89[v91[3]]%v91[4] ;end elseif (v92<=15) then v89[v91[2 + 0 ]]=v89[v91[3]] + v91[4] ;elseif (v92>16) then local v244=v91[2];local v245=v89[v91[1000 -(915 + 82) ]];v89[v244 + 1 ]=v245;v89[v244]=v245[v91[4]];else local v249=v91[2];local v250,v251=v82(v89[v249](v89[v249 + 1 ]));v84=(v251 + v249) -1 ;local v252=0;for v287=v249,v84 do local v288=0;while true do if (v288==0) then v252=v252 + 1 ;v89[v287]=v250[v252];break;end end end end elseif (v92<=26) then if (v92<=21) then if (v92<=19) then if (v92==18) then local v145=0;local v146;local v147;local v148;while true do if (v145==2) then for v321=1,v91[4] do local v322=0;local v323;while true do if (v322==0) then v83=v83 + 1 ;v323=v79[v83];v322=1;end if (v322==1) then if (v323[1]==73) then v148[v321-1 ]={v89,v323[3]};else v148[v321-1 ]={v74,v323[3]};end v88[ #v88 + 1 ]=v148;break;end end end v89[v91[2]]=v40(v146,v147,v75);break;end if (0==v145) then v146=v80[v91[3]];v147=nil;v145=1;end if (1==v145) then v148={};v147=v18({},{[v7("\20\179\57\162\173\184\46","\86\75\236\80\204\201\221")]=function(v324,v325) local v326=0;local v327;while true do if (v326==0) then v327=v148[v325];return v327[1][v327[2]];end end end,[v7("\77\126\121\128\233\130\124\69\114\157","\235\18\33\23\229\158")]=function(v328,v329,v330) local v331=v148[v329];v331[1][v331[2]]=v330;end});v145=2;end end else local v149=0;local v150;local v151;local v152;local v153;while true do if (v149==2) then for v333=v150,v84 do local v334=0;while true do if (v334==0) then v153=v153 + 1 ;v89[v333]=v151[v153];break;end end end break;end if (v149==1) then v84=(v152 + v150) -1 ;v153=0 -0 ;v149=2;end if (v149==0) then v150=v91[2];v151,v152=v82(v89[v150](v21(v89,v150 + 1 ,v84)));v149=1;end end end elseif (v92==20) then local v154=v91[2];local v155,v156=v82(v89[v154](v21(v89,v154 + 1 + 0 ,v91[3])));v84=(v156 + v154) -1 ;local v157=0;for v224=v154,v84 do v157=v157 + 1 ;v89[v224]=v155[v157];end else local v158=0;local v159;while true do if (0==v158) then v159=v91[2];v89[v159]=v89[v159]();break;end end end elseif (v92<=(29 -6)) then if (v92==22) then local v160=v91[2];v89[v160]=v89[v160](v21(v89,v160 + 1 ,v91[3]));else local v162=v91[2];v89[v162]=v89[v162](v21(v89,v162 + 1 ,v84));end elseif (v92<=24) then v83=v91[3];elseif (v92>25) then v83=v91[3];else local v254=0;local v255;while true do if (v254==0) then v255=v91[2];do return v89[v255](v21(v89,v255 + 1 ,v91[1190 -(1069 + 118) ]));end break;end end end elseif (v92<=31) then if (v92<=(63 -35)) then if (v92>(58 -31)) then v89[v91[2]]();else local v165=0;local v166;while true do if (0==v165) then v166=v91[2];v89[v166](v21(v89,v166 + 1 + 0 ,v84));break;end end end elseif (v92<=(50 -21)) then local v167=0;local v168;while true do if (v167==0) then v168=v91[2];do return v21(v89,v168,v84);end break;end end elseif (v92==30) then if v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v89[v91[2 + 0 ]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=33) then if (v92==32) then do return;end else v74[v91[3]]=v89[v91[2]];end elseif (v92<=(825 -(368 + 423))) then v89[v91[2]]=v91[9 -6 ];elseif (v92>35) then local v256=0;local v257;local v258;while true do if (0==v256) then v257=v91[2];v258=v89[v257];v256=1;end if (v256==1) then for v363=v257 + 1 ,v84 do v15(v258,v89[v363]);end break;end end else local v259=v91[2];local v260=v89[v91[21 -(10 + 8) ]];v89[v259 + (3 -2) ]=v260;v89[v259]=v260[v91[446 -(416 + 26) ]];end elseif (v92<=54) then if (v92<=(143 -98)) then if (v92<=(18 + 22)) then if (v92<=38) then if (v92>37) then local v173=v91[2];local v174,v175=v82(v89[v173](v21(v89,v173 + 1 ,v91[3])));v84=(v175 + v173) -(1 -0) ;local v176=0;for v227=v173,v84 do v176=v176 + (439 -(145 + 293)) ;v89[v227]=v174[v176];end else local v177=0;local v178;while true do if (v177==0) then v178=v91[2];v89[v178]=v89[v178](v21(v89,v178 + 1 ,v91[3]));break;end end end elseif (v92==39) then if (v89[v91[2]]==v89[v91[434 -(44 + 386) ]]) then v83=v83 + 1 ;else v83=v91[3];end else v89[v91[1488 -(998 + 488) ]]=v74[v91[3]];end elseif (v92<=42) then if (v92==(14 + 27)) then if v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end else local v181=v91[2];do return v21(v89,v181,v84);end end elseif (v92<=43) then v89[v91[2]]=v89[v91[3]] + v91[4] ;elseif (v92==44) then local v266=v80[v91[3 + 0 ]];local v267;local v268={};v267=v18({},{[v7("\111\133\200\181\84\191\217","\219\48\218\161")]=function(v298,v299) local v300=v268[v299];return v300[1][v300[2]];end,[v7("\219\78\114\76\204\70\238\224\116\100","\128\132\17\28\41\187\47")]=function(v301,v302,v303) local v304=0;local v305;while true do if (v304==0) then v305=v268[v302];v305[1][v305[2]]=v303;break;end end end});for v306=1,v91[4] do local v307=0;local v308;while true do if (v307==1) then if (v308[1]==73) then v268[v306-1 ]={v89,v308[3]};else v268[v306-1 ]={v74,v308[3]};end v88[ #v88 + 1 ]=v268;break;end if (v307==0) then v83=v83 + 1 ;v308=v79[v83];v307=1;end end end v89[v91[2]]=v40(v266,v267,v75);else local v270=v91[2];local v271=v89[v270];local v272=v89[v270 + 2 ];if (v272>(772 -(201 + 571))) then if (v271>v89[v270 + 1 ]) then v83=v91[3];else v89[v270 + 3 ]=v271;end elseif (v271<v89[v270 + 1 ]) then v83=v91[3];else v89[v270 + 3 ]=v271;end end elseif (v92<=49) then if (v92<=47) then if (v92==46) then local v183=0;local v184;local v185;while true do if (v183==0) then v184=v91[2];v185={};v183=1;end if (v183==1) then for v337=1, #v88 do local v338=0;local v339;while true do if (v338==0) then v339=v88[v337];for v388=0, #v339 do local v389=0;local v390;local v391;local v392;while true do if (v389==1) then v392=v390[2];if ((v391==v89) and (v392>=v184)) then local v406=0;while true do if (v406==0) then v185[v392]=v391[v392];v390[1]=v185;break;end end end break;end if (v389==0) then v390=v339[v388];v391=v390[1];v389=1;end end end break;end end end break;end end else v89[v91[2]]=v89[v91[3]][v91[4]];end elseif (v92>48) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;else local v189=0;local v190;while true do if (v189==0) then v190=v91[2];v89[v190](v21(v89,v190 + 1 ,v91[3]));break;end end end elseif (v92<=51) then if (v92>50) then v89[v91[2]]=v89[v91[1141 -(116 + 1022) ]]%v89[v91[4]] ;else local v192=v91[2];local v193=v89[v192 + 2 ];local v194=v89[v192] + v193 ;v89[v192]=v194;if (v193>0) then if (v194<=v89[v192 + (4 -3) ]) then local v340=0;while true do if (v340==0) then v83=v91[2 + 1 ];v89[v192 + 3 ]=v194;break;end end end elseif (v194>=v89[v192 + 1 ]) then v83=v91[3];v89[v192 + 3 ]=v194;end end elseif (v92<=52) then v89[v91[2]]= #v89[v91[3]];elseif (v92>53) then v89[v91[2]]=v74[v91[3]];elseif (v89[v91[2]]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=63) then if (v92<=58) then if (v92<=56) then if (v92>55) then local v197=v91[2];local v198,v199=v82(v89[v197](v89[v197 + 1 ]));v84=(v199 + v197) -1 ;local v200=0;for v230=v197,v84 do v200=v200 + 1 ;v89[v230]=v198[v200];end elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[10 -7 ];end elseif (v92>57) then do return;end else v89[v91[2]]=v91[3];end elseif (v92<=60) then if (v92==59) then v89[v91[2]]= #v89[v91[3]];else local v204=0;local v205;local v206;local v207;while true do if (v204==1) then v207=v89[v205 + 2 ];if (v207>0) then if (v206>v89[v205 + 1 ]) then v83=v91[3];else v89[v205 + 3 ]=v206;end elseif (v206<v89[v205 + 1 ]) then v83=v91[3];else v89[v205 + 3 ]=v206;end break;end if (v204==0) then v205=v91[2];v206=v89[v205];v204=1;end end end elseif (v92<=61) then local v208=v91[2];local v209,v210=v82(v89[v208](v21(v89,v208 + 1 ,v84)));v84=(v210 + v208) -1 ;local v211=0;for v233=v208,v84 do local v234=0;while true do if (0==v234) then v211=v211 + (3 -2) ;v89[v233]=v209[v211];break;end end end elseif (v92==(921 -(814 + 45))) then for v314=v91[2],v91[3] do v89[v314]=nil;end else do return v89[v91[2]]();end end elseif (v92<=68) then if (v92<=65) then if (v92>64) then local v212=v91[2];local v213=v89[v212 + 2 ];local v214=v89[v212] + v213 ;v89[v212]=v214;if (v213>0) then if (v214<=v89[v212 + 1 ]) then local v346=0;while true do if (v346==0) then v83=v91[3];v89[v212 + 3 ]=v214;break;end end end elseif (v214>=v89[v212 + 1 ]) then v83=v91[7 -4 ];v89[v212 + 3 ]=v214;end else local v216=0;local v217;local v218;while true do if (v216==0) then v217=v91[2];v218={};v216=1;end if (1==v216) then for v349=1, #v88 do local v350=v88[v349];for v354=0, #v350 do local v355=0;local v356;local v357;local v358;while true do if (v355==1) then v358=v356[2];if ((v357==v89) and (v358>=v217)) then v218[v358]=v357[v358];v356[1]=v218;end break;end if (v355==0) then v356=v350[v354];v357=v356[1];v355=1;end end end end break;end end end elseif (v92<=(4 + 62)) then v89[v91[2]]=v75[v91[3]];elseif (v92>67) then v74[v91[3]]=v89[v91[2]];else local v278=0;local v279;while true do if (v278==0) then v279=v91[2];do return v89[v279](v21(v89,v279 + 1 ,v91[3]));end break;end end end elseif (v92<=70) then if (v92==69) then local v221=0;local v222;while true do if (v221==0) then v222=v91[2];v89[v222]=v89[v222](v21(v89,v222 + 1 ,v84));break;end end else v89[v91[2]]=v89[v91[3]]%v91[4] ;end elseif (v92<=(26 + 45)) then for v235=v91[2],v91[3] do v89[v235]=nil;end elseif (v92>72) then v89[v91[2]]=v89[v91[3]];else local v282=v91[2];local v283=v89[v282];for v319=v282 + 1 ,v84 do v15(v283,v89[v319]);end end v83=v83 + 1 ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012073Q00013Q0020055Q0002001207000100013Q002005000100010003001207000200013Q002005000200020004001207000300053Q0006370003000A0001000100041A3Q000A0001001207000300063Q002005000400030007001207000500083Q002005000500050009001207000600083Q00200500060006000A00061200073Q000100062Q00493Q00064Q00498Q00493Q00044Q00493Q00014Q00493Q00024Q00493Q00053Q001207000800013Q00200500080008000B0012070009000C3Q001207000A000D3Q000612000B0001000100052Q00493Q00074Q00493Q00094Q00493Q00084Q00493Q000A4Q00493Q000B4Q000C000C000B4Q000B000C00014Q001D000C6Q00203Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q000900025Q001239000300014Q003B00045Q001239000500013Q00042D0003002100012Q003600076Q000C000800024Q0036000900014Q0036000A00024Q0036000B00034Q0036000C00044Q000C000D6Q000C000E00063Q00200F000F000600012Q0014000C000F4Q0045000B3Q00022Q0036000C00034Q0036000D00044Q000C000E00014Q003B000F00014Q0031000F0006000F001006000F0001000F2Q003B001000014Q003100100006001000100600100001001000200F0010001000012Q0014000D00104Q0013000C6Q0045000A3Q000200200D000A000A00022Q00100009000A4Q000100073Q00010004410003000500012Q0036000300054Q000C000400024Q0043000300044Q001D00036Q00203Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006125Q000100012Q00288Q0036000100014Q0036000200024Q0036000300024Q000900046Q0036000500034Q000C00066Q003E000700074Q0014000500074Q002400043Q0001002005000400040001001239000500024Q0025000300050002001239000400034Q0014000200044Q004500013Q000200261F000100180001000400041A3Q001800012Q000C00016Q000900026Q0043000100024Q001D00015Q00041A3Q001B00012Q0036000100044Q000B000100014Q001D00016Q00203Q00013Q00013Q00213Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403483Q00D9D7CF35F5E18851C3C2CC6BE1B2D316C4C1CE36E3A9C411DFD7DE2BF2F5C411DC8CC30DE3ABD31D9EE8DA33E9F6F2379CEFD227F4BAD5079ECEDA2CE8F4D411C4D1D820A8B7D21F03083Q007EB1A3BB4586DBA703093Q004372656174654C696203093Q0011CC3CC0F214CC38C003053Q009C43AD4AA503093Q0010B65B1D882E4339B203073Q002654D72976DC4603063Q004E6577546162030A3Q005B133B52ED49053617F303053Q009E30764272030A3Q004E657753656374696F6E2Q033Q0080210903073Q009BCB44705613C503153Q0040C835F75977F0EA45DC22FD4C6DFFFD178E67AF1103083Q009826BD569C201885030A3Q004E657754657874426F782Q033Q00F752BE03043Q00269C37C703093Q00AD73682D0134F146B103083Q0023C81D1C4873149A03093Q004E657742752Q746F6E03093Q001AB7D4DC866C3F1CA603073Q005479DFB1BFED4C030F3Q00B85ECCA3314370D8B443DBE031552903083Q00A1DB36A9C05A305003093Q0021B59B2E992EB3853C03053Q00B962DAEB57030F3Q00C83422E5D5B98B2528F3CCEAC0393E03063Q00CAAB5C4786BE026Q00F03F01513Q0006293Q004F00013Q00041A3Q004F0001001207000100013Q001207000200023Q0020230002000200032Q003600045Q001239000500043Q001239000600054Q0014000400064Q001300026Q004500013Q00022Q00150001000100020020050002000100062Q003600035Q001239000400073Q001239000500084Q00250003000500022Q003600045Q001239000500093Q0012390006000A4Q0014000400064Q004500023Q000200202300030002000B2Q003600055Q0012390006000C3Q0012390007000D4Q0014000500074Q004500033Q000200202300040003000E2Q003600065Q0012390007000F3Q001239000800104Q0014000600084Q004500043Q00022Q003600055Q001239000600113Q001239000700124Q00250005000700022Q003E000600063Q0020230007000400132Q003600095Q001239000A00143Q001239000B00154Q00250009000B00022Q0036000A5Q001239000B00163Q001239000C00174Q0025000A000C0002000612000B3Q000100012Q00493Q00064Q00030007000B00010020230007000400182Q003600095Q001239000A00193Q001239000B001A4Q00250009000B00022Q0036000A5Q001239000B001B3Q001239000C001C4Q0025000A000C0002000612000B0001000100032Q00493Q00064Q00493Q00054Q00288Q00030007000B00010020230007000400182Q003600095Q001239000A001D3Q001239000B001E4Q00250009000B00022Q0036000A5Q001239000B001F3Q001239000C00204Q0025000A000C0002000612000B0002000100012Q00288Q00030007000B00012Q002E00015Q00041A3Q0050000100200500013Q00212Q00203Q00013Q00037Q0001024Q00448Q00203Q00017Q00083Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403553Q00415614355A184F6A5B43176B4E4B142D5C4015364C50032A4756052B5D0C032A440D082A414D0C32485005214C541A6A6F431424454B143C065005235A0D08204846136A4443092B06440131484E0931502Q0C304803043Q004529226003053Q007072696E7403083Q00BAC2DC0F4220B9DA03063Q004BDCA3B76A6200164Q00368Q0036000100013Q0006273Q000F0001000100041A3Q000F00010012073Q00013Q001207000100023Q0020230001000100032Q0036000300023Q001239000400043Q001239000500054Q0014000300054Q001300016Q00455Q00022Q000A3Q0001000100041A3Q001500010012073Q00064Q0036000100023Q001239000200073Q001239000300084Q0014000100034Q00015Q00012Q00203Q00017Q00033Q00030C3Q00736574636C6970626F617264031B3Q0021D538983A9B63C72DC83F8B26D328C62EC6638E3FC53FBA11983903043Q00E849A14C00073Q0012073Q00014Q003600015Q001239000200023Q001239000300034Q0014000100034Q00015Q00012Q00203Q00017Q00",v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--
