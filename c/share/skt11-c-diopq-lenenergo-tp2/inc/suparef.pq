meta {
	t : UTF-8 ! charset;
	t : Ref ! name;
	t : Справочник_НСИ_СУПА ! uname;
	t : 0 ! type;
	t : 1 ! usetype;
	t : 1 ! style;

}
functions {
	voltageToXsymbol(default) {
		t : "X" ! return;
		1100	:	"A";
		350	:	"B";
		100	:	"C";
		60	:	"D";
		200	:	"E";
		4	:	"F";
		30	:	"G";
		150	:	"H";
		1500	:	"I";
		2200	:	"J";
		275	:	"K";
		30	:	"L";
		3300	:	"M";
		5000	:	"N";
		660	:	"P";
		10001	:	"Q";
		9999	:	"R";
		0	:	"U";
	}
	xsymbolToVoltage(default) {
		t : -1 ! return;
		"A"	:	1100;
		"B"	:	350;
		"C"	:	100;
		"D"	:	60;
		"E"	:	200;
		"F"	:	4;
		"G"	:	30;
		"H"	:	150;
		"I"	:	1500;
		"J"	:	2200;
		"K"	:	275;
		"L"	:	30;
		"M"	:	3300;
		"N"	:	5000;
		"O"	:	60;
		"P"	:	660;
		"Q"	:	10001;
		"R"	:	9999;
		"U"	:	0;
	}
	ruToXsymbol(default) {
		t : "X" ! return;
		"VTM_110"	:	"A";
		"VTM_113"	:	"B";
		"VTM_109"	:	"C";
		"VTM_218"	:	"D";
		"VTM_269"	:	"E";
		"VTM_108"	:	"F";
		"VTM_219"	:	"G";
		"VTM_300"	:	"H";
		"VTM_327"	:	"I";
		"VTM_263"	:	"J";
		"VTM_111"	:	"K";
		"VTM_112"	:	"L";
		"VTM_262"	:	"M";
		"VTM_261"	:	"N";
		"VTM_114"	:	"O";
		"VTM_305"	:	"P";
		"VTM_254"	:	"Q";
		"VTM_253"	:	"R";
	}
	isVoltageRu(default) {
		t : f ! return;
		"VTM_110"	:	t;
		"VTM_113"	:	t;
		"VTM_109"	:	t;
		"VTM_218"	:	t;
		"VTM_269"	:	t;
		"VTM_108"	:	t;
		"VTM_219"	:	t;
		"VTM_300"	:	t;
		"VTM_327"	:	t;
		"VTM_263"	:	t;
		"VTM_111"	:	t;
		"VTM_112"	:	t;
		"VTM_262"	:	t;
		"VTM_261"	:	t;
		"VTM_114"	:	t;
		"VTM_305"	:	t;
		"VTM_254"	:	t;
		"VTM_253"	:	t;
	}
}
childs {
		seq {
		meta {
			t : Set ! name;
			t : 1000 ! id;
			t : 1000 ! type;
			t : Инициализация ! uname;
			t : 0 ! vcode;
			t : xxx-ref-set ! sid;

		}
		childs {
				seq {
				meta {
					t : V0 ! name;
					t : 1001 ! id;
					t : 1001 ! type;
					t : V0 ! uname;
					t : 0 ! vcode;
					t : xxx-ps-set-v0 ! sid;

				}
				data {
						t : int(0) ! Undef;
						t : int(1) ! Ok;
						t : int(2) ! Pre;
						t : int(3) ! TmcodeNull;
						t : int(5) ! TmtypeUndef;
						t : int(7) ! TmtypeUnknown;
						t : int(11) ! VoltageUnknown;
						t : int(13) ! PcodeNull;
						t : int(17) ! PcodeUnknown;
						t : int(19) ! PvalNull;
						t : int(23) ! Ignore;
						t : int(29) ! Fict;
						t : int(31) ! Over;
						t : int(37) ! Lost;
						t : int(41) ! Anchor;
						t : int(43) ! Tmo;
						t : int(47) ! Badstru;
						t : int(53) ! Loststru;

				}
				body {
						t : "VTM_110,VTM_113,VTM_109,VTM_218,VTM_269,VTM_108,VTM_219" ! vtmRuList0,hidden;
						t : ",VTM_300,VTM_327,VTM_263,VTM_111,VTM_112,VTM_262" ! vtmRuList1,hidden;
						t : ",VTM_261,VTM_114,VTM_305,VTM_254,VTM_253" ! vtmRuList2,hidden;
						t :  vtmRuList0+vtmRuList1+vtmRuList2 ! vtmRuListStr,hidden;
						t : "VTM_117,VTM_125,VTM_237,VTM_001" ! vtmBusListStr,hidden;
						t : "VTM_117,VTM_125,VTM_237,VTM_001" ! $VTMBusListStr,hidden;
						  
						t : list("VTM_119") ! $VCATTrans;
						t : list( "VTM_078") ! $VCATCt;
						t : list( "VTM_081" , "VTM_076" , "VTM_074" ,
						"VTM_083" , "VTM_085" ,  "VTM_087" ,  "VTM_091" , "VTM_092" , "VTM_096" , "VTM_097" ,
						"VTM_098" ,  "VTM_101" ,  "VTM_102" ,  "VTM_103" ,  "VTM_217"  , "VTM_241" ,  "VTM_246" ,
						"VTM_258"  ,  "VTM_266" ,  "VTM_272" ,  "VTM_306") ! $VCATClep;
						t : list( "VTM_117" ,  "VTM_125" ,  "VTM_237" ,  "VTM_001") ! $VCATBus;
						t : list( "VTM_022" , "VTM_023" , "VTM_024" , "VTM_245" , "VTM_308" ,
						   "VTM_020" , "VTM_028" ,  "VTM_227" , "VTM_029" ,  "VTM_226") ! $VCATBreaker;
						t : list( "VTM_044") ! $VCATSeparator;
						t : list("VTM_026" , "VTM_299" ,  "VTM_290" ,  "VTM_295" ,  "VTM_298" ,  "VTM_296" ,
						    "VTM_294" ,  "VTM_021" ,  "VTM_238" , "VTM_292" ,  "VTM_297" ,  "VTM_289" ,
						    "VTM_291" ,  "VTM_293" ,  "VTM_100") ! $VCATDisconnector;
						t : list( "VTM_110" ,  "VTM_113" ,  "VTM_109"  ,
						    "VTM_218" , "VTM_269" , "VTM_108" , "VTM_219" , "VTM_300" ,
						    "VTM_327" , "VTM_263"  , "VTM_111" , "VTM_112" , "VTM_262" ,
						    "VTM_261" ,  "VTM_114" ,  "VTM_305") ! $VCATRu;
						t : list("VTM_019" , "VTM_018" , "VTM_052" , "VTM_077") ! $VCATVch;
						t : list( "VTM_205" , "VTM_204" , "VTM_041" , "VTM_207" , "VTM_209" ,"VTM_210" , "VTM_211" , "VTM_203" , "VTM_206") ! $VCATUch;

				}
				}
				seq {
				meta {
					t : Map0 ! name;
					t : 1002 ! id;
					t : 1001 ! type;
					t : Map0 ! uname;
					t : 0 ! vcode;
					t : xxx-ps-set-map0 ! sid;

				}
				data {
						t : "status_v0" ! Modify;
						t : "status_v0" ! Check;
						t : "tmcode3,tmcode4,tmcode5,tmcode6,tmcode7,tmcode8" ! Xtree;
						t : "tmcode1,tmcode2" ! Xparents;
						t : "xparent" ! Parent;
						t : "xowner" ! Owner;
						t : "xlevel" ! Level;
						t : "-" ! Delimiter;
						t : int(2) ! xmod;
						t : int(41) ! anchor;
						t : int(43) ! sub;
						t : int(37) ! lost;
						t : int(53) ! loststru;
						t : int(47) ! badstru;
						t : int(2) ! prefer;
						t : int(1) ! xprefer;

				}
				body {
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						

				}
				}
				seq {
				meta {
					t : Func ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Func ! uname;
					t : 0 ! vcode;

				}
				}
				seq {
				meta {
					t : U1 ! name;
					t : Настройка ! uname;
					t : 1003 ! id;
					t : 1001 ! type;
					t : 0 ! vcode;
					t : xxx-ps-set-u1 ! sid;

				}
				data {
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						

				}
				childs {
						seq {
						meta {
							t : Co ! name;
							t : 1013 ! id;
							t : 1001 ! type;
							t : Co ! uname;
							t : 0 ! vcode;
							t : xxx-ps-set-u1-co ! sid;

						}
						childs {
								seq {
								meta {
									t : CONNECT ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : CONNECT ! uname;
									t : 0 ! vcode;

								}
								childs {
										seq {
										meta {
											t : Jfo ! name;
											t : 0 ! id;
											t : 0 ! type;
											t : Jfo ! uname;
											t : 0 ! vcode;

										}
										body {
												t : '
												plexDo
												noop
												' ! $FSG_CONNECT_JFO;

										}
										}
								}
								}
								seq {
								meta {
									t : CT ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : CT ! uname;
									t : 0 ! vcode;

								}
								childs {
										seq {
										meta {
											t : Jfo ! name;
											t : 0 ! id;
											t : 0 ! type;
											t : Jfo ! uname;
											t : 0 ! vcode;

										}
										body {
												t : '
												plexDo
												noop
												' ! $FSG_CT_JFO;

										}
										}
								}
								}
								seq {
								meta {
									t : PARENT ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : PARENT ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : setif(coOperator,"p",quePcoName) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_PARENT;

								}
								}
								seq {
								meta {
									t : B ! name;
									t : 1113 ! id;
									t : 1001 ! type;
									t : B ! uname;
									t : xxx-ps-set-u1-co-b ! sid;

								}
								body {
										t : '
										t : scope("n","?") ! coOperator;
										t : seqfor(coOperator,
										seq(
										    seqf(
										      setif(item,"n",cstart(myUname,"IV")),
										      setif(item,"n",xnsplit(myUname,coNames,"")),
										      setif(item,"n",nfromif(myUname,incNames,expNames))
										    ),
										   setif(item,"v",queQvoltage),
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_B;

								}
								}
								seq {
								meta {
									t : V ! name;
									t : 1213 ! id;
									t : 1001 ! type;
									t : V ! uname;
									t : 0 ! vcode;
									t : xxx-ps-set-u1-co-v ! sid;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("выкл","ранс")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"В-","В ")  ! xmyUname;
										t : replace(xmyUname,"ЗР-","ЗР ")  ! xmyUname;
										t : replace(xmyUname,"ШР-","ШР ")  ! xmyUname;
										t : replace(xmyUname,"СР-","СР ")  ! xmyUname;
										t : replace(xmyUname,"СП-","СП ")  ! xmyUname;
										t : replace(xmyUname,"TH-","TH ")  ! xmyUname;
										t : replace(xmyUname,"СВ-","СВ ")  ! xmyUname;
										t : replace(xmyUname,"ОРУ-","ОРУ ")  ! xmyUname;
										t : replace(xmyUname,"С-","С ")  ! xmyUname;
										t : replace(xmyUname,"TТ-","TТ ")  ! xmyUname;
										t : replace(xmyUname,"ТР-","ТР ")  ! xmyUname;
										t : replace(xmyUname,"Ш-","Ш ")  ! xmyUname;
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_V;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("Выключатель","трансформатора"
										)) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"-"," ")  ! xmyUname;
										t : trim(replace( xmyUname,hereRepNames,"")) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_V;

								}
								}
								seq {
								meta {
									t : SV ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : SV ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("соед")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"В-","В ")  ! xmyUname;
										t : replace(xmyUname,"ЗР-","ЗР ")  ! xmyUname;
										t : replace(xmyUname,"ШР-","ШР ")  ! xmyUname;
										t : replace(xmyUname,"СР-","СР ")  ! xmyUname;
										t : replace(xmyUname,"СП-","СП ")  ! xmyUname;
										t : replace(xmyUname,"TH-","TH ")  ! xmyUname;
										t : replace(xmyUname,"СВ-","СВ ")  ! xmyUname;
										t : replace(xmyUname,"ОРУ-","ОРУ ")  ! xmyUname;
										t : replace(xmyUname,"С-","С ")  ! xmyUname;
										t : replace(xmyUname,"TТ-","TТ ")  ! xmyUname;
										t : replace(xmyUname,"ТР-","ТР ")  ! xmyUname;
										t : replace(xmyUname,"Ш-","Ш ")  ! xmyUname;
										t : replace(xmyUname,"ОД-","ОД ")  ! xmyUname;
										t : replace(xmyUname,"ВР-","ВР ")  ! xmyUname;
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_SV;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : optional(
										    head(sbreak(myUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_SV;

								}
								}
								seq {
								meta {
									t : T ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : T ! uname;
									t : 0 ! vcode;

								}
								childs {
										seq {
										meta {
											t : Jfo ! name;
											t : 0 ! id;
											t : 0 ! type;
											t : Jfo ! uname;
											t : 0 ! vcode;

										}
										body {
												t : '
												noop
												' ! $FSG_T_JFO;

										}
										}
								}
								body {
										t : '
										t : scope("n","?") ! coOperator;
										t : replace(myUname,"Т1","Т-1")  ! xmyUname;
										t : replace(xmyUname,"Т2","Т-2")  ! xmyUname;
										t : seqfor(coOperator,
										seq(
										    seqf(
										      setif(item,"n",xsplitn(xmyUname,coNames,"")),
										      setif(item,"n",nfromif(xmyUname,incNames,expNames))
										    )
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_T;

								}
								}
								seq {
								meta {
									t : TN ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : TN ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : setif(coOperator,"p",quePcoName) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_TN;

								}
								}
								seq {
								meta {
									t : TSN ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : TSN ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("n","?") ! coOperator;
										t : seqfor(coOperator,
										seq(
										    seqf(
										      setif(item,"n",xsplitn(myUname,coNames,"")),
										      setif(item,"n",nfromif(myUname,incNames,expNames))
										    )
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_TSN;

								}
								}
								seq {
								meta {
									t : RZ ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RZ ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("РАЗРЯДНИК","ОПН","нейтр","МОТК")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"В-","В ")  ! xmyUname;
										t : replace(xmyUname,"ЗР-","ЗР ")  ! xmyUname;
										t : replace(xmyUname,"ШР-","ШР ")  ! xmyUname;
										t : replace(xmyUname,"СР-","СР ")  ! xmyUname;
										t : replace(xmyUname,"СП-","СП ")  ! xmyUname;
										t : replace(xmyUname,"TH-","TH ")  ! xmyUname;
										t : replace(xmyUname,"СВ-","СВ ")  ! xmyUname;
										t : replace(xmyUname,"ОРУ-","ОРУ ")  ! xmyUname;
										t : replace(xmyUname,"С-","С ")  ! xmyUname;
										t : replace(xmyUname,"TТ-","TТ ")  ! xmyUname;
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										head(queConnectName) : head(tail(queConnectName)) ! xxxConnectName;
										def(xxxConnectName) : sreducel(
										    refCoName,list(xxxConnectName," "+xxxConnectName),3
										) :  "???" ! xxxReducedCoName;
										  
										refCoName=xxxReducedCoName : sreducer(
										    refCoName,list(),3
										) : xxxReducedCoName ! refCoName;
										' ! $FSG_RZ;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : optional(
										    head(sbreak(myUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RZ;

								}
								}
								seq {
								meta {
									t : ZN ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : ZN ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("земл","зъед","нож","Разрядник, ОПН нейтрали","соед","ыкл","иней","азряд", 
										    "редох","Система", "шин","ОД-110","обход")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"В-","В ")  ! xmyUname;
										t : replace(xmyUname,"ЗР-","ЗР ")  ! xmyUname;
										t : replace(xmyUname,"ШР-","ШР ")  ! xmyUname;
										t : replace(xmyUname,"СР-","СР ")  ! xmyUname;
										t : replace(xmyUname,"СП-","СП ")  ! xmyUname;
										t : replace(xmyUname,"TH-","TH ")  ! xmyUname;
										t : replace(xmyUname,"СВ-","СВ ")  ! xmyUname;
										t : replace(xmyUname,"ОРУ-","ОРУ ")  ! xmyUname;
										t : replace(xmyUname,"С-","С ")  ! xmyUname;
										t : replace(xmyUname,"TТ-","TТ ")  ! xmyUname;
										t : replace(xmyUname,"ТР-","ТР ")  ! xmyUname;
										t : replace(xmyUname,"Ш-","Ш ")  ! xmyUname;
										t : replace(xmyUname,"ОД-","ОД ")  ! xmyUname;
										t : replace(xmyUname,"ВР-","ВР ")  ! xmyUname;
										t : replace(xmyUname,"ШМ-","ШМ ")  ! xmyUname;
										t : replace(xmyUname,"С.","С")  ! xmyUname; 
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										head(queConnectName) : head(tail(queConnectName)) ! xxxConnectName;
										def(xxxConnectName) : sreducel(
										    refCoName,list(xxxConnectName," "+xxxConnectName),3
										) :  "???" ! xxxReducedCoName;
										  
										refCoName=xxxReducedCoName : sreducer(
										    refCoName,list(),3
										) : xxxReducedCoName ! refCoName;
										' ! $FSG_ZN;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("Заземляющий","аземляющий", "разъединитель","Разъединитель_","нож"
										)) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"-"," ")  ! xmyUname;
										t : trim(replace( xmyUname,hereRepNames,"")) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_ZN;

								}
								}
								seq {
								meta {
									t : OD ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : OD ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("земл","зъед","нож","Разрядник, ОПН нейтрали","соед","ыкл","иней","азряд", 
										    "редох","Система шин","ОД-110","отдели")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										head(queConnectName) : head(tail(queConnectName)) ! xxxConnectName;
										def(xxxConnectName) : sreducel(
										    refCoName,list(xxxConnectName," "+xxxConnectName),3
										) :  "???" ! xxxReducedCoName;
										  
										refCoName=xxxReducedCoName : sreducer(
										    refCoName,list(),3
										) : xxxReducedCoName ! refCoName;
										' ! $FSG_OD;

								}
								}
								seq {
								meta {
									t : KZ ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : KZ ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("земл","зъед","нож","Разрядник, ОПН нейтрали","соед","ыкл","иней","азряд", 
										    "редох","Система шин","ОД-110","коротко")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										head(queConnectName) : head(tail(queConnectName)) ! xxxConnectName;
										def(xxxConnectName) : sreducel(
										    refCoName,list(xxxConnectName," "+xxxConnectName),3
										) :  "???" ! xxxReducedCoName;
										  
										refCoName=xxxReducedCoName : sreducer(
										    refCoName,list(),3
										) : xxxReducedCoName ! refCoName;
										' ! $FSG_KZ;

								}
								}
								seq {
								meta {
									t : CLEP ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : CLEP ! uname;
									t : 0 ! vcode;

								}
								childs {
										seq {
										meta {
											t : Jfo ! name;
											t : 0 ! id;
											t : 0 ! type;
											t : Jfo ! uname;
											t : 0 ! vcode;

										}
										body {
												t : '
												plexDo
												noop
												' ! $FSG_CLEP_JFO;

										}
										info {
												t : '
												pqBuildTnodes
												noop
												' ! $FSG_CLEP_JFO;

										}
										}
								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : setif(coOperator,"p",quePcoName) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_CLEP;
										t : '
										t: smax(head(tail(head(zsimilar(
										          xtrim2(
										          replace(
										                toupper(
										                    replace(
										                        myRchilds,
										                     xexpRepSoNames,"")
										                ),
										         "_","")),3
										    )))))
										! refSoName;
										' ! $FSN_CLEP;

								}
								info {
										t : '
										t: smax(head(tail(head(xsimilar(
										          replace(
										                toupper(
										                    replace(
										                        map(myRchilds,".item.#uname"),
										                    "_", "")
										                ),
										         xexpRepSoNames, ""),3
										    )))))
										! refSoName;
										' ! $FSN_CLEP;

								}
								}
								seq {
								meta {
									t : RD ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RD ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : setif(coOperator,"p",quePcoName) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RD;

								}
								}
								seq {
								meta {
									t : RDT ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RDT ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("Заземляющий","аземляющий", "разъединитель","Разъединитель","нож"
										)) ! hereRepNames;
										t : replace(myUname,"_"," ")  ! xmyUname;
										t : trim(replace( xmyUname,hereRepNames,"")) ! xmyUname;
										t : optional(
										    head(sbreak(xmyUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RDT;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RDT;

								}
								}
								seq {
								meta {
									t : TT ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : TT ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("ранс","ток")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"В-","В ")  ! xmyUname;
										t : replace(xmyUname,"ЗР-","ЗР ")  ! xmyUname;
										t : replace(xmyUname,"ШР-","ШР ")  ! xmyUname;
										t : replace(xmyUname,"СР-","СР ")  ! xmyUname;
										t : replace(xmyUname,"СП-","СП ")  ! xmyUname;
										t : replace(xmyUname,"TH-","TH ")  ! xmyUname;
										t : replace(xmyUname,"СВ-","СВ ")  ! xmyUname;
										t : replace(xmyUname,"ОРУ-","ОРУ ")  ! xmyUname;
										t : replace(xmyUname,"С-","С ")  ! xmyUname;
										t : replace(xmyUname,"ТТ-","ТТ ")  ! xmyUname;
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_TT;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_TT;

								}
								}
								seq {
								meta {
									t : RDL ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RDL ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("Заземляющий","аземляющий", "разъединитель","Разъединитель","нож"
										)) ! hereRepNames;
										t : replace(myUname,"_"," ")  ! xmyUname;
										t : trim(replace( xmyUname,hereRepNames,"")) ! xmyUname;
										t : optional(
										    head(sbreak(xmyUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RDL;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : setif(coOperator,"p",quePcoName) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RDL;
										 
										t : '
										t : scope("n","") ! coOperator;
										t : seqfor(coOperator,
										seq(
										    seqf(
										      setif(item,"n",nstart(myUname))
										    ),
										   setif(coOperator,"p",quePcoName)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RDL;

								}
								}
								seq {
								meta {
									t : VCHO ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : VCHO ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("земл","зъед","нож","Разрядник, ОПН нейтрали","соед","ыкл","иней","азряд",
										    "редох")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"В-","В ")  ! xmyUname;
										t : replace(xmyUname,"ЗР-","ЗР ")  ! xmyUname;
										t : replace(xmyUname,"ШР-","ШР ")  ! xmyUname;
										t : replace(xmyUname,"СР-","СР ")  ! xmyUname;
										t : replace(xmyUname,"СП-","СП ")  ! xmyUname;
										t : replace(xmyUname,"TH-","TH ")  ! xmyUname;
										t : replace(xmyUname,"СВ-","СВ ")  ! xmyUname;
										t : replace(xmyUname,"ОРУ-","ОРУ ")  ! xmyUname;
										t : replace(xmyUname,"С-","С ")  ! xmyUname;
										t : replace(xmyUname,"TТ-","TТ ")  ! xmyUname;
										t : replace(xmyUname,"ТР-","ТР ")  ! xmyUname;
										t : replace(xmyUname,"Ш-","Ш ")  ! xmyUname;
										t : replace(xmyUname,"ОД-","ОД ")  ! xmyUname;
										t : replace(xmyUname,"ВР-","ВР ")  ! xmyUname;
										t : replace(xmyUname,"ШМ-","ШМ ")  ! xmyUname;
										t : replace(xmyUname,"С.","С")  ! xmyUname; 
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										head(queConnectName) : head(tail(queConnectName)) ! xxxConnectName;
										def(xxxConnectName) : sreducel(
										    refCoName,list(xxxConnectName," "+xxxConnectName),3
										) :  "???" ! xxxReducedCoName;
										  
										refCoName=xxxReducedCoName : sreducer(
										    refCoName,list(),3
										) : xxxReducedCoName ! refCoName;
										' ! $FSG_VCHO;

								}
								}
								seq {
								meta {
									t : RSEK ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RSEK ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : optional(
										    head(sbreak(myUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RSEK;

								}
								info {
										t : '
										t : scope("n","?") ! coOperator;
										t : seqfor(coOperator,
										seq(
										    seqf(
										      setif(item,"n",nstart(myUname))
										    ),
										   setif(item,"v",queQvoltage)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_RSEK;

								}
								}
								seq {
								meta {
									t : PRED ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : PRED ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : optional(
										    head(sbreak(myUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_PRED;

								}
								}
								seq {
								meta {
									t : VKLL ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : VKLL ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("Выключатель","линейный"
										)) ! hereRepNames;
										t : replace(myUname,"_"," ")  ! xmyUname;
										t : trim(replace( xmyUname,hereRepNames,"")) ! xmyUname;
										t : optional(
										    head(sbreak(xmyUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_VKLL;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_VKLL;

								}
								}
								seq {
								meta {
									t : VTSN ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : VTSN ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : optional(
										    head(sbreak(myUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_VTSN;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_VTSN;

								}
								}
								seq {
								meta {
									t : KS ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : KS ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : optional(
										    head(sbreak(myUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_KS;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_KS;

								}
								}
								seq {
								meta {
									t : FP ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : FP ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("p","?") ! coOperator;
										t : optional(
										    head(sbreak(myUname," _-"))
										) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_FP;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"v",queQvoltage)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_FP;

								}
								}
								seq {
								meta {
									t : CSHSV ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : CSHSV ! uname;
									t : 0 ! vcode;

								}
								childs {
										seq {
										meta {
											t : Jfo ! name;
											t : 0 ! id;
											t : 0 ! type;
											t : Jfo ! uname;
											t : 0 ! vcode;

										}
										body {
												t : '
												plexDo
												noop
												' ! $FSG_CSHSV_JFO;

										}
										}
								}
								}
								seq {
								meta {
									t : CABLE ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : CABLE ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : scope("u","?") ! coOperator;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : trim(xmyUname) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										' ! $FSG_CABLE;

								}
								info {
										t : '
										t : scope("p","?") ! coOperator;
										t : toupper(list("редох","Система шин")) ! hereRepNames;
										t : replace(xbaseName,"_"," ")  ! xmyUname;
										t : replace(xmyUname,"В-","В ")  ! xmyUname;
										t : trim(eats( xmyUname,hereRepNames)) ! xmyUname;
										t : list(t,xmyUname) ! quePrefix;
										t : seqfor(coOperator,
										seq( 
										   setif(item,"p",quePcoName) ,
										   setif(item,"c",queConnectName) ,   
										   setif(item,"v",queQvoltage),
										   setif(item,"u",quePrefix)
										)
										) ! tmp;
										t : apply(coMask,coOperator) ! refCoName;
										head(queConnectName) : head(tail(queConnectName)) ! xxxConnectName;
										def(xxxConnectName) : sreducel(
										    refCoName,list(xxxConnectName," "+xxxConnectName),3
										) :  "???" ! xxxReducedCoName;
										  
										refCoName=xxxReducedCoName : sreducer(
										    refCoName,list(),3
										) : xxxReducedCoName ! refCoName;
										' ! $FSG_CABLE;

								}
								}
						}
						}
						seq {
						meta {
							t : Draw ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : Draw ! uname;
							t : 0 ! vcode;

						}
						childs {
								seq {
								meta {
									t : Canvas ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : Canvas ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    drawCanvas(50,50,41,41)
										) ! tmp;
										' ! xcanvasGrid;

								}
								}
								seq {
								meta {
									t : T ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : T ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeOval(0.2,0.4,0.8,1),
										    coshapeOval(0.2,0,0.8,0.6),
										    coshapeOval(0.6,0.2,1.2,0.8)
										) ! tmp;
										' ! $DrawShape_T;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04),
										    coshapePoint(0.46,-0.04,0.54,0.04),
										    coshapePoint(0.86,0.16,0.94,0.24),
										    coshapePoint(0.46,0.66,0.54,0.74)
										) ! tmp;
										' ! $DrawPoints_T;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,1.3,0.9)  ! tmp;
										' ! $DrawText_T;

								}
								}
								seq {
								meta {
									t : RZ ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RZ ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeRect(0.62,0.42,0.98,0.58),
										    coshapeLine(0.5,1,0.5,0),
										    coshapeLine(0.5,0.5,0.76,0.5),
										    coshapeLine(0.64,0.42,0.76,0.5),
										    coshapeLine(0.64,0.58,0.76,0.5),
										    coshapeLine(0.98,0.5,1.1,0.5),
										    coshapeLine(1.1,0.44,1.1,0.56),
										    coshapeLine(1.12,0.46,1.12,0.54),
										    coshapeLine(1.14,0.48,1.14,0.52)
										) ! tmp;
										' ! $DrawShape_RZ;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.46,0.54,0.54)
										) ! tmp;
										' ! $DrawPoints_RZ;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.7,0.7)  ! tmp;
										' ! $DrawText_RZ;

								}
								}
								seq {
								meta {
									t : ZN ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : ZN ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeRect(0.5,0,0.5,1),
										    coshapeLine(0.5,0.5,0.7,0.5),
										    coshapeLine(0.7,0.46,0.7,0.54),
										    coshapeLine(0.8,0.42,0.8,0.58),
										    coshapeLine(0.9,0.46,0.9,0.54),
										    coshapeLine(0.9,0.5,1.1,0.5),
										    coshapeLine(1.1,0.44,1.1,0.56),
										    coshapeLine(1.12,0.46,1.12,0.54),
										    coshapeLine(1.14,0.48,1.14,0.542)
										) ! tmp;
										' ! $DrawShape_ZN;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.46,0.54,0.54)
										) ! tmp;
										' ! $DrawPoints_ZN;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.65,0.65)  ! tmp;
										' ! $DrawText_ZN;

								}
								}
								seq {
								meta {
									t : RD ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RD ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeLine(0.5,1,0.5,0.7),
										    coshapeLine(0.4,0.7,0.6,0.7),
										    coshapeLine(0.5,0.56,0.5,0.4),
										    coshapeLine(0.4,0.3,0.6,0.3),
										    coshapeLine(0.5,0.3,0.5,0)
										) ! tmp;
										' ! $DrawShape_RD;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04),
										    coshapePoint(0.46,-0.04,0.54,0.04)
										) ! tmp;
										' ! $DrawPoints_RD;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.6,0.5)  ! tmp;
										' ! $DrawText_RD;

								}
								}
								seq {
								meta {
									t : RDL ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : RDL ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeLine(0.5,1,0.5,0.7),
										    coshapeLine(0.4,0.7,0.6,0.7),
										    coshapeLine(0.5,0.56,0.5,0.4),
										    coshapeLine(0.4,0.3,0.6,0.3),
										    coshapeLine(0.5,0.3,0.5,0)
										) ! tmp;
										' ! $DrawShape_RDL;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04),
										    coshapePoint(0.46,-0.04,0.54,0.04)
										) ! tmp;
										' ! $DrawPoints_RDL;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.6,0.5)  ! tmp;
										' ! $DrawText_RDL;

								}
								}
								seq {
								meta {
									t : V ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : V ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeRect(0.3,0.3,0.7,0.7),
										    coshapeLine(0.5,1,0.5,0.7),
										    coshapeLine(0.5,0.6,0.5,0.4),
										    coshapeLine(0.5,0.3,0.5,0)
										) ! tmp;
										' ! $DrawShape_V;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04),
										    coshapePoint(0.46,-0.04,0.54,0.04)
										) ! tmp;
										' ! $DrawPoints_V;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.8,0.5)  ! tmp;
										' ! $DrawText_V;

								}
								}
								seq {
								meta {
									t : TT ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : TT ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeLine(0.5,1,0.5,0),
										    coshapeOval(0.34,0.34,0.66,0.66),
										    coshapeLine(0.63,0.6,0.74,0.6),
										    coshapeLine(0.63,0.4,0.74,0.4)
										) ! tmp;
										' ! $DrawShape_TT;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04),
										    coshapePoint(0.46,-0.04,0.54,0.04)
										) ! tmp;
										' ! $DrawPoints_TT;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.8,0.7)  ! tmp;
										' ! $DrawText_TT;

								}
								}
								seq {
								meta {
									t : TN ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : TN ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeOval(0.3,0.6,0.7,1),
										    coshapeOval(0.14,0.36,0.54,0.76),
										    coshapeOval(0.46,0.36,0.86,0.76),
										    coshapeLine(0.7,0.8,0.94,0.8),
										    coshapeLine(0.94,0.8,0.94,0.26),
										    coshapeLine(0.86,0.56,0.94,0.56),
										    coshapeLine(0.84,0.26,1.04,0.26),
										    coshapeLine(0.88,0.22,1,0.22),
										    coshapeLine(0.92,0.18,0.96,0.18)
										) ! tmp;
										' ! $DrawShape_TN;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04)
										) ! tmp;
										' ! $DrawPoints_TN;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.9,0.8)  ! tmp;
										' ! $DrawText_TN;

								}
								info {
										t : '
										t : seq(
										    coshapeOval(0.3,0.6,0.7,1),
										    coshapeOval(0.14,0.36,0.54,0.76),
										    coshapeOval(0.46,0.36,0.86,0.76),
										    coshapeLine(0.7,0.8,0.94,0.8),
										    coshapeLine(0.94,0.8,0.94,0.26),
										    coshapeLine(0.86,0.56,0.94,0.56),
										    coshapeLine(0.84,0.26,1.04,0.26),
										    coshapeLine(0.88,0.22,1,0.22),
										    coshapeLine(0.92,0.18,0.96,0.18)
										) ! tmp;
										' ! $DrawShape_TN;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04)
										) ! tmp;
										' ! $DrawPoints_TN;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.9,0.8)  ! tmp;
										' ! $DrawText_TN;

								}
								}
								seq {
								meta {
									t : OPN ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : OPN ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeLine(0.2,0.5,0.34,0.5),
										    coshapeRect(0.34,0.44,0.7,0.56),
										    coshapeLine(0.34,0.4,0.62,0.6),
										    coshapeLine(0.62,0.6,0.7,0.6),
										    coshapeLine(0.7,0.5,0.82,0.5),
										    coshapeLine(0.82,0.44,0.82,0.56),
										    coshapeLine(0.84,0.46,0.84,0.54),
										    coshapeLine(0.86,0.48,0.86,0.52)
										) ! tmp;
										' ! $DrawShape_OPN;
										 
										t : '
										t : seq(
										    coshapePoint(0.18,0.48,0.22,0.52)
										) ! tmp;
										' ! $DrawPoints_OPN;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.4,0.7)  ! tmp;
										' ! $DrawText_OPN;

								}
								}
								seq {
								meta {
									t : BUS ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : BUS ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeLine(-4,0,2,0)
										) ! tmp;
										' ! $DrawShape_B;
										 
										t : ' 
										t : seq(
										    coshapePoint(0.46,-0.04,0.54,0.04)
										) ! tmp;
										' ! $DrawPoints_B;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.5,0.5)  ! tmp;
										' ! $DrawText_B;

								}
								}
								seq {
								meta {
									t : VCHO ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : VCHO ! uname;
									t : 0 ! vcode;

								}
								body {
										t : '
										t : seq(
										    coshapeLine(0.5,1,0.5,0.7),
										    coshapeLine(0.4,0.7,0.6,0.7),
										    coshapeLine(0.5,0.56,0.5,0.4),
										    coshapeLine(0.4,0.3,0.6,0.3),
										    coshapeLine(0.5,0.3,0.5,0)
										) ! tmp;
										' ! $DrawShape_RDL;
										 
										t : '
										t : seq(
										    coshapePoint(0.46,0.96,0.54,1.04),
										    coshapePoint(0.46,-0.04,0.54,0.04)
										) ! tmp;
										' ! $DrawPoints_RDL;
										 
										t : ' 
										undef(coName) : "?" ! coName; 
										t :  coshapeText(coName ,0.6,0.5)  ! tmp;
										' ! $DrawText_RDL;

								}
								}
						}
						}
				}
				body {
						 
						 
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						

				}
				}
		}
		}
		seq {
		meta {
			t : Con ! name;
			t : 2000 ! id;
			t : -1 ! type;
			t : Правила_соединения ! uname;
			t : 0 ! vcode;
			t : ref-con ! sid;

		}
		childs {
				seq {
				meta {
					t : 7001 ! id;
					t : VTM_001 ! name;
					t : Обходная_система_шин ! uname;
					t : 485 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("054,076,078,081,083,085,087,096,097") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;

				}
				}
				seq {
				meta {
					t : 7002 ! id;
					t : VTM_002 ! name;
					t : Автоматический_выключатель ! uname;
					t : 299 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7003 ! id;
					t : VTM_003 ! name;
					t : Аккумуляторная_батарея ! uname;
					t : 300 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("006") ! xr;

				}
				}
				seq {
				meta {
					t : 7004 ! id;
					t : VTM_004 ! name;
					t : Амперметр ! uname;
					t : 301 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7005 ! id;
					t : VTM_005 ! name;
					t : Оборудование_АИИС_КУЭ ! uname;
					t : 303 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("133") ! xr;

				}
				}
				seq {
				meta {
					t : 7007 ! id;
					t : VTM_007 ! name;
					t : Блоки_питания ! uname;
					t : 306 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7008 ! id;
					t : VTM_008 ! name;
					t : БСК ! uname;
					t : 307 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("080") ! xr;

				}
				}
				seq {
				meta {
					t : 7009 ! id;
					t : VTM_009 ! name;
					t : Варметр ! uname;
					t : 308 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7010 ! id;
					t : VTM_010 ! name;
					t : Ваттметр ! uname;
					t : 309 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7011 ! id;
					t : VTM_011 ! name;
					t : Вводной_шкаф ! uname;
					t : 310 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("016") ! xr;

				}
				}
				seq {
				meta {
					t : 7013 ! id;
					t : VTM_013 ! name;
					t : Средства_измерения ! uname;
					t : 488 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("004,009,010,014,016,017,025,036,037,049,050,051,071,072,073,082,129,256,276,277,278,279,280,281,282,283,284,285,286,287,288") ! xr;
						 
						t : "?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_PARENT ! fsignName;

				}
				}
				seq {
				meta {
					t : 7014 ! id;
					t : VTM_014 ! name;
					t : ТТ_(последствия_не_расчитываются) ! uname;
					t : 503 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?v ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7016 ! id;
					t : VTM_016 ! name;
					t : Вольтметр ! uname;
					t : 313 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7017 ! id;
					t : VTM_017 ! name;
					t : Встроенный_ТТ ! uname;
					t : 314 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7018 ! id;
					t : VTM_018 ! name;
					t : ВЧ-заградитель ! uname;
					t : 315 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list("ЗР") ! coNames;
						t : list("зем") ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;

				}
				}
				seq {
				meta {
					t : 7019 ! id;
					t : VTM_019 ! name;
					t : ВЧ-обработка ! uname;
					t : 316 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("018,027,052,077") ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "ВЧ ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_VCHO ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7020 ! id;
					t : VTM_020 ! name;
					t : Выключатель_секционирующий_(для_ЛЭП) ! uname;
					t : 318 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7021 ! id;
					t : VTM_021 ! name;
					t : Разъединитель_резистора ! uname;
					t : 641 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7022 ! id;
					t : VTM_022 ! name;
					t : Выключатель_комп.устройств ! uname;
					t : 319 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7023 ! id;
					t : VTM_023 ! name;
					t : Выключатель_линейный ! uname;
					t : 320 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,079,313,027") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?p" ! coMask;
						t : list("В ","В -","В  ф") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_V ! xdrawShape;
						t : $DrawPoints_V ! xdrawPoints;
						t : $DrawText_V ! xdrawText;
						t : $DrawShape_V + $DrawPoints_V + $DrawText_V ! xdrawSimplex;

				}
				info {
						t : "В-?v ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7024 ! id;
					t : VTM_024 ! name;
					t : Выключатель_обходной ! uname;
					t : 321 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						t : "ОВ ?v" ! coMask;
						t : list("ОВ","ов","ОСВ","осв") ! coNames;
						t : list("ель обх") ! incNames;
						t : list("ТТТ") ! expNames;
						t : $FSG_V ! fsignName;
						t : $DrawShape_V ! xdrawShape;
						t : $DrawPoints_V ! xdrawPoints;
						t : $DrawText_V ! xdrawText;
						t : $DrawShape_V + $DrawPoints_V + $DrawText_V ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7025 ! id;
					t : VTM_025 ! name;
					t : Выключатель_секционный ! uname;
					t : 322 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						 
						t : "СВ ?v" ! coMask;
						t : list("В ","В -","В  ф") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_V ! fsignName;
						t : $DrawShape_V ! xdrawShape;
						t : $DrawPoints_V ! xdrawPoints;
						t : $DrawText_V ! xdrawText;
						t : $DrawShape_V + $DrawPoints_V + $DrawText_V ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7026 ! id;
					t : VTM_026 ! name;
					t : Разъединитель_(последствия_не_определяются) ! uname;
					t : 436 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				info {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "Р ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RD ! fsignName;
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7027 ! id;
					t : VTM_027 ! name;
					t : Заземляющий_нож ! uname;
					t : 335 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("079,290") ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list("ЗР") ! coNames;
						t : list("зем") ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						t : $DrawShape_ZN ! xdrawShape;
						t : $DrawPoints_ZN ! xdrawPoints;
						t : $DrawText_ZN ! xdrawText;
						t : $DrawShape_ZN + $DrawPoints_ZN + $DrawText_ZN ! xdrawSimplex;

				}
				info {
						t : toList("079,290") ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list("ЗР") ! coNames;
						t : list("зем") ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						t : $DrawShape_ZN ! xdrawShape;
						t : $DrawPoints_ZN ! xdrawPoints;
						t : $DrawText_ZN ! xdrawText;
						t : $DrawShape_ZN + $DrawPoints_ZN + $DrawText_ZN ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7028 ! id;
					t : VTM_028 ! name;
					t : Выключатель_секционный,_Выключатель_шиносоединительный ! uname;
					t : 323 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_V ! xdrawShape;
						t : $DrawPoints_V ! xdrawPoints;
						t : $DrawText_V ! xdrawText;
						t : $DrawShape_V + $DrawPoints_V + $DrawText_V ! xdrawSimplex;

				}
				info {
						t : "СВ-?v" ! coMask;

				}
				}
				seq {
				meta {
					t : 7029 ! id;
					t : VTM_029 ! name;
					t : Выключатель_трансформатора ! uname;
					t : 324 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,038,079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?p" ! coMask;
						t : list("В ","В -","В  ф") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_V ! fsignName;
						 
						t : $DrawShape_V ! xdrawShape;
						t : $DrawPoints_V ! xdrawPoints;
						t : $DrawText_V ! xdrawText;
						t : $DrawShape_V + $DrawPoints_V + $DrawText_V ! xdrawSimplex;

				}
				info {
						t : "В-?v ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7030 ! id;
					t : VTM_030 ! name;
					t : ДГР ! uname;
					t : 329 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("275") ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;

				}
				}
				seq {
				meta {
					t : 7031 ! id;
					t : VTM_031 ! name;
					t : Зарядно-подзарядные_агрегаты ! uname;
					t : 336 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7034 ! id;
					t : VTM_034 ! name;
					t : Разрядник,_ОПН_(ПО_не_определяются) ! uname;
					t : 430 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "РВ ?v ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RZ ! fsignName;
						t : $DrawShape_RZ ! xdrawShape;
						t : $DrawPoints_RZ ! xdrawPoints;
						t : $DrawText_RZ ! xdrawText;
						t : $DrawShape_RZ + $DrawPoints_RZ + $DrawText_RZ ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7036 ! id;
					t : VTM_036 ! name;
					t : Преобразователь_тока ! uname;
					t : 402 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7037 ! id;
					t : VTM_037 ! name;
					t : ЗН_СШ ! uname;
					t : 347 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7038 ! id;
					t : VTM_038 ! name;
					t : Средства_измерения ! uname;
					t : 349 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("004,009,010,014,016,017,025,036,037,049,050,051,071,072,073,082,129,256,276,277,278,279,280,281,282,283,284,285,286,287,288") ! xr;
						 
						t : "?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_PARENT ! fsignName;

				}
				}
				seq {
				meta {
					t : 7040 ! id;
					t : VTM_040 ! name;
					t : Источники_бесперебойного_питания ! uname;
					t : 351 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7044 ! id;
					t : VTM_044 ! name;
					t : Отделитель ! uname;
					t : 387 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_OD ! fsignName;

				}
				}
				seq {
				meta {
					t : 7045 ! id;
					t : VTM_045 ! name;
					t : Короткозамыкатель ! uname;
					t : 368 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("079") ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_KZ ! fsignName;

				}
				}
				seq {
				meta {
					t : 7046 ! id;
					t : VTM_046 ! name;
					t : Коммутационный_аппарат ! uname;
					t : 356 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("076") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "КА ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RD ! fsignName;
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD ! xdrawPoints;
						t : $DrawText_RD ! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7049 ! id;
					t : VTM_049 ! name;
					t : Преобразователь_мощности ! uname;
					t : 399 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7050 ! id;
					t : VTM_050 ! name;
					t : ТН ! uname;
					t : 499 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;
						 
						t : "ТН ?p" ! coMask;
						t : list("ТН") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TN ! fsignName;
						t : $DrawShape_TN ! xdrawShape;
						t : $DrawPoints_TN ! xdrawPoints;
						t : $DrawText_TN ! xdrawText;
						t : $DrawShape_TN + $DrawPoints_TN + $DrawText_TN ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7051 ! id;
					t : VTM_051 ! name;
					t : Счетчик_э/э ! uname;
					t : 496 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;

				}
				}
				seq {
				meta {
					t : 7052 ! id;
					t : VTM_052 ! name;
					t : Конденсатор_связи ! uname;
					t : 360 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						 
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list("ЗР") ! coNames;
						t : list("зем") ! incNames;
						t : list() ! expNames;
						t : $FSG_KS ! fsignName;

				}
				info {
						t : "КС-?v ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7053 ! id;
					t : VTM_053 ! name;
					t : Контроль_изоляции ! uname;
					t : 361 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("016") ! xr;

				}
				}
				seq {
				meta {
					t : 7054 ! id;
					t : VTM_054 ! name;
					t : Строительная_часть ! uname;
					t : 490 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("075,255,362") ! xr;

				}
				}
				seq {
				meta {
					t : 7055 ! id;
					t : VTM_055 ! name;
					t : Предохранитель_ ! uname;
					t : 398 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;

				}
				info {
						t : "Пр ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7056 ! id;
					t : VTM_056 ! name;
					t : Контрольный_кабель ! uname;
					t : 366 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7058 ! id;
					t : VTM_058 ! name;
					t : Магистраль ! uname;
					t : 375 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("059") ! xr;

				}
				}
				seq {
				meta {
					t : 7059 ! id;
					t : VTM_059 ! name;
					t : Манометр ! uname;
					t : 376 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7060 ! id;
					t : VTM_060 ! name;
					t : Маслоприемное_устройство ! uname;
					t : 377 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7061 ! id;
					t : VTM_061 ! name;
					t : Маслохозяйство ! uname;
					t : 378 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7065 ! id;
					t : VTM_065 ! name;
					t : Определение_замыкания_на_земл. ! uname;
					t : 384 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("016") ! xr;

				}
				}
				seq {
				meta {
					t : 7069 ! id;
					t : VTM_069 ! name;
					t : Подстанция ! uname;
					t : 395 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("005,035,039,041,057,062,107,108,109,110,111,113,116,119,122,126,138,218,219,252,261,262,263,269,300,305,310,327,328,395") ! xr;

				}
				}
				seq {
				meta {
					t : 7070 ! id;
					t : VTM_070 ! name;
					t : Разрядник,_ОПН_(ПО_СШ) ! uname;
					t : 433 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "РВ ?v ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RZ ! fsignName;
						t : $DrawShape_RZ ! xdrawShape;
						t : $DrawPoints_RZ ! xdrawPoints;
						t : $DrawText_RZ ! xdrawText;
						t : $DrawShape_RZ + $DrawPoints_RZ + $DrawText_RZ ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7071 ! id;
					t : VTM_071 ! name;
					t : Преобразователь_напряжения ! uname;
					t : 400 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7072 ! id;
					t : VTM_072 ! name;
					t : Преобразователь_температуры ! uname;
					t : 401 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7073 ! id;
					t : VTM_073 ! name;
					t : Преобразователь_частоты ! uname;
					t : 403 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7074 ! id;
					t : VTM_074 ! name;
					t : Присоединение_0,4кВ ! uname;
					t : 406 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,046") ! xr;

				}
				}
				seq {
				meta {
					t : 7076 ! id;
					t : VTM_076 ! name;
					t : Присоединение_ЛЭП ! uname;
					t : 408 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("313,023,027,046,045,044,055,034,175,107,013,054,050,014,290")  ! xr;   
						 
						t : "?u ?v ?p" ! coMask;
						t : list("В ","В -","В  ф") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : list("Заземляющий","аземляющий", "разъединитель","Разъединитель_","нож","110кВ","35кВ","10кВ","6кВ","2ШР","1ШР",
						          "Выкатная","тележка","элемент","Выключатель","линейный","Вык.", "тел.","Встроенный",
						          "ЗР","КР","ЛР"
						) ! expRepSoNames;
						t : $FSG_ZN ! fsignName;
						f : $FSN_CLEP ! fsoName; 
						t : $FSG_CLEP_JFO ! jfoTopo;
						 
						t : "290" 	! rd;
						t : "019" 	! vch;
						t : "023" 	! vl;
						t : "027"	! zn;
						t : "044" 	! od;
						t : "045" 	! kz;
						t : "046" 	! ka;
						t : "055"	! fuse;
						t : "175|034"	! rz;
						t : "013" 	! si;
						t : "014" 	! tt;
						t : "050" 	! tn;
						t : "107" 	! rt;
						t : toLists(rd+"/ШР,"+zn+"/1ЗР,"+vl+","+si+","+zn+"/2ЗР,"+rd+"/ЛР,"+zn+"/ЗР,"+vch) ! xrd0;  
						t : list(xrd0) ! xrdList;

				}
				info {
						t : toList("313,023,027,046,045,044,055,034,175,107,013,054,050,014,290")  ! xr;   
						 
						t : "ЛВБ-1" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : list("Заземляющий","аземляющий", "разъединитель","Разъединитель_","нож","110кВ","35кВ","10кВ","6кВ","2ШР","1ШР",
						          "Выкатная","тележка","элемент","Выключатель","линейный","Вык.", "тел.","Встроенный",
						          "ЗР","КР","ЛР"
						) ! expRepSoNames;
						t : $FSG_CLEP ! fsignName; 
						t : $FSN_CLEP ! fsoName; 
						t : $FSG_CLEP_JFO ! jfoTopo;
						 
						t : "290" 	! rd;
						t : "019" 	! vch;
						t : "023" 	! vl;
						t : "027"	! zn;
						t : "044" 	! od;
						t : "045" 	! kz;
						t : "046" 	! ka;
						t : "055"	! fuse;
						t : "175|034"	! rz;
						t : "013" 	! si;
						t : "014" 	! tt;
						t : "050" 	! tn;
						t : "107" 	! rt;
						t : toLists(rd+"/ШР,"+zn+"/1ЗР,"+vl+","+si+","+zn+"/2ЗР,"+rd+"/ЛР,"+zn+"/ЗР,"+vch) ! xrd0;  
						t : list(xrd0) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7077 ! id;
					t : VTM_077 ! name;
					t : Фильтр_присоединения ! uname;
					t : 514 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "?u ?v ?p" ! coMask; 
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_FP ! fsignName;

				}
				info {
						t : "ФП-?v ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7078 ! id;
					t : VTM_078 ! name;
					t : Присоединение_трансформатора ! uname;
					t : 418 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("313,029,027,046,045,044,055,081,083,172,013,054,014,289")  ! xr;  
						t : "Т-?n" ! coMask;
						t : list(
						    "T-","T_-","Т-","Т_-","T-_","Т-_",
						    "T -","Т -","T- ","Т- "
						) ! coNames;
						t : list("ранс","соед","вод","ММПС") ! incNames;
						t : list("ТН","ТСН","ОПН") ! expNames;
						 
						t : $FSG_T ! fsignName;
						t : $FSG_CT_JFO ! jfoTopo;
						 
						t : "029" ! vt;
						t : "027" ! zn;
						t : "044" ! od;
						t : "045" ! kz;
						t : "046" ! ka;
						t : "055" ! fuse;
						t : "081" ! ctn;
						t : "083" ! ctsn;
						t : "172" ! rz;
						t : "014|277" ! tt;
						t : "289" ! rd;
						t : toLists(zn+"/С,"+rd+"/ШР,"+zn+","+vt+","+tt+","+rd+"/ТР,"+rz) ! xrd0;  
						t : toLists(zn+"/С,"+rd+"/ШР,"+zn+"/1ЗР&В,"+vt+","+tt+","+zn+"/2ЗР&В,"+rd+"/ТР,"+zn+"/ЗР&Т,"+rz) ! xrd1;  
						t : list(xrd0,xrd1) ! xrdList;
						 
						t : ' t : 
						placeChain(topoChain,"d2cd4c,v1,3") ! tmp;
						' ! xplaceDesc;

				}
				}
				seq {
				meta {
					t : 7080 ! id;
					t : VTM_080 ! name;
					t : Разрядник,_ОПН_обмотки ! uname;
					t : 435 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "РВН ?v ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RZ ! fsignName;
						t : $DrawShape_RZ ! xdrawShape;
						t : $DrawPoints_RZ ! xdrawPoints;
						t : $DrawText_RZ ! xdrawText;
						t : $DrawShape_RZ + $DrawPoints_RZ + $DrawText_RZ ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7081 ! id;
					t : VTM_081 ! name;
					t : Присоединение_ТН ! uname;
					t : 417 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t :  toList("027,055,034,172,070,013,054,289,297,227")  ! xr;  
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						t : $FSG_CONNECT_JFO ! jfoTopo;
						  
						t : "027" 		! zn;   
						t : "289|297" 		! rd;
						t : "034|172|070" 	! rz;
						t : "227"   		! vtn;
						t : "013" 		! si;
						t : "055" 		! fuse;
						t : toLists(zn+","+rd+","+zn+"/ТН,"+rz+","+si+","+fuse) ! xrd0;  
						  
						t : list(xrd0) ! xrdList;

				}
				info {
						t :  toList("027,055,034,172,070,013,054,289,297,227")  ! xr;  
						 
						t : "ТН ?p" ! coMask;
						t : list("ТН") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_PARENT ! fsignName;
						  
						t : "027" 		! zn;   
						t : "289|297" 		! rd;
						t : "034|172|070" 	! rz;
						t : "227"   		! vtn;
						t : "013" 		! si;
						t : "055" 		! fuse;
						t : toLists(zn+","+rd+","+zn+"/ТН,"+rz+","+si+","+fuse) ! xrd0;  
						  
						t : list(xrd0) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7082 ! id;
					t : VTM_082 ! name;
					t : Частотомер ! uname;
					t : 517 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7083 ! id;
					t : VTM_083 ! name;
					t : Присоединение_ТСН ! uname;
					t : 419 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t :  toList("002,226,027,046,055,034,172,013,054,084,014,290,291,096")  ! xr;     
						    
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						t : $FSG_CONNECT_JFO ! jfoTopo;
						 
						t : "290|291" 		! rd;
						t : "226" 		! vtsn;
						t : "084" 		! ctsn;
						t : "013" 		! si;
						t : "014" 		! tt;
						t : "055" 		! fuse;
						t : "034|172" 		! rz;
						t : "027" 		! zn;
						t : toLists(vtsn+","+rd+","+si+","+","+tt+","+zn+","+rz+","+fuse) ! xrd0;  
						t : list(xrd0) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7084 ! id;
					t : VTM_084 ! name;
					t : ТСН ! uname;
					t : 502 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;
						t : "ТСН ?p" ! coMask;
						t : list("ТСН") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TSN ! fsignName;

				}
				}
				seq {
				meta {
					t : 7085 ! id;
					t : VTM_085 ! name;
					t : Присоединение_плавки_гололеда ! uname;
					t : 411 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,027,034,054,068,086,298") ! xr;
						 
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7086 ! id;
					t : VTM_086 ! name;
					t : Трансформатор_плавки_гололеда ! uname;
					t : 501 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7087 ! id;
					t : VTM_087 ! name;
					t : Присоединение_УКРМ ! uname;
					t : 420 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("002,008,013,014,022,027,034,046,054,070,088,132,172,293") ! xr;
						 
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7088 ! id;
					t : VTM_088 ! name;
					t : СТК ! uname;
					t : 489 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7089 ! id;
					t : VTM_089 ! name;
					t : Присоединение_разрядника ! uname;
					t : 412 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("069,090,202,215,236,259,260") ! xr;
						 
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7091 ! id;
					t : VTM_091 ! name;
					t : Присоединение_СВ,_ШСВ ! uname;
					t : 416 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,028,044,045,054,083,292") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_SV ! fsignName;
						t : $FSG_CSHSV_JFO ! jfoTopo;
						 
						t : "027" ! zn;
						t : "028" ! vs;
						t : "292" ! rd;
						t : "013" ! si;
						t : "034|070" ! rz;
						t : toLists(rd+"/1СР,"+zn+"/1ЗР,"+vs+","+si+","+zn+"/2ЗР,"+rd+"/2СР") ! xrd0;  
						t : toLists(zn+"/1С,"+rd+"/1СР,"+zn+"/1ЗР&CB,"+vs+","+si+","+zn+"/2ЗР&СВ,"+rd+"/2СР"+zn+"/2с,") ! xrd1;  
						  
						t : list(xrd0,xrd1) ! xrdList;

				}
				info {
						t : toList("013,028,044,045,054,083,292") ! xr;
						 
						t : "СВ ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : list("Заземляющий","аземляющий", "разъединитель","Разъединитель_","нож","110кВ","35кВ","10кВ","6кВ","2ШР","1ШР",
						          "Выкатная","тележка","элемент","Выключатель","линейный","Вык.", "тел.","Встроенный",
						          "ЗР","КР","ЛР"
						) ! expRepSoNames;
						t : $FSG_SV ! fsignName;
						t : $FSN_SV ! fsoName; 
						 
						t : "027" ! zn;
						t : "028" ! vs;
						t : "292" ! rd;
						t : "013" ! si;
						t : "034|070" ! rz;
						t : toLists(rd+"/1СР,"+zn+"/1ЗР,"+vs+","+si+","+zn+"/2ЗР,"+rd+"/2СР") ! xrd0;  
						t : toLists(zn+"/1С,"+rd+"/1СР,"+zn+"/1ЗР&CB,"+vs+","+si+","+zn+"/2ЗР&СВ,"+rd+"/2СР"+zn+"/2с,") ! xrd1;  
						  
						t : list(xrd0,xrd1) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7092 ! id;
					t : VTM_092 ! name;
					t : Присоединение_ОСШ ! uname;
					t : 409 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,024,054,295") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_SV ! fsignName;
						t : $FSG_CONNECT_JFO ! jfoTopo;
						 
						t : "295" 		! rd;
						t : "024" 		! vo;
						t : "013" 		! si;
						t : "034|172" 		! rz;
						t : cons( toList("295,024"),cons(toList("295"),toList("295"))) ! xrd0;       
						t : cons( toList("295,013,024"),cons(toList("295"),toList("295"))) ! xrd1;       
						t : list(xrd0,xrd1) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7093 ! id;
					t : VTM_093 ! name;
					t : Присоединение_ОСШВ ! uname;
					t : 410 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,024,054,292") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_SV ! fsignName;
						t : $FSG_CONNECT_JFO ! jfoTopo;
						  
						t : cons( toList("295,024"),cons(toList("295"),toList("295"))) ! xrd0;       
						t : cons( toList("295,013,024"),cons(toList("295"),toList("295"))) ! xrd1;       
						t : list(xrd0,xrd1) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7094 ! id;
					t : VTM_094 ! name;
					t : Ремонтная_перемычка ! uname;
					t : 444 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,026,028,044,054") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_SV ! fsignName;
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7096 ! id;
					t : VTM_096 ! name;
					t : Присоединение_ДГР ! uname;
					t : 407 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,021,027,030,034,054,070,099,245,294,299,307") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_SV ! fsignName;
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				info {
						t : toList("013,021,027,030,034,054,070,099,245,294,299,307") ! xr;
						 
						t : "ДГР" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : list() ! expRepSoNames;
						t : $FSG_CLEP! fsignName; 
						t : $FSN_CLEP ! fsoName;

				}
				}
				seq {
				meta {
					t : 7097 ! id;
					t : VTM_097 ! name;
					t : Присоединение_разрядников_СШ ! uname;
					t : 413 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("070,290") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7098 ! id;
					t : VTM_098 ! name;
					t : Присоединение_СВ ! uname;
					t : 415 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t :  toList("002,028,027,046,045,044,034,070,100,013,054,014,292")  ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_SV ! fsignName;
						t : $FSG_CONNECT_JFO ! jfoTopo;
						 
						t : "027" ! zn;
						t : "002" ! av;
						t : "028" ! vs;
						t : "292" ! rd;
						t : "013" ! si;
						t : "034|070" ! rz;
						t : toLists(rd+"/1СР,"+zn+"/1ЗР,"+vs+","+si+","+zn+"/2ЗР,"+rd+"/2СР") ! xrd0;  
						t : toLists(zn+"/1С,"+rd+"/1СР,"+zn+"/1ЗР&CB,"+vs+","+si+","+zn+"/2ЗР&СВ,"+rd+"/2СР"+zn+"/2с,") ! xrd1;  
						  
						t : list(xrd0,xrd1) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7099 ! id;
					t : VTM_099 ! name;
					t : Присоединительный_трансформатор ! uname;
					t : 425 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7100 ! id;
					t : VTM_100 ! name;
					t : Разъединитель,_в_т.ч._выкат._элементы ! uname;
					t : 437 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				info {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						t : "Р ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RD ! fsignName;
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7101 ! id;
					t : VTM_101 ! name;
					t : Присоединение/щит_собственных_нужд ! uname;
					t : 422 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,046") ! xr;
						 
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7102 ! id;
					t : VTM_102 ! name;
					t : Присоединение/щит_УКРМ ! uname;
					t : 423 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,046,132") ! xr;
						 
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7103 ! id;
					t : VTM_103 ! name;
					t : Присоединение/щит_уличного_освещения ! uname;
					t : 424 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,046") ! xr;
						 
						t : $FSG_CONNECT_JFO ! jfoTopo;

				}
				}
				seq {
				meta {
					t : 7104 ! id;
					t : VTM_104 ! name;
					t : Рубильник ! uname;
					t : 472 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7106 ! id;
					t : VTM_106 ! name;
					t : Разрядник,_ОПН_нейтрали ! uname;
					t : 434 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RZ ! fsignName;
						t : $DrawShape_RZ ! xdrawShape;
						t : $DrawPoints_RZ ! xdrawPoints;
						t : $DrawText_RZ ! xdrawText;
						t : $DrawShape_RZ + $DrawPoints_RZ + $DrawText_RZ ! xdrawSimplex;

				}
				info {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "BРН ?v ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RZ ! fsignName;
						t : $DrawShape_RZ ! xdrawShape;
						t : $DrawPoints_RZ ! xdrawPoints;
						t : $DrawText_RZ ! xdrawText;
						t : $DrawShape_RZ + $DrawPoints_RZ + $DrawText_RZ ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7107 ! id;
					t : VTM_107 ! name;
					t : Реактор_токоограничивающий ! uname;
					t : 440 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,054") ! xr;

				}
				}
				seq {
				meta {
					t : 7108 ! id;
					t : VTM_108 ! name;
					t : РУ_0,4_кВ ! uname;
					t : 463 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("098,101,102,103,125,237") ! xr;

				}
				}
				seq {
				meta {
					t : 7109 ! id;
					t : VTM_109 ! name;
					t : РУ_10_кВ ! uname;
					t : 464 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,054,095,098,125,237") ! xr;

				}
				}
				seq {
				meta {
					t : 7110 ! id;
					t : VTM_110 ! name;
					t : РУ_110_кВ ! uname;
					t : 465 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,054,091,092,093,094,095,125,324") ! xr;

				}
				}
				seq {
				meta {
					t : 7111 ! id;
					t : VTM_111 ! name;
					t : РУ_27,5_кВ ! uname;
					t : 466 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,091,092,093,094,095,125") ! xr;

				}
				}
				seq {
				meta {
					t : 7112 ! id;
					t : VTM_112 ! name;
					t : РУ_3_кВ_то_же_что_РУ_10 ! uname;
					t : 468 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7113 ! id;
					t : VTM_113 ! name;
					t : РУ_35_кВ ! uname;
					t : 469 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,054,091,092,093,094,095,125,324") ! xr;

				}
				}
				seq {
				meta {
					t : 7114 ! id;
					t : VTM_114 ! name;
					t : РУ_6_кВ_то_же_что_и_РУ_10 ! uname;
					t : 471 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7115 ! id;
					t : VTM_115 ! name;
					t : Связь ! uname;
					t : 473 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7116 ! id;
					t : VTM_116 ! name;
					t : СДТУ ! uname;
					t : 474 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("115,130") ! xr;

				}
				}
				seq {
				meta {
					t : 7117 ! id;
					t : VTM_117 ! name;
					t : Секция_(система)_шин_(собственные_нужды) ! uname;
					t : 475 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("074,076,083") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_B ! xdrawShape;
						t : $DrawPoints_B ! xdrawPoints;
						t : $DrawText_B ! xdrawText;
						t : $DrawShape_B + $DrawPoints_B + $DrawText_B ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7118 ! id;
					t : VTM_118 ! name;
					t : Силовой_кабель_до_1000В ! uname;
					t : 477 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7119 ! id;
					t : VTM_119 ! name;
					t : Силовой_трансформатор ! uname;
					t : 478 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t :  toList("313,027,096,106,013,127,038")  ! xr;
						 
						t : "Т-?n" ! coMask;
						t : list(
						    "T-","T_-","Т-","Т_-","T-_","Т-_",
						    "T -","Т -","T- ","Т- "
						) ! coNames;
						t : list("ранс","силов") ! incNames;
						t : list("ТН","ТСН") ! expNames;
						t : $FSG_T ! fsignName;
						t : $DrawShape_T ! xdrawShape;
						t : $DrawPoints_T ! xdrawPoints;
						t : $DrawText_T ! xdrawText;
						t : $DrawShape_T + $DrawPoints_T + $DrawText_T ! xdrawSimplex;
						  
						t : "027" ! zn;
						t : "106" ! rz;
						t : "013" ! si;
						t : "096" ! dgr;
						t : toLists(si+","+rz+","+zn+","+dgr) ! xrd0;  
						  
						t : list(xrd0) ! xrdList;

				}
				}
				seq {
				meta {
					t : 7125 ! id;
					t : VTM_125 ! name;
					t : Система_шин ! uname;
					t : 484 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,054,076,078,081,083,085,087,096,097,098,217,238,258,306") ! xr;
						 
						t : "?u ?v" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_B ! xdrawShape;
						t : $DrawPoints_B ! xdrawPoints;
						t : $DrawText_B ! xdrawText;
						t : $DrawShape_B + $DrawPoints_B + $DrawText_B ! xdrawSimplex;

				}
				info {
						t : toList("027,054,076,078,081,083,085,087,096,097,098,217,238,258,306") ! xr;
						t : "?nС ?v" ! coMask;
						t : list("С","C","с","c") ! coNames;
						t : list("екц","шин") ! incNames;
						t : list("ТН","ТСН") ! expNames;
						t : $FSG_B ! fsignName;
						 
						t : $DrawShape_B ! xdrawShape;
						t : $DrawPoints_B ! xdrawPoints;
						t : $DrawText_B ! xdrawText;
						t : $DrawShape_B + $DrawPoints_B + $DrawText_B ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7130 ! id;
					t : VTM_130 ! name;
					t : Телемеханика ! uname;
					t : 497 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7131 ! id;
					t : VTM_131 ! name;
					t : Термосигнализатор ! uname;
					t : 498 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7132 ! id;
					t : VTM_132 ! name;
					t : УКРМ ! uname;
					t : 504 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7136 ! id;
					t : VTM_136 ! name;
					t : Щит_постоянного_тока ! uname;
					t : 519 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("098,117,125,237") ! xr;

				}
				}
				seq {
				meta {
					t : 7137 ! id;
					t : VTM_137 ! name;
					t : Щиты_собственных_нужд ! uname;
					t : 520 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("098,117,125") ! xr;

				}
				}
				seq {
				meta {
					t : 7138 ! id;
					t : VTM_138 ! name;
					t : РЗА ! uname;
					t : 445 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("030,139,147,153,157,162,167,178,179,180,181,184,185,186,187,188,192,198,221,230,318,321") ! xr;

				}
				}
				seq {
				meta {
					t : 7139 ! id;
					t : VTM_139 ! name;
					t : РЗА_и_ПА_ЛЭП_220,110,35_кВ ! uname;
					t : 449 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("140,143,144,145,146") ! xr;

				}
				}
				seq {
				meta {
					t : 7140 ! id;
					t : VTM_140 ! name;
					t : Основная_защита ! uname;
					t : 386 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("141,142") ! xr;

				}
				}
				seq {
				meta {
					t : 7141 ! id;
					t : VTM_141 ! name;
					t : ПРМД ! uname;
					t : 426 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7142 ! id;
					t : VTM_142 ! name;
					t : Полукомплект_основной_защиты ! uname;
					t : 397 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7143 ! id;
					t : VTM_143 ! name;
					t : Автоматика_и_управление_выкл._ЛЭП_220,110,35_кВ ! uname;
					t : 295 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7144 ! id;
					t : VTM_144 ! name;
					t : Автоматика_и_упр._выкл.,_защиты_ЛЭП_220,110,35 ! uname;
					t : 293 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7145 ! id;
					t : VTM_145 ! name;
					t : РЗАиПА_комбин_функион._ЛЭП_220,110,35_кВ ! uname;
					t : 461 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7146 ! id;
					t : VTM_146 ! name;
					t : Резервная__защита_ЛЭП_220,110,35_кВ ! uname;
					t : 442 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7147 ! id;
					t : VTM_147 ! name;
					t : РЗА_и_ПА_силового_трансформатора ! uname;
					t : 450 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("148,149,150,151,152") ! xr;

				}
				}
				seq {
				meta {
					t : 7148 ! id;
					t : VTM_148 ! name;
					t : Защита_силового_трансформатора ! uname;
					t : 339 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7149 ! id;
					t : VTM_149 ! name;
					t : Автоматика_и_упр._выкл._cил_трансформатора ! uname;
					t : 292 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7150 ! id;
					t : VTM_150 ! name;
					t : Защита_СН_(НН)_силового_трансформатора ! uname;
					t : 340 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7151 ! id;
					t : VTM_151 ! name;
					t : Автоматика_и_упр.выкл.защ.ВН_(СН,НН)_сил ! uname;
					t : 294 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7152 ! id;
					t : VTM_152 ! name;
					t : РЗА_и_ПА_комб.функц.силового_трансф. ! uname;
					t : 447 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7153 ! id;
					t : VTM_153 ! name;
					t : РЗА_ЛЭП_6_(10)кВ,_СВ_6_(10)кВ ! uname;
					t : 452 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("154,155,156") ! xr;

				}
				}
				seq {
				meta {
					t : 7154 ! id;
					t : VTM_154 ! name;
					t : З-ты_ЛЭП_3,6,10,15кВ,_СВ_3,6,10,15кВ ! uname;
					t : 348 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7155 ! id;
					t : VTM_155 ! name;
					t : АУВ_ЛЭП_3,6,10,15кВ,_СВ_3,6,10,15кВ ! uname;
					t : 304 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7156 ! id;
					t : VTM_156 ! name;
					t : АУВ,_з-ты_ЛЭП_3,6,10,15кВ,_СВ_3,6,10,15кВ ! uname;
					t : 305 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7157 ! id;
					t : VTM_157 ! name;
					t : РЗА_БСК ! uname;
					t : 446 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("158,159,160,161") ! xr;

				}
				}
				seq {
				meta {
					t : 7158 ! id;
					t : VTM_158 ! name;
					t : Защиты_БСК ! uname;
					t : 341 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7159 ! id;
					t : VTM_159 ! name;
					t : Авто_и_упр_выкл._БСК ! uname;
					t : 288 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7160 ! id;
					t : VTM_160 ! name;
					t : Авто_и_упр_выкл.,_защиты_БСК ! uname;
					t : 289 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7161 ! id;
					t : VTM_161 ! name;
					t : РЗА_и_ПА_комбин_функц_БСК ! uname;
					t : 448 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7162 ! id;
					t : VTM_162 ! name;
					t : РЗА_СШ_110кВ ! uname;
					t : 455 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("163,164,165") ! xr;

				}
				}
				seq {
				meta {
					t : 7163 ! id;
					t : VTM_163 ! name;
					t : ДЗШ_110кВ ! uname;
					t : 331 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7164 ! id;
					t : VTM_164 ! name;
					t : Логическая_защита__шин_110кВ ! uname;
					t : 370 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7165 ! id;
					t : VTM_165 ! name;
					t : РЗА_СШ_110кВ_комбинир_функц-ти ! uname;
					t : 456 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7166 ! id;
					t : VTM_166 ! name;
					t : Контроль_изоляции,_напряж_СШ_110кВ ! uname;
					t : 363 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7167 ! id;
					t : VTM_167 ! name;
					t : РЗА_СШ_35кВ ! uname;
					t : 457 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("168,169,170,171,177,222") ! xr;

				}
				}
				seq {
				meta {
					t : 7168 ! id;
					t : VTM_168 ! name;
					t : ДЗШ_35_кВ ! uname;
					t : 332 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7169 ! id;
					t : VTM_169 ! name;
					t : Логическая_защита__шин_35кВ ! uname;
					t : 371 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7170 ! id;
					t : VTM_170 ! name;
					t : РЗА_СШ_35кВ_комбинированной_функциональн ! uname;
					t : 458 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7171 ! id;
					t : VTM_171 ! name;
					t : Контроль_изоляции,_напряж_СШ_35кВ ! uname;
					t : 364 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7172 ! id;
					t : VTM_172 ! name;
					t : Разрядник,_ОПН_(ПО_тр-ра) ! uname;
					t : 431 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RZ ! fsignName;
						t : $DrawShape_RZ ! xdrawShape;
						t : $DrawPoints_RZ ! xdrawPoints;
						t : $DrawText_RZ ! xdrawText;
						t : $DrawShape_RZ + $DrawPoints_RZ + $DrawText_RZ ! xdrawSimplex;

				}
				info {
						t : "РВ ?v ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7173 ! id;
					t : VTM_173 ! name;
					t : ДЗШ_6_(10)кВ ! uname;
					t : 333 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7174 ! id;
					t : VTM_174 ! name;
					t : Логическая_защита__шин__6_(10)кВ ! uname;
					t : 369 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7175 ! id;
					t : VTM_175 ! name;
					t : Разрядник,_ОПН_(ПО_ЛЭП) ! uname;
					t : 432 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						 
						t : "ОПН ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_RZ ! fsignName;
						 
						t : $DrawShape_OPN ! xdrawShape;
						t : $DrawPoints_OPN ! xdrawPoints;
						t : $DrawText_OPN ! xdrawText;
						t : $DrawShape_OPN + $DrawPoints_OPN  + $DrawText_OPN  ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7176 ! id;
					t : VTM_176 ! name;
					t : Контроль_изоляции,_напряж_СШ_6_(10)кВ ! uname;
					t : 365 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7177 ! id;
					t : VTM_177 ! name;
					t : Дуговая_защита_шин_3,6,10,15_кВ ! uname;
					t : 334 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7178 ! id;
					t : VTM_178 ! name;
					t : УРОВ_220,110,35_кВ ! uname;
					t : 506 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7179 ! id;
					t : VTM_179 ! name;
					t : УРОВ,_ДЗШ_220,110,35_кВ ! uname;
					t : 507 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7180 ! id;
					t : VTM_180 ! name;
					t : ЦС ! uname;
					t : 516 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7181 ! id;
					t : VTM_181 ! name;
					t : Регистратор_аварийных_событий ! uname;
					t : 441 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("182,183") ! xr;

				}
				}
				seq {
				meta {
					t : 7182 ! id;
					t : VTM_182 ! name;
					t : РАП ! uname;
					t : 439 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7183 ! id;
					t : VTM_183 ! name;
					t : Пуск_РАП ! uname;
					t : 429 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7184 ! id;
					t : VTM_184 ! name;
					t : ОМП ! uname;
					t : 382 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7185 ! id;
					t : VTM_185 ! name;
					t : ЭМБ ! uname;
					t : 522 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7186 ! id;
					t : VTM_186 ! name;
					t : Цепи_ТН ! uname;
					t : 515 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7187 ! id;
					t : VTM_187 ! name;
					t : ЩСН ! uname;
					t : 521 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7188 ! id;
					t : VTM_188 ! name;
					t : РЗА_ТСН ! uname;
					t : 460 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("189,190,191,233,235") ! xr;

				}
				}
				seq {
				meta {
					t : 7189 ! id;
					t : VTM_189 ! name;
					t : Защиты_ТСН ! uname;
					t : 343 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7190 ! id;
					t : VTM_190 ! name;
					t : Автоматика_и_управление_выкл._ТСН ! uname;
					t : 296 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7191 ! id;
					t : VTM_191 ! name;
					t : Автоматика_и_управление_выкл.,_защиты_ТСН ! uname;
					t : 297 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7192 ! id;
					t : VTM_192 ! name;
					t : ПА ! uname;
					t : 393 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("193,196") ! xr;

				}
				}
				seq {
				meta {
					t : 7193 ! id;
					t : VTM_193 ! name;
					t : ПАСК ! uname;
					t : 394 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("194,195") ! xr;

				}
				}
				seq {
				meta {
					t : 7194 ! id;
					t : VTM_194 ! name;
					t : УПАСК ! uname;
					t : 505 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7195 ! id;
					t : VTM_195 ! name;
					t : Полукомпл_выходных_(приемных)_реле_УПАСК ! uname;
					t : 396 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7196 ! id;
					t : VTM_196 ! name;
					t : Локальная_ПА ! uname;
					t : 373 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7197 ! id;
					t : VTM_197 ! name;
					t : ДГК ! uname;
					t : 328 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7198 ! id;
					t : VTM_198 ! name;
					t : РЗА_СВ_(ОВ,_ШОВ)_220,110,35_кВ ! uname;
					t : 453 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("199,200,201") ! xr;

				}
				}
				seq {
				meta {
					t : 7199 ! id;
					t : VTM_199 ! name;
					t : Защиты_СВ_(ОВ,_ШОВ)_220,110,35_кВ ! uname;
					t : 342 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7200 ! id;
					t : VTM_200 ! name;
					t : Автоматика_и_управление_СВ_(ОВ,_ШОВ)_220,110 ! uname;
					t : 298 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7201 ! id;
					t : VTM_201 ! name;
					t : Авто,_упр,_защиты_СВ_(ОВ,_ШОВ)_220,110,35_кВ ! uname;
					t : 290 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("034") ! xr;

				}
				}
				seq {
				meta {
					t : 7202 ! id;
					t : VTM_202 ! name;
					t : ЛЭП_27,5-330_кВ ! uname;
					t : 374 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("203,204,205,206,207,208,209,210,211,246,266,274") ! xr;

				}
				}
				seq {
				meta {
					t : 7203 ! id;
					t : VTM_203 ! name;
					t : Участок_магистрали ! uname;
					t : 511 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("175,212,213,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7204 ! id;
					t : VTM_204 ! name;
					t : Участок_магистрали_воздушной_КЛ ! uname;
					t : 512 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("212,244,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7205 ! id;
					t : VTM_205 ! name;
					t : Участок_магистрали_КЛ_в_земле,_в_кабельном_сооружении,_на_конструктиве ! uname;
					t : 513 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("042,264,271,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7206 ! id;
					t : VTM_206 ! name;
					t : Участок_КЛ_в_воде ! uname;
					t : 510 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("042,264,271,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7207 ! id;
					t : VTM_207 ! name;
					t : Отпайка ! uname;
					t : 389 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("175,212,213,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7208 ! id;
					t : VTM_208 ! name;
					t : ВЧ-обход ! uname;
					t : 317 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("018,027,052,077") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7209 ! id;
					t : VTM_209 ! name;
					t : Отпайка_воздушной_КЛ ! uname;
					t : 390 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("212,244,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7210 ! id;
					t : VTM_210 ! name;
					t : Отпайка_КЛ_в_земле,_в_кабельном_сооружении,_на_конструктиве ! uname;
					t : 392 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("042,264,271,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7211 ! id;
					t : VTM_211 ! name;
					t : Отпайка_КЛ_в_воде ! uname;
					t : 391 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("042,264,271,303,304") ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7212 ! id;
					t : VTM_212 ! name;
					t : Опора ! uname;
					t : 383 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("034,054,057,326") ! xr;
						t : "_/-1/?,Z/0/?" ! xsimplex;
						  
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7213 ! id;
					t : VTM_213 ! name;
					t : Пролеты ! uname;
					t : 427 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("303,304,326") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7214 ! id;
					t : VTM_214 ! name;
					t : Спуск ! uname;
					t : 487 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7215 ! id;
					t : VTM_215 ! name;
					t : РП,_РП_совмещенное_с_ТП ! uname;
					t : 462 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("005,035,039,041,054,057,062,108,109,110,113,116,119,122,126,218,219,220,269,300") ! xr;

				}
				}
				seq {
				meta {
					t : 7217 ! id;
					t : VTM_217 ! name;
					t : Присоединение_разрядников,_ОПН ! uname;
					t : 414 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("034,046,070,175,290") ! xr;

				}
				}
				seq {
				meta {
					t : 7218 ! id;
					t : VTM_218 ! name;
					t : РУ_6_кВ ! uname;
					t : 470 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,054,094,095,098,125,237") ! xr;

				}
				}
				seq {
				meta {
					t : 7219 ! id;
					t : VTM_219 ! name;
					t : РУ_3_кВ ! uname;
					t : 467 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,095,098,125,237") ! xr;

				}
				}
				seq {
				meta {
					t : 7220 ! id;
					t : VTM_220 ! name;
					t : АИИС_КУЭ ! uname;
					t : 302 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7221 ! id;
					t : VTM_221 ! name;
					t : РЗА_СШ__3,6,10,15_кВ ! uname;
					t : 454 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("173,174,176,177,222,223,224,229") ! xr;

				}
				}
				seq {
				meta {
					t : 7222 ! id;
					t : VTM_222 ! name;
					t : ДЗШ ! uname;
					t : 330 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7223 ! id;
					t : VTM_223 ! name;
					t : Логическая_защита_шин ! uname;
					t : 372 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7224 ! id;
					t : VTM_224 ! name;
					t : РЗА_СШ_комбинированной_функциональности ! uname;
					t : 459 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7226 ! id;
					t : VTM_226 ! name;
					t : Выключатель_ТСН ! uname;
					t : 326 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_V ! fsignName;
						 
						t : $DrawShape_V ! xdrawShape;
						t : $DrawPoints_V ! xdrawPoints;
						t : $DrawText_V ! xdrawText;
						t : $DrawShape_V + $DrawPoints_V + $DrawText_V ! xdrawSimplex;

				}
				info {
						t : "В-?v ?p" ! coMask;
						t : list("В ","В -","В  ф") ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_VTSN ! fsignName;

				}
				}
				seq {
				meta {
					t : 7227 ! id;
					t : VTM_227 ! name;
					t : Выключатель_ТН ! uname;
					t : 1055 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7229 ! id;
					t : VTM_229 ! name;
					t : Контроль_изоляции_СШ_3,6,10,15_кВ ! uname;
					t : 362 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7230 ! id;
					t : VTM_230 ! name;
					t : РЗА_ЛЭП,_СВ_(РП,ТП_3-15_кВ) ! uname;
					t : 451 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("154,155,156") ! xr;

				}
				}
				seq {
				meta {
					t : 7233 ! id;
					t : VTM_233 ! name;
					t : Автоматика_и_упр_выкл.,_защиты_ТСН ! uname;
					t : 291 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7234 ! id;
					t : VTM_234 ! name;
					t : Зарядно-подзарядные_агрегаты/устройства ! uname;
					t : 337 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7235 ! id;
					t : VTM_235 ! name;
					t : Устройство_управления_оперативным_током ! uname;
					t : 509 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7236 ! id;
					t : VTM_236 ! name;
					t : ТП ! uname;
					t : 500 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("054,057,062,108,109,116,119,122,126,218,219,220,243,269,300,301,328") ! xr;

				}
				}
				seq {
				meta {
					t : 7237 ! id;
					t : VTM_237 ! name;
					t : Секция_шин ! uname;
					t : 476 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("076,078,081,083,085,087,098,101,217,238,241") ! xr;

				}
				}
				seq {
				meta {
					t : 7238 ! id;
					t : VTM_238 ! name;
					t : Разъединитель_РКТП ! uname;
					t : 438 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("055,079,289") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7239 ! id;
					t : VTM_239 ! name;
					t : Присоединение__разрядников,_ОПН ! uname;
					t : 404 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7241 ! id;
					t : VTM_241 ! name;
					t : Присоединение_уличного_освещения ! uname;
					t : 421 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,034,046,054,116") ! xr;

				}
				}
				seq {
				meta {
					t : 7242 ! id;
					t : VTM_242 ! name;
					t : Защита_от_перенапряжения ! uname;
					t : 338 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7243 ! id;
					t : VTM_243 ! name;
					t : Строительная_часть_ТП ! uname;
					t : 493 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7244 ! id;
					t : VTM_244 ! name;
					t : Кабель/кабельный_пролет ! uname;
					t : 352 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("264,265") ! xr;

				}
				}
				seq {
				meta {
					t : 7245 ! id;
					t : VTM_245 ! name;
					t : Выключатель_реакторный ! uname;
					t : 327 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_V ! fsignName;

				}
				}
				seq {
				meta {
					t : 7246 ! id;
					t : VTM_246 ! name;
					t : Присоединение__секционирующая_(кольцующая)_секционирующий_пункт_ЛЭП ! uname;
					t : 405 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,020,026,034,046,054,055,116,138,175,247") ! xr;

				}
				}
				seq {
				meta {
					t : 7247 ! id;
					t : VTM_247 ! name;
					t : Реклоузер ! uname;
					t : 443 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7248 ! id;
					t : VTM_248 ! name;
					t : Коммутационный_аппарат,_секционирование ! uname;
					t : 357 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7249 ! id;
					t : VTM_249 ! name;
					t : Шкаф_управления_освещением ! uname;
					t : 518 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7250 ! id;
					t : VTM_250 ! name;
					t : Вторичная_коммутация ! uname;
					t : 523 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7251 ! id;
					t : VTM_251 ! name;
					t : Щиты_и_пульты_управления ! uname;
					t : 524 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("125") ! xr;

				}
				}
				seq {
				meta {
					t : 7255 ! id;
					t : VTM_255 ! name;
					t : Портал ! uname;
					t : 531 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("070,290") ! xr;

				}
				}
				seq {
				meta {
					t : 7256 ! id;
					t : VTM_256 ! name;
					t : Омметр ! uname;
					t : 528 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7257 ! id;
					t : VTM_257 ! name;
					t : Присоединение_ОСВ ! uname;
					t : 529 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7258 ! id;
					t : VTM_258 ! name;
					t : Присоединение_секц/ремонтной_перемычки ! uname;
					t : 530 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("313") ! xr;

				}
				}
				seq {
				meta {
					t : 7259 ! id;
					t : VTM_259 ! name;
					t : ЛЭП_3-20_кВ ! uname;
					t : 532 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("203,204,205,206,207,209,210,211,246,266,272,274") ! xr;

				}
				}
				seq {
				meta {
					t : 7260 ! id;
					t : VTM_260 ! name;
					t : ЛЭП_0,4_кВ ! uname;
					t : 533 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("203,204,205,206,207,209,210,211,241,246,266,272,274") ! xr;

				}
				}
				seq {
				meta {
					t : 7261 ! id;
					t : VTM_261 ! name;
					t : РУ_500_кВ ! uname;
					t : 534 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,091,092,093,094,095,125") ! xr;

				}
				}
				seq {
				meta {
					t : 7262 ! id;
					t : VTM_262 ! name;
					t : РУ_330_кВ ! uname;
					t : 535 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,091,092,093,094,095,125") ! xr;

				}
				}
				seq {
				meta {
					t : 7263 ! id;
					t : VTM_263 ! name;
					t : РУ_220_кВ ! uname;
					t : 536 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,054,091,092,093,094,095,125") ! xr;

				}
				}
				seq {
				meta {
					t : 7264 ! id;
					t : VTM_264 ! name;
					t : Переход,_пересечение,_сближение_(участок_воздушной_КЛ) ! uname;
					t : 537 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7265 ! id;
					t : VTM_265 ! name;
					t : Трасса ! uname;
					t : 538 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7266 ! id;
					t : VTM_266 ! name;
					t : Присоединение_отпайки ! uname;
					t : 539 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,020,026,034,046,054,055,116,138,175,247") ! xr;

				}
				}
				seq {
				meta {
					t : 7268 ! id;
					t : VTM_268 ! name;
					t : Двухцепные_опоры_с_линиями_одного_класса_напряжения ! uname;
					t : 540 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7269 ! id;
					t : VTM_269 ! name;
					t : РУ_20_кВ ! uname;
					t : 541 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,095,098,125,237") ! xr;

				}
				}
				seq {
				meta {
					t : 7270 ! id;
					t : VTM_270 ! name;
					t : Трехцепные_опоры ! uname;
					t : 542 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7272 ! id;
					t : VTM_272 ! name;
					t : Присоед._вольтодобавочного_тр-ра ! uname;
					t : 544 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,026,034,046,054,116,175,273") ! xr;

				}
				}
				seq {
				meta {
					t : 7273 ! id;
					t : VTM_273 ! name;
					t : Вольтодобавочный_тр-р ! uname;
					t : 545 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7274 ! id;
					t : VTM_274 ! name;
					t : Участок_ВЛ_в_магистрали/отпайке_КЛ ! uname;
					t : 546 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("212,213") ! xr;

				}
				}
				seq {
				meta {
					t : 7275 ! id;
					t : VTM_275 ! name;
					t : Автоматика_управления_ДК ! uname;
					t : 547 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7276 ! id;
					t : VTM_276 ! name;
					t : ТТ_трансформаторный,_стор._тр-ра ! uname;
					t : 548 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ-?v ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7277 ! id;
					t : VTM_277 ! name;
					t : ТТ_трансформаторный,_стор._СШ ! uname;
					t : 549 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ-?v ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7278 ! id;
					t : VTM_278 ! name;
					t : ТТ_линейный,_стор._СШ ! uname;
					t : 550 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7279 ! id;
					t : VTM_279 ! name;
					t : ТТ_линейный,_стор._ЛЭП ! uname;
					t : 551 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				info {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7280 ! id;
					t : VTM_280 ! name;
					t : ТТ_ТСН,_стор._ТСН ! uname;
					t : 552 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7281 ! id;
					t : VTM_281 ! name;
					t : ТТ_секционный ! uname;
					t : 553 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7282 ! id;
					t : VTM_282 ! name;
					t : ТТ_УКРМ,_стор._УКРМ ! uname;
					t : 554 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7283 ! id;
					t : VTM_283 ! name;
					t : ТТ_ДГР,_стор._ДГР ! uname;
					t : 555 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7284 ! id;
					t : VTM_284 ! name;
					t : ТТ_УКРМ,_стор._СШ ! uname;
					t : 556 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7285 ! id;
					t : VTM_285 ! name;
					t : ТТ_ОСШ,_стор._ОСШ ! uname;
					t : 557 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7286 ! id;
					t : VTM_286 ! name;
					t : ТТ_ОСШ,_стор._рабочей_СШ ! uname;
					t : 558 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7287 ! id;
					t : VTM_287 ! name;
					t : ТТ_ДГР,_стор._СШ ! uname;
					t : 559 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7288 ! id;
					t : VTM_288 ! name;
					t : ТТ_ТСН,_стор._СШ ! uname;
					t : 560 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "ТТ ?p" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_TT ! fsignName;
						t : $DrawShape_TT ! xdrawShape;
						t : $DrawPoints_TT ! xdrawPoints;
						t : $DrawText_TT ! xdrawText;
						t : $DrawShape_TT + $DrawPoints_TT + $DrawText_TT ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7289 ! id;
					t : VTM_289 ! name;
					t : Разъединитель_трансформаторный_ ! uname;
					t : 561 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				info {
						t : "ШР-?v ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7290 ! id;
					t : VTM_290 ! name;
					t : Разъединитель_линейный ! uname;
					t : 562 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RDL ! xdrawShape;
						t : $DrawPoints_RDL! xdrawPoints;
						t : $DrawText_RDL! xdrawText;
						t : $DrawShape_RDL + $DrawPoints_RDL + $DrawText_RDL ! xdrawSimplex;

				}
				info {
						t : "?nШР ?p" ! coMask;

				}
				}
				seq {
				meta {
					t : 7291 ! id;
					t : VTM_291 ! name;
					t : Разъединитель_ТСН ! uname;
					t : 563 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7292 ! id;
					t : VTM_292 ! name;
					t : Разъединитель_секционный ! uname;
					t : 564 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD ! xdrawPoints;
						t : $DrawText_RD ! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7293 ! id;
					t : VTM_293 ! name;
					t : Разъединитель_УКРМ ! uname;
					t : 565 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7294 ! id;
					t : VTM_294 ! name;
					t : Разъединитель_реакторный ! uname;
					t : 566 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7295 ! id;
					t : VTM_295 ! name;
					t : Разъединитель_обходной ! uname;
					t : 567 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7296 ! id;
					t : VTM_296 ! name;
					t : Разъединитель_разрядника ! uname;
					t : 568 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7297 ! id;
					t : VTM_297 ! name;
					t : Разъединитель_ТН ! uname;
					t : 569 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7298 ! id;
					t : VTM_298 ! name;
					t : Разъединитель_плавки_гололеда ! uname;
					t : 570 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7299 ! id;
					t : VTM_299 ! name;
					t : Разъединитель_ДГР ! uname;
					t : 571 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,079") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u ?v ?c" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_ZN ! fsignName;
						 
						t : $DrawShape_RD ! xdrawShape;
						t : $DrawPoints_RD! xdrawPoints;
						t : $DrawText_RD! xdrawText;
						t : $DrawShape_RD + $DrawPoints_RD + $DrawText_RD ! xdrawSimplex;

				}
				}
				seq {
				meta {
					t : 7300 ! id;
					t : VTM_300 ! name;
					t : РУ_15_кВ ! uname;
					t : 572 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,095,098,125,237") ! xr;

				}
				}
				seq {
				meta {
					t : 7301 ! id;
					t : VTM_301 ! name;
					t : Средства_метрологич._обеспечения ! uname;
					t : 573 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7302 ! id;
					t : VTM_302 ! name;
					t : Силовой_кабель_свыше_1000В ! uname;
					t : 574 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7303 ! id;
					t : VTM_303 ! name;
					t : Кабель ! uname;
					t : 581 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7304 ! id;
					t : VTM_304 ! name;
					t : Кабельная_муфта ! uname;
					t : 582 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?,_2/-1/?" ! xsimplex;
						 
						t : "?u" ! coMask;
						t : list() ! coNames;
						t : list() ! incNames;
						t : list() ! expNames;
						t : $FSG_CABLE ! fsignName;

				}
				}
				seq {
				meta {
					t : 7305 ! id;
					t : VTM_305 ! name;
					t : РУ_66_кВ ! uname;
					t : 583 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("001,091,092,093,094,095,125") ! xr;

				}
				}
				seq {
				meta {
					t : 7306 ! id;
					t : VTM_306 ! name;
					t : Присоединение_резистора ! uname;
					t : 638 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("013,021,027,070,307,308,309") ! xr;

				}
				}
				seq {
				meta {
					t : 7307 ! id;
					t : VTM_307 ! name;
					t : Резистор ! uname;
					t : 639 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7308 ! id;
					t : VTM_308 ! name;
					t : Выключатель_резистора ! uname;
					t : 640 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("079,313") ! xr;
						t : "_/-1/?,_1/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7309 ! id;
					t : VTM_309 ! name;
					t : ФНП ! uname;
					t : 642 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7310 ! id;
					t : VTM_310 ! name;
					t : Шунтирующий_реактор ! uname;
					t : 643 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("027,034,106,294,311,312,313,314") ! xr;

				}
				}
				seq {
				meta {
					t : 7311 ! id;
					t : VTM_311 ! name;
					t : Строительная_часть_шунтирующего_реактора ! uname;
					t : 644 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7312 ! id;
					t : VTM_312 ! name;
					t : Переключающее_устройство ! uname;
					t : 645 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7313 ! id;
					t : VTM_313 ! name;
					t : Высоковольтный_ввод ! uname;
					t : 646 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7314 ! id;
					t : VTM_314 ! name;
					t : Преобразовательный_блок ! uname;
					t : 647 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("055,315,316,317") ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7315 ! id;
					t : VTM_315 ! name;
					t : Полупроводниковый_преобразователь ! uname;
					t : 648 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7316 ! id;
					t : VTM_316 ! name;
					t : Трансформатор_преобразователя ! uname;
					t : 649 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7317 ! id;
					t : VTM_317 ! name;
					t : Трансформатор_начального_подмагничивания ! uname;
					t : 650 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;
						t : "_/-1/?,Y/-1/?" ! xsimplex;

				}
				}
				seq {
				meta {
					t : 7318 ! id;
					t : VTM_318 ! name;
					t : РЗА_и_ПА_Шунтирующего_реактора ! uname;
					t : 631 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("140,319,320") ! xr;

				}
				}
				seq {
				meta {
					t : 7319 ! id;
					t : VTM_319 ! name;
					t : Резервная_защита ! uname;
					t : 632 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7320 ! id;
					t : VTM_320 ! name;
					t : Автоматика_и_упр._Шунт._реактора ! uname;
					t : 633 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7321 ! id;
					t : VTM_321 ! name;
					t : РЗА_и_ПА_УКРМ ! uname;
					t : 634 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : toList("322,323") ! xr;

				}
				}
				seq {
				meta {
					t : 7322 ! id;
					t : VTM_322 ! name;
					t : РЗА_и_ПА_комб.функц._УКРМ ! uname;
					t : 635 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7323 ! id;
					t : VTM_323 ! name;
					t : Автоматика_и_упр._УКРМ ! uname;
					t : 636 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7324 ! id;
					t : VTM_324 ! name;
					t : Шкафы_ОРУ ! uname;
					t : 637 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7325 ! id;
					t : VTM_325 ! name;
					t : Средства_малой_механизации ! uname;
					t : 586 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7326 ! id;
					t : VTM_326 ! name;
					t : Ответвление_от_ВЛ_к_вводу ! uname;
					t : 587 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
				seq {
				meta {
					t : 7327 ! id;
					t : VTM_327 ! name;
					t : РУ_150_кВ ! uname;
					t : 604 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;

				}
				body {
						t : list() ! xr;

				}
				}
		}
		}
		seq {
		meta {
			t : Xml ! name;
			t : 0 ! id;
			t : 0 ! type;
			t : Xml ! uname;
			t : 0 ! vcode;

		}
		childs {
				seq {
				meta {
					t : Neutral ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Neutral ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:VoltageLevel rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.BaseVoltage rdf:resource="#_&voltageSid:10000697-0000-0000-c000-0000006d746c&" />
						$c  <cim:VoltageLevel.Bays rdf:resource="#_?sid" />
						  <supa:VoltageLevel.Bays rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.Substation rdf:resource="#_?superSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:VoltageLevel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : Header ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Header ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<?xml version="1.0" encoding="utf-8"?>
						<rdf:RDF xmlns:md="http://iec.ch/TC57/61970-552/ModelDescription/1#" xmlns:cim="http://iec.ch/TC57/2014/CIM-schema-cim16#" xmlns:cim17="http://iec.ch/TC57/2014/CIM-schema-cim17#" xmlns:me="http://monitel.com/2014/schema-cim16#" xmlns:rh="http://rushydro.ru/2015/schema-cim16#" xmlns:so="http://so-ups.ru/2015/schema-cim16#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:supa="http://monitel.com/2019/schema-supa#">
						  <md:FullModel rdf:about="#_?sid">
						<md:Model.created>2019-12-12T07:02:35.459787Z</md:Model.created>
						    <md:Model.version>2019-09-19(CK-11_v16.5.11.165 Aggr,BaseRep,CIMW,DomainSync,eLogClt,Geo,GIS,HIS,IEC104,InfoLift,MAGSM,MAGT,MClipper,MM,MoMS,MVCS,NetTracing,OCMon,ONC,OutEx,OutReq,PGSDB,PL,PLSE,RapidBus,Rep,RT_TP,SCADA,SCADA_DN,SCADA_HS,SNMPc,SwM,TNATerm,TNEq,TP,TPL,TTPL,VA,VMon,WebMag)</md:Model.version>
						  </md:FullModel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : Bottom ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Bottom ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '</rdf:RDF>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : Point ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Point ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Terminal rdf:about="#_?sid">
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						  <cim:Terminal.ConductingEquipment rdf:resource="#_?parentSid" />
						  <cim:Terminal.ConnectivityNode rdf:resource="#_?conSid" />
						  <cim:ACDCTerminal.sequenceNumber>?index</cim:ACDCTerminal.sequenceNumber>
						</cim:Terminal>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : Virt ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Virt ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ConnectivityNode rdf:about="#_?sid">
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConnectivityNode.Terminals rdf:resource="#_?sid" />$
						  <cim:ConnectivityNode.ConnectivityNodeContainer rdf:resource="#_?parentSid" />
						</cim:ConnectivityNode>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_069 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Подстанция ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Substation rdf:about="#_?sid">
						  <me:PowerSystemResource.Diagrams rdf:about="#_?SLDsid" />
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ChildObjects rdf:resource="#_?SLDsid" />
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						  <me:IdentifiedObject.OwnedDiagrams rdf:resource="#_?SLDsid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />$
						  <cim:Substation.isSupplyCenter>true</cim:Substation.isSupplyCenter>
						$c  <cim:Substation.VoltageLevels rdf:resource="#_?sid" />$
						</cim:Substation>
						<me:SubstationSLD rdf:about="#_?SLDsid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?sid" />
						  <me:MonitelDiagram.image>?diagram</me:MonitelDiagram.image>
						  <me:MonitelDiagram.PSRs rdf:resource="#_?sid" />
						$s  <me:MonitelDiagram.PSRs rdf:resource="#_?sid" />$
						  <me:MonitelDiagram.OwnerObject rdf:resource="#_?sid" />
						  <me:MonitelDiagram.Category rdf:resource="#_10001483-0000-0000-c000-0000006d746c" />
						</me:SubstationSLD>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_262 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : РУ-330 ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:VoltageLevel rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.BaseVoltage rdf:resource="#_&voltageSid:1000065c-0000-0000-c000-0000006d746c&" />
						$c  <cim:VoltageLevel.Bays rdf:resource="#_?sid" />$
						  <cim:VoltageLevel.Substation rdf:resource="#_?superSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:VoltageLevel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_110 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : РУ-110 ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:VoltageLevel rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.BaseVoltage rdf:resource="#_&voltageSid:1000063d-0000-0000-c000-0000006d746c&" />
						$c  <cim:VoltageLevel.Bays rdf:resource="#_?sid" />
						  <supa:VoltageLevel.Bays rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.Substation rdf:resource="#_?superSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:VoltageLevel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_113 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : РУ-35 ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:VoltageLevel rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.BaseVoltage rdf:resource="#_&voltageSid:10000662-0000-0000-c000-0000006d746c&" />
						$c  <cim:VoltageLevel.Bays rdf:resource="#_?sid" />$
						  <cim:VoltageLevel.Substation rdf:resource="#_?superSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:VoltageLevel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_109 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : РУ-10 ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:VoltageLevel rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.BaseVoltage rdf:resource="#_&voltageSid:10000637-0000-0000-c000-0000006d746c&" />
						$c  <cim:VoltageLevel.Bays rdf:resource="#_?sid" />$
						  <cim:VoltageLevel.Substation rdf:resource="#_?superSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:VoltageLevel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_218 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : РУ-6 ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:VoltageLevel rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.BaseVoltage rdf:resource="#_&voltageSid:1000067f-0000-0000-c000-0000006d746c&" />
						$c  <cim:VoltageLevel.Bays rdf:resource="#_?sid" />$
						  <cim:VoltageLevel.Substation rdf:resource="#_?superSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:VoltageLevel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_108 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : РУ-0,4 ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:VoltageLevel rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:VoltageLevel.BaseVoltage rdf:resource="#_&voltageSid:10000631-0000-0000-c000-0000006d746c&" />
						$c  <cim:VoltageLevel.Bays rdf:resource="#_?sid" />$
						  <cim:VoltageLevel.Substation rdf:resource="#_?superSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:VoltageLevel>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_125 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Система_шин ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:BusbarSection rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <me:BusbarSection.busbarSystemKind rdf:resource="me:BusbarSystemKind.main2" />
						  </cim:BusbarSection>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_237 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Секция_шин ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:BusbarSection rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <me:BusbarSection.busbarSystemKind rdf:resource="me:BusbarSystemKind.main2" />
						  </cim:BusbarSection>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_117 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Секция_(система)_шин_(собственные_нужды) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:BusbarSection rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <me:BusbarSection.busbarSystemKind rdf:resource="me:BusbarSystemKind.main2" />
						  </cim:BusbarSection>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_119 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Силовой_трансформатор ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:PowerTransformer rdf:about="#_?sid">
						  <me:Equipment.nameplate>-</me:Equipment.nameplate>
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?superSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?superSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						$l  <cim:PowerTransformer.PowerTransformerEnd rdf:about="#_?sid" />$
						  <me:PowerTransformer.isStationSupply>false</me:PowerTransformer.isStationSupply>
						</cim:PowerTransformer>
						$L  <cim:PowerTransformerEnd rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?name</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ChildObjects rdf:resource="#_?pointSid" />
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?xparentSid" />
						  <cim:PowerTransformerEnd.b>0</cim:PowerTransformerEnd.b>
						  <me:PowerTransformerEnd.b0Actual>0</me:PowerTransformerEnd.b0Actual>
						  <cim:PowerTransformerEnd.connectionKind rdf:resource="cim:WindingConnection.Y" />
						  <cim:PowerTransformerEnd.g>0</cim:PowerTransformerEnd.g>
						  <me:PowerTransformerEnd.g0Actual>0</me:PowerTransformerEnd.g0Actual>
						  <cim:PowerTransformerEnd.ratedS>400</cim:PowerTransformerEnd.ratedS>
						  <cim:PowerTransformerEnd.ratedU>?nleveld10</cim:PowerTransformerEnd.ratedU>
						  <cim:PowerTransformerEnd.PowerTransformer rdf:resource="#_?xparentSid" />
						  <cim:TransformerEnd.endNumber>?xindex</cim:TransformerEnd.endNumber>
						  <cim:TransformerEnd.rground>0</cim:TransformerEnd.rground>
						  <cim:TransformerEnd.xground>0</cim:TransformerEnd.xground>
						  <cim:TransformerEnd.Terminal rdf:resource="#_?pointSid" />
						  <cim:TransformerEnd.BaseVoltage rdf:resource="#_?levelSid" />
						</cim:PowerTransformerEnd>$
						<!--  <cim:TransformerMeshImpedance rdf:about="#_?Meshsid">
						    <cim:IdentifiedObject.name>Сопротивление 1 - 2</cim:IdentifiedObject.name>
						    <me:IdentifiedObject.ParentObject rdf:resource="#_?sid" />
						    <me:TransformerMeshImpedance.imK>0</me:TransformerMeshImpedance.imK>
						    <cim:TransformerMeshImpedance.r>100.00000000000003</cim:TransformerMeshImpedance.r>
						    <me:TransformerMeshImpedance.r0Actual>0</me:TransformerMeshImpedance.r0Actual>
						    <me:TransformerMeshImpedance.rActual>0</me:TransformerMeshImpedance.rActual>
						    <me:TransformerMeshImpedance.reK>1</me:TransformerMeshImpedance.reK>
						    <cim:TransformerMeshImpedance.x>200.00000000000006</cim:TransformerMeshImpedance.x>
						    <me:TransformerMeshImpedance.x0Actual>0</me:TransformerMeshImpedance.x0Actual>
						    <me:TransformerMeshImpedance.xActual>0</me:TransformerMeshImpedance.xActual>
						    <cim:TransformerMeshImpedance.FromTransformerEnd rdf:resource="#_?end1sid" />
						    <cim:TransformerMeshImpedance.ToTransformerEnd rdf:resource="#_?end2sid" />
						  </cim:TransformerMeshImpedance> -->
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_084 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТСН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:PowerTransformer rdf:about="#_?sid">
						  <me:Equipment.nameplate>-</me:Equipment.nameplate>
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?superSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?superSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <me:PowerTransformer.isStationSupply>false</me:PowerTransformer.isStationSupply>
						</cim:PowerTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_023 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель_линейный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_290 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель_линейный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_027 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Заземляющий_нож ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:GroundDisconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>true</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:GroundDisconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_055 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Предохранитель ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Fuse rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>true</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Fuse>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_076 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_ЛЭП ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_078 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_трансформатора ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_081 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_ТН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_083 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_ТСН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_098 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_СВ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_091 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_СВ,ШСВ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_092 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_ОСШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_093 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_ОСШВ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_096 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_ДГР ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_087 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_УКРМ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_074 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединени_0.4кВ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_085 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_плавки_гололеда ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_097 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_разрядников_СШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_101 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение/щит_собственных_нужд ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_102 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение/щит_УКРМ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_103 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение/щит_уличного_освещения ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_217 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_разрядников,ОПН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_246 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_секционирующая(кольцующа ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_241 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_уличного_освещения ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_258 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_секц/ремонтной_перемычки ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_266 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение отпайки ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_272 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_вольтодобавочного_тр-ра ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_306 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Присоединение_резистора ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_175 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разрядник,ОПН (ПО ЛЭП) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:SurgeArrester rdf:about="#_?sid">
						  <me:SurgeArrester.type rdf:resource="me:SurgeArresterKind.resistive" />
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:SurgeArrester>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_034 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разрядник, ОПН (ПО не определяются) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:SurgeArrester rdf:about="#_?sid">
						  <me:SurgeArrester.type rdf:resource="me:SurgeArresterKind.resistive" />
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:SurgeArrester>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_070 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разрядник, ОПН (ПО СШ) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:SurgeArrester rdf:about="#_?sid">
						  <me:SurgeArrester.type rdf:resource="me:SurgeArresterKind.resistive" />
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:SurgeArrester>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_172 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разрядник, ОПН (ПО тр-ра) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:SurgeArrester rdf:about="#_?sid">
						  <me:SurgeArrester.type rdf:resource="me:SurgeArresterKind.resistive" />
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:SurgeArrester>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_106 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разрядник, ОПН нейтрали ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:SurgeArrester rdf:about="#_?sid">
						  <me:SurgeArrester.type rdf:resource="me:SurgeArresterKind.resistive" />
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:SurgeArrester>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_014 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ (последствия не расчитываются) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_025 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ резистора, стор.Резистора ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_276 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ трансформаторный, стор. тр-ра ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_277 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ трансформаторный, стор. СШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_279 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ линейный, стор. ЛЭП ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_278 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ линейный, стор. СШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_280 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ ТСН, стор. ТСН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_288 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ ТСН, стор. СШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_281 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ секционный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_282 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ УКРМ, стор. УКРМ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_284 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ УКРМ, стор. СШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_283 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ ДГР, стор. ДГР ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_287 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ ДГР, стор. СШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_285 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ ОСШ, стор. ОСШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_286 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТТ ОСШ, стор. рабочей СШ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_022 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель комп. устройств ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_024 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель обходной ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_068 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель плавки гололеда ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_245 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель реакторный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_308 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель резистора ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_020 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель секционирующий (для ЛЭП) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_028 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель секционный, шиносоединительный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_227 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель ТН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_029 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель трансформатора ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_226 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Выключатель ТСН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_050 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:PotentialTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:PotentialTransformer.type rdf:resource="cim:PotentialTransformerKind.inductive" />
						  <me:PotentialTransformer.windingsCount>3</me:PotentialTransformer.windingsCount>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:PotentialTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_289 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель трансформаторный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_026 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель (последствия не определяются) ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_299 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель ДГР ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_295 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель обходной ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_298 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель плавки гололеда ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_294 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель реакторный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_021 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель резистора ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_238 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель РКТП ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_292 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель секционный ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_297 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель  ТН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_291 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель ТСН ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_293 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель УКРМ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_100 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Разъединитель, в т.ч. выкат.элементы ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_030 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ДГР ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:PetersenCoil rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:EarthFaultCompensator.r>0</cim:EarthFaultCompensator.r>
						  </cim:PetersenCoil>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_202 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ЛЭП 27,5-33 кВ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Line rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$c  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$c  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						</cim:Line>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_259 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ЛЭП 3-20 кВ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Line rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$c  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$c  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						</cim:Line>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_260 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ЛЭП 0,4 кВ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Line rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$c  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$c  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						</cim:Line>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_203 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Участок магистрали ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_204 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Участок магистрали воздушной КЛ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_205 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Участок магистрали КЛ в земле, в кабельн ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_206 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Участок КЛ в воде ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_274 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Участок ВЛ в магистрали/отпайке КЛ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_207 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Отпайка ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_209 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Отпайка воздушной КЛ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_210 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Отпайка КЛ в земле, в кабельном сооружении ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_211 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Отпайка КЛ в воде ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ACLineSegment rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />
						  <supa:IdentifiedObject.ChildObjects rdf:resource="#_?uname" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid0" />
						  <cim:ConductingEquipment.Terminals rdf:resource="#_?uuid1" />
						  <cim:Conductor.length>0</cim:Conductor.length>
						</cim:ACLineSegment>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_212 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Опора ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Pole rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						</cim:Pole>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_213 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Пролет ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Wire rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						</cim:Wire>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_045 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Короткозамыкатель ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<me:GroundSwitch rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>true</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</me:GroundSwitch>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_044 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Отделитель ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Disconnector rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Disconnector>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_094 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Ремонтная перемычка ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Bay rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />
						  <supa:EquipmentContainer.Equipments rdf:resource="#_?uname" />$
						  <cim:Bay.breakerConfiguration rdf:resource="cim:BreakerConfiguration.singleBreaker" />
						  <cim:Bay.busBarConfiguration rdf:resource="me:BusbarConfiguration.noBus" />
						  <cim:Bay.VoltageLevel rdf:resource="#_?parentSid" />
						$v  <cim:ConnectivityNodeContainer.ConnectivityNodes rdf:resource="#_?sid" />$
						</cim:Bay>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_017 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Встроенный ТТ ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:CurrentTransformer rdf:about="#_?sid">
						$p  <cim:AuxiliaryEquipment.Terminal rdf:resource="#_?sid" />$
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:CurrentTransformer>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_004 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Амперметр ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:ProcessedAnalogValue rdf:about="#_?sid">
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						  <cim:MeasurementValue.weight>1</cim:MeasurementValue.weight>
						  <cim:MeasurementValue.MeasurementValueSource rdf:resource="#_10000c71-0000-0000-c000-0000006d746c" />
						  <me:MeasurementValue.HISPartition rdf:resource="#_10000064-0000-0000-c000-0000006d746c" />
						  <me:MeasurementValue.MeasurementValueType rdf:resource="#_10000051-0000-0000-c000-0000006d746c" />
						</cim:ProcessedAnalogValue>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_051 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Счетчик э/э ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Meter rdf:about="#_?sid">
						  <cim:EndDevice.isVirtual>false</cim:EndDevice.isVirtual>
						  <cim:EndDevice.UsagePoint rdf:resource="#_?parentSid" />
						  <me:Meter.isAMR>false</me:Meter.isAMR>
						  <me:Meter.isCommercial>true</me:Meter.isCommercial>
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						</cim:Meter>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_001 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Обходная система шин ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:BusbarSection rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <me:BusbarSection.busbarSystemKind rdf:resource="me:BusbarSystemKind.main2" />
						  </cim:BusbarSection>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_236 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : ТП ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Substation rdf:about="#_?sid">
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <me:PowerSystemResource.Diagrams rdf:about="#_?SLDsid" />
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ChildObjects rdf:resource="#_?SLDsid" />
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						  <me:IdentifiedObject.OwnedDiagrams rdf:resource="#_?SLDsid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />$
						  <cim:Substation.isSupplyCenter>true</cim:Substation.isSupplyCenter>
						$c  <cim:Substation.VoltageLevels rdf:resource="#_?sid" />$
						</cim:Substation>
						<me:SubstationSLD rdf:about="#_?SLDsid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?sid" />
						  <me:MonitelDiagram.image>?diagram</me:MonitelDiagram.image>
						  <me:MonitelDiagram.PSRs rdf:resource="#_?sid" />
						$s  <me:MonitelDiagram.PSRs rdf:resource="#_?sid" />$
						  <me:MonitelDiagram.OwnerObject rdf:resource="#_?sid" />
						  <me:MonitelDiagram.Category rdf:resource="#_10001483-0000-0000-c000-0000006d746c" />
						</me:SubstationSLD>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_215 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : РП ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Substation rdf:about="#_?sid">
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <me:PowerSystemResource.Diagrams rdf:about="#_?SLDsid" />
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						$s  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ChildObjects rdf:resource="#_?SLDsid" />
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						  <me:IdentifiedObject.OwnedDiagrams rdf:resource="#_?SLDsid" />
						$s  <cim:EquipmentContainer.Equipments rdf:resource="#_?sid" />$
						  <cim:Substation.isSupplyCenter>true</cim:Substation.isSupplyCenter>
						$c  <cim:Substation.VoltageLevels rdf:resource="#_?sid" />$
						</cim:Substation>
						<me:SubstationSLD rdf:about="#_?SLDsid">
						  <cim:IdentifiedObject.name>?uname</cim:IdentifiedObject.name>
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?sid" />
						  <me:MonitelDiagram.image>?diagram</me:MonitelDiagram.image>
						  <me:MonitelDiagram.PSRs rdf:resource="#_?sid" />
						$s  <me:MonitelDiagram.PSRs rdf:resource="#_?sid" />$
						  <me:MonitelDiagram.OwnerObject rdf:resource="#_?sid" />
						  <me:MonitelDiagram.Category rdf:resource="#_10001483-0000-0000-c000-0000006d746c" />
						</me:SubstationSLD>
						' ! xmlTemplate;

				}
				}
				seq {
				meta {
					t : VTM_046 ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Коммутационный аппарат ! uname;
					t : 0 ! vcode;

				}
				body {
						t : '<cim:Breaker rdf:about="#_?sid">
						  <cim:Equipment.normallyInService>true</cim:Equipment.normallyInService>
						  <cim:Equipment.EquipmentContainer rdf:resource="#_?parentSid" />
						  <cim:PowerSystemResource.PSRType rdf:resource="#_?subcode" />
						  <cim:IdentifiedObject.name>?coName</cim:IdentifiedObject.name>
						$p  <me:IdentifiedObject.ChildObjects rdf:resource="#_?sid" />$
						  <me:IdentifiedObject.ParentObject rdf:resource="#_?parentSid" />
						$p  <cim:ConductingEquipment.Terminals rdf:resource="#_?sid" />$
						  <cim:ConductingEquipment.BaseVoltage rdf:resource="#_?voltageSid" />
						  <cim:Switch.normalOpen>false</cim:Switch.normalOpen>
						  <cim:Switch.retained>false</cim:Switch.retained>
						</cim:Breaker>
						' ! xmlTemplate;

				}
				}
		}
		}
		seq {
		meta {
			t : X ! name;
			t : 9000 ! id;
			t : -2 ! type;
			t : API ! uname;
			t : 0 ! vcode;
			t : xxx-ref-x ! sid;

		}
		childs {
				seq {
				meta {
					t : Util ! name;
					t : 9000 ! id;
					t : -3 ! type;
					t : Util ! uname;
					t : 0 ! vcode;
					t : xxx-ref-x-util ! sid;

				}
				childs {
						seq {
						meta {
							t : E ! name;
							t : 9001 ! id;
							t : 9001 ! type;
							t : E ! uname;
							t : 0 ! vcode;

						}
						childs {
								seq {
								meta {
									t : Construct ! name;
									t : 99001 ! id;
									t : -3 ! type;
									t : Construct ! uname;
									t : 0 ! vcode;

								}
								childs {
										seq {
										meta {
											t : BusTrans ! name;
											t : 0 ! id;
											t : 0 ! type;
											t : BusTrans ! uname;
											t : 0 ! vcode;

										}
										body {
												t : "t : superUtype('VTM_119') ! transformList,hidden;
												t : f ! xconnected;
												t : filterBy(transformList,this,checkStr) ! myTransList,hidden;
												size(myTransList)=0 : 0 ! stop;
												t : get(myTransList,0) ! myTrans;
												def(myTrans) : getSimplex(myTrans) ! mySimplex;
												undef(mySimplex) : f ! xconnected,stop;
												def(myTrans) : superUtypes(Set.V0.vtmBusListStr) ! myBus;
												undef(myBus) : f ! xconnected,stop;
												def(myBus) : getSimplex(myBus) ! busSimplex;
												undef(busSimplex) : f ! xconnected,stop;
												def(myTrans)&def(myBus)&def(qvoltage) : connect(myBus,myTrans,qvoltage) ! xconnected;
												" ! topoBus_Trans;

										}
										}
								}
								body {
										t : "t : superUtypes(Set.V0.vtmRuListStr) ! ruParent,hidden;
										def(ruParent) : get(ruParent,'qvoltage') ! qvoltage;
										undef(qvoltage) : 0 ! qvoltage;
										" ! setQvoltage;
										t : "def(qvoltage) : list(parent,voltageToXsymbol(qvoltage)+'/-1/'+qvoltage) ! simplex;
										" ! buildBusSimplex;
										t : "t : next($UCounter,#utype) ! tmp;
										" ! nextUCounter;

								}
								}
								seq {
								meta {
									t : Pco ! name;
									t : 0 ! id;
									t : 0 ! type;
									t : Pco ! uname;
									t : 0 ! vcode;

								}
								body {
										t : 't : $buildCoName+"xcoName"+"myUtype"+.parent.#utype+"myUname"+.parent.#uname+"pcoName"+"unkp"+"qvoltage"+qvoltage ! invoke;
										t : "KUKU" ! sysout;
										undef(xcoName) : 0 ! stop;
										t : xcoName ! sysout;
										t : xcoName ! pcoName; 
										t : pcoName ! sysout;
										' ! preparePcoName;

								}
								}
						}
						}
						seq {
						meta {
							t : I ! name;
							t : 9002 ! id;
							t : 9001 ! type;
							t : I ! uname;
							t : 0 ! vcode;

						}
						childs {
								seq {
								meta {
									t : Test ! name;
									t : 1202 ! id;
									t : 1001 ! type;
									t : Test ! uname;
									t : 0 ! vcode;

								}
								body {
										t : -1 ! testObject;
										t : 145 ! x;
										def(y) : x+y ! testObject;

								}
								}
						}
						}
						seq {
						meta {
							t : F ! name;
							t : 9003 ! id;
							t : 9001 ! type;
							t : F ! uname;
							t : 0 ! vcode;

						}
						body {
								t : "t : 2*?0 ! callback;" ! twoMul;

						}
						}
				}
				}
				seq {
				meta {
					t : Check ! name;
					t : 9100 ! id;
					t : -3 ! type;
					t : Проверка ! uname;
					t : 0 ! vcode;
					t : xxx-ref-x-check ! sid;

				}
				childs {
						seq {
						meta {
							t : Stru ! name;
							t : 9110 ! id;
							t : -3 ! type;
							t : Структура ! uname;
							t : 0 ! vcode;

						}
						body {
								t : 0 ! nCheck;
								undef(myUtype)|undef(parentUtype) : 0 ! nCheck,stop;
								t : "Con."+parentUtype ! parentPath;
								not(has(parentPath+".")) : 0 ! nCheck,stop;
								t : parentPath+".xr" ! valuePath;
								not(has(valuePath)) : 0 ! nCheck,stop;
								t : from(valuePath) ! checkList;
								in(checkList,replace(myUtype,"VTM_","")) : 1 : -1 ! nCheck;

						}
						info {
								t : 0 ! nCheck;
								undef(myUtype)|undef(parentUtype) : 0 ! nCheck,stop;
								t : parentUtype ! tmp,sysout;
								t : myUtype ! tmp,sysout;
								t : "Con."+parentUtype ! parentPath;
								t : node(parentPath) ! parentNode;
								undef(parentNode) : 0 ! nCheck,stop;
								isnull(parentNode) : 0 ! nCheck,stop;
								t : .parentNode.xr ! checkList;
								in(checkList,replace(myUtype,"VTM_","")) : 1 : -1 ! nCheck;

						}
						}
				}
				}
				seq {
				meta {
					t : Topo ! name;
					t : 9200 ! id;
					t : Топология ! uname;
					t : 0 ! vcode;
					t : -3 ! type;
					t : xxx-ref-x-topo ! sid;

				}
				childs {
						seq {
						meta {
							t : Simplex ! name;
							t : 9210 ! id;
							t : 0 ! type;
							t : Simplex ! uname;
							t : 0 ! vcode;
							t : xxx-ref-x-topo-simplex ! sid;

						}
						body {
								t : "" ! simplexDesc;
								undef(qvoltage) : 0 ! qvoltage;
								undef(myUtype) : 0 ! stop;
								t : "Con."+myUtype ! myPath;
								not(has(myPath+".")) : 0 ! stop;
								t : myPath+".xsimplex" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! simplexDesc;
								simplexDesc="" : 0 ! stop;
								t : ""+qvoltage ! svoltage;
								t : replace(simplexDesc,"?",svoltage) ! simplexDesc;
								t : replace(simplexDesc,"_",voltageToXsymbol(qvoltage)) ! simplexDesc;

						}
						}
						seq {
						meta {
							t : TopoJfo ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : TopoJfo ! uname;
							t : 0 ! vcode;

						}
						body {
								t : "noop" ! refJfoCode;
								undef(myUtype) : 0 ! stop;
								  
								t : "Con."+myUtype ! myPath;
								not(has(myPath+".")) : 0 ! stop;
								t : myPath+".jfoTopo" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! refJfoCode;

						}
						}
						seq {
						meta {
							t : MakeCt ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : MakeCt ! uname;
							t : 0 ! vcode;

						}
						body {
								t : 't : superUtype("VTM_119") ! xtransList;
								t : superUtypes($VTMBusListStr) ! xbusNode;
								t : ".item.coName="+quote(coName) ! transFilter;
								t : filter(xtransList,transFilter) ! xtransListFor;
								t : list()+xtransListFor ! topoList;
								t : mapflat(filter(rchilds,".item.#vcode>0")+topoList) ! topoList;
								def(xbusNode) : topoList+xbusNode ! topoList;
								' ! makeTopoCt;

						}
						info {
								t : 't : superUtype("VTM_119") ! xtransList;
								t : superUtypes("VTM_125") ! xbusNode;
								t : ".item.coName='"+coName+"'" ! transFilter;
								t : filter(xtransList,transFilter) ! xtransListFor;
								t : list()+xtransListFor ! topoList;
								t : mapflat(filter(rchilds,".item.#vcode>0")+topoList) ! topoList;
								def(xbusNode) : topoList+xbusNode ! topoList;
								' ! makeTopoCt;

						}
						}
						seq {
						meta {
							t : MakeClep ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : MakeClep ! uname;
							t : 0 ! vcode;

						}
						body {
								t : 't : superUtypes($VTMBusListStr) ! xbusNode;
								t : list() ! topoList;
								t : mapflat(filter(rchilds,".item.#vcode>0")+topoList) ! topoList;
								def(xbusNode) : topoList+xbusNode ! topoList;
								' ! makeTopoClep;

						}
						}
						seq {
						meta {
							t : Templates ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : Templates ! uname;
							t : 0 ! vcode;

						}
						body {
								t : "empty" ! refEmptyParam;
								t : Xml. ! myXmlNode;
								t : .myXmlNode.rchilds ! myXmlChilds;
								t : nodesToScope(myXmlChilds,"#name","xmlTemplate") ! refScope;

						}
						}
						seq {
						meta {
							t : MakeCtComplex ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : MakeCtComplex ! uname;
							t : 0 ! vcode;

						}
						body {
								t : 't : superUtype("VTM_119") ! xtransList;
								t : superUtypes($VTMBusListStr) ! xbusNode;
								t : ".item.coName="+quote(coName) ! transFilter;
								t : filter(xtransList,transFilter) ! xtransListFor;
								t : list()+xtransListFor ! topoList;
								t : mapflat(filter(rchilds,".item.#vcode>0")+topoList) ! topoList;
								def(xbusNode) : topoList+xbusNode ! topoList;
								' ! makeTopoCtComplex;

						}
						}
						seq {
						meta {
							t : MakeClepComplex ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : MakeClepComplex ! uname;
							t : 0 ! vcode;

						}
						body {
								t : 't : superUtypes($VTMBusListStr) ! xbusNode;
								t : list() ! topoList;
								t : mapflat(filter(rchilds,".item.#vcode>0")+topoList) ! topoList;
								def(xbusNode) : topoList+xbusNode ! topoList;
								' ! makeTopoClepComplex;

						}
						}
				}
				}
				seq {
				meta {
					t : Names ! name;
					t : 9300 ! id;
					t : -3 ! type;
					t : Имена ! uname;
					t : 0 ! vcode;
					t : xxx-ref-x-names ! sid;

				}
				childs {
						seq {
						meta {
							t : Co ! name;
							t : 9310 ! id;
							t : -3 ! type;
							t : coName ! uname;
							t : 0 ! vcode;
							t : xxx-ref-x-names-co ! sid;

						}
						body {
								t : "UNO" ! refCoName;
								undef(myUtype) : 0 ! stop;
								def(qvoltage) : seqfor(qvoltage,list(t,item/10)) : list(f,"") ! queQvoltage;
								head(queQvoltage) : rhead(queQvoltage) ! nQvoltage;
								head(queQvoltage) : if(
								    'rhead(queQvoltage)=0',
								    'list(t,"")' ,
								    'list(t,""+rhead(queQvoltage)+" кВ")'
								) ! queQvoltage;
								def(pcoName) : list(t,pcoName) : list(f,"") ! quePcoName;
								def(psoName) : list(t,psoName) : list(f,"") ! quePsoName;
								def(connectName) : list(t,connectName) : list(f,"") ! queConnectName;
								head(queConnectName) : replace(rhead(queConnectName),"~","-") ! tilda_connectName;
								head(queConnectName) : replace(rhead(queConnectName),"+","_") ! plus_connectName;
								head(queConnectName) : replace(rhead(queConnectName),"*"," ") ! star_connectName;
								def(myUname) : toupper(trim(replace(myUname,"_"," "))) : "unknown-" ! myUname;
								head(queConnectName) : trim(cutTail(myUname,rhead(queConnectName))) : "" ! xbaseName;
								def(tilda_connectName) : trim(cutTail(xbaseName,tilda_connectName)) ! xbaseName;
								def(plus_connectName) : trim(cutTail(xbaseName,plus_connectName)) ! xbaseName;
								def(star_connectName) : trim(cutTail(xbaseName,star_connectName)) ! xbaseName;
								t : trim(cutTail(xbaseName,"КВ")) ! xbaseName;
								def(nQvoltage) : trim(cutTail(xbaseName,""+nQvoltage)) : "" ! xbaseName;
								  
								  
								t : "Con."+myUtype ! myPath;
								not(has(myPath+".")) : 0 ! stop;
								t : myPath+".fsignName" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! fsignName;
								 
								 
								t : myPath+".coMask" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! coMask;
								t : myPath+".coNames" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! coNames;
								t : myPath+".incNames" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! incNames;
								t : myPath+".expNames" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! expNames;
								 
								t : evals(fsignName) ! tmp;

						}
						}
						seq {
						meta {
							t : So ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : soName ! uname;
							t : 0 ! vcode;
							t : xxx-ref-x-names-so ! sid;

						}
						body {
								undef(myUtype) : 0 ! stop;
								undef(myRchilds) : 0 ! stop;
								 
								t : "Con."+myUtype ! myPath;
								not(has(myPath+".")) : 0 ! stop;
								t : myPath+".fsoName" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! fsoName;
								 
								 
								t : myPath+".expRepSoNames" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! xexpRepSoNames;
								  
								t : evals(fsoName) ! tmp;

						}
						}
				}
				}
				seq {
				meta {
					t : Draw ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Draw ! uname;
					t : 0 ! vcode;

				}
				childs {
						seq {
						meta {
							t : Shape ! name;
							t : 0 ! id;
							t : 0 ! type;
							t : Shape ! uname;
							t : 0 ! vcode;

						}
						body {
								t : 't : "unk-shape" ! tmp;' ! shapeDesc;
								undef(myUtype) : 0 ! stop;
								t : "Con."+myUtype ! myPath;
								not(has(myPath+".")) : 0 ! stop;
								t : myPath+".xdrawSimplex" ! valuePath;
								not(has(valuePath)) : 0 ! stop;
								t : from(valuePath) ! shapeDesc;

						}
						}
				}
				}
		}
		body {
				t : list("setQvoltage","X.Util.E.Construct") ! export;
				t : list("buildBusSimplex","X.Util.E.Construct") ! export;
				t : list("topoBus_Trans","X.Util.E.Construct.BusTrans") ! export;
				t : list("nextUCounter","X.Util.E.Construct") ! export;
				t : list("checkPlace","X.Check.Stru","nCheck") ! export;
				t : list("getSimplexDesc","X.Topo.Simplex","simplexDesc") ! export;
				t : list("buildCoName","X.Names.Co","refCoName") ! export;
				t : list("preparePcoName","X.Util.E.Pco") ! export;
				t : list("xcanvasGrid","Set.U1.Draw.Canvas") ! export;
				t : list("pickShape","X.Draw.Shape","shapeDesc") ! export;
				t : list("buildSoName","X.Names.So","refSoName") ! export;
				t : list("getTopoJfo","X.Topo.TopoJfo","refJfoCode") ! export;
				t : list("makeTopoCt","X.Topo.MakeCt") ! export;
				t : list("makeTopoClep","X.Topo.MakeClep") ! export;
				t : list("loadTemplates","X.Topo.Templates","refScope") ! export;
				t : list("makeTopoCtComplex","X.Topo.MakeCtComplex") ! export;
				t : list("makeTopoClepComplex","X.Topo.MakeClepComplex") ! export;

		}
		}
		seq {
		meta {
			t : Forma ! name;
			t : Форма ! uname;
			t : Forma ! code;
			t : 11 ! type;
			t : 0 ! vcode;
			t : -11 ! id;
			t : xxx-ps-forma ! sid;

		}
		body {
				t : '<h3>Справочник СУПА</h3>' ! qforma,hidden;

		}
		}
}
body {
		t : Set.V0.Ok ! tmp;

}
out {
	    t : t ! eval;
	    t : Forma.qforma ! select;
	    t : text/html ! mime;
	    t : none ! out;
	    t : t ! write;

}
