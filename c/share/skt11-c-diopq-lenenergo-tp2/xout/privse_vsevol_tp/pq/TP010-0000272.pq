meta {
	t : TMD ! name;
	t : TMD ! uname;
	t : TMD ! code;
	t : 0 ! type;
	t : 0.0 ! weight;
	t : 1 ! vcode;
	t : 1 ! number;
	t : 0 ! zone;
	t : 0 ! direct;
	t : skt11-c-diopq-lenenergo-tp2 ! pinchref;
	t : pqDataProvide|inc/dp.jfo ! jfodp;
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
			t : Set ! uname;
			t : 0 ! vcode;
			t : xxx-ps-set ! sid;

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
						t : list( "VTM_091" , "VTM_092" , "VTM_093" , "VTM_098") ! $VCATBusLink;
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
						t : list( "VTM_205" , "VTM_204" , "VTM_041" , "VTM_207" , "VTM_209" ,"VTM_210" , "VTM_211"  , "VTM_203"  , "VTM_206") ! $VCATUch;

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
						t : scope("1100","1000063d-0000-0000-c000-0000006d746c") ! $VoltSids;
						t : set($VoltSids,"3300","1000065c-0000-0000-c000-0000006d746c") ! tmp;
						t : set($VoltSids,"350","10000662-0000-0000-c000-0000006d746c") ! tmp;
						t : set($VoltSids,"100","10000637-0000-0000-c000-0000006d746c") ! tmp;
						t : set($VoltSids,"60","1000067f-0000-0000-c000-0000006d746c") ! tmp;
						t : set($VoltSids,"4","10000631-0000-0000-c000-0000006d746c") ! tmp;

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
				body {
						t : xcounter(1) ! $UCounter;
						t : list() ! $PostList;
						t : invariant() ! $INV;
						t : invariant($INV,"trans!",0) ! tmp;
						t : invariant($INV,"vlevel!",0) ! tmp;
						t : invariant($INV,"bus!",0) ! tmp;
						t : list() ! $RuConstraintList;

				}
				}
				seq {
				meta {
					t : Msg ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Msg ! uname;
					t : 0 ! vcode;

				}
				body {
						t : "Нарушение_структуры: " ! $MsgBadStru;
						t : "Нарушение_структуры_родителя: " ! $MsgBadParentStru;
						t : "Некорректное_наименование: " ! $MsgBadCoName;

				}
				}
				seq {
				meta {
					t : X ! name;
					t : 1004 ! id;
					t : 1001 ! type;
					t : Импорт ! uname;
					t : 0 ! vcode;
					t : xxx-ps-set-x ! sid;

				}
				body {
						t : execPQ(pinchshare+"/inc/suparef-tp.pq") ! hidden,$SupaRef;
						t : importlib($SupaRef) ! tmp;
						  
						t : $xcanvasGrid ! perform;
						  
						t : $loadTemplates+"refScopeVar" ! invoke;
						def(refScopeVar) : set(sucomplex,"templates", refScopeVar) ! tmp;
						t : set(sucomplex,"unusedPoints","W,X,Y,Z") ! tmp;
						t : set(sucomplex,"printCnumber",int(-1)) ! tmp;
						t : set(sucomplex,"complexMask",list()) ! tmp;
						t : set(sucomplex,"nameDelimiter",".") ! tmp;
						t : set(sucomplex,"virtualType","Virt") ! tmp;

				}
				}
		}
		}
		seq {
		meta {
			t : 6cd53764-1d99-4348-b8d0-70bb300e0f34 ! sid;
			t : VTM_236 ! utype;
			t : TP ! name;
			t : ТП-2501 Ф. 362-07 ! uname;
			t : TP010-0000272 ! code;
			t : 1000134e-0000-0000-c000-0000006d746c ! subcode;
			t : 90 ! type;
			t : 0.0 ! weight;
			t : 1 ! vcode;
			t : 0 ! number;
			t : 0 ! zone;
			t : 0 ! direct;
			t : t ! mutual;

		}
		childs {
				seq {
				meta {
					t : 202720002 ! id;
					t : 124e2f5f-82af-4f3a-a14d-d0746c17322c ! sid;
					t : 6cd53764-1d99-4348-b8d0-70bb300e0f34 ! parentsid;
					t : VTM_119 ! utype;
					t : T1 ! name;
					t : Силовой трансформатор Т1 ! uname;
					t : TP010-0000272-01 ! code;
					t : 10000d24-0000-0000-c000-0000006d746c ! subcode;
					t : 90 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;
					t : 0 ! direct;
					t : t ! mutual;

				}
				body {
						t : list(getComplex(parent),'C/-1/100,F/-1/4,W/-1/0') ! usimplex;
						t : $nextUCounter ! perform;
						t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
						not(use) : errMsg+rn ! buffer;
						not(use) : errMsg ! ln,err;
						not(use) : 0 ! use,stop;
						t : invariant($INV,"trans+",1) ! tmp;
						t : 1000 ! #zone;
						t : "trans" ! connectType;
						t : $buildCoName+"coName"+"myUtype"+#utype+"myUname"+#uname ! invoke;
						def(coName) : coName : "" ! connectName;
						t : list() ! topoChain;
						def(coName) : in(coName,"?") : f ! isBadName;
						isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
						isBadName : errCoNameMsg+rn ! buffer;
						isBadName : errCoNameMsg ! ln,err;
						t : fillQname(simplex,toList("coName,connectType")) ! tmp;
						t : 0 ! fence;

				}
				}
				seq {
				meta {
					t : 202720003 ! id;
					t : 9f1febfb-a652-4900-bf16-1aaad41bb999 ! sid;
					t : 6cd53764-1d99-4348-b8d0-70bb300e0f34 ! parentsid;
					t : VTM_109 ! utype;
					t : VC1 ! name;
					t : РУ-10 кВ ТП-2501 ! uname;
					t : TP010-0000272-14 ! code;
					t : x ! subcode;
					t : 90 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;
					t : 0 ! direct;
					t : t ! mutual;

				}
				data {
						t : 100 ! qvoltage;

				}
				childs {
						seq {
						meta {
							t : 202720006 ! id;
							t : 6290a03e-fd57-45bb-9f5e-e0ec41b2bf1a ! sid;
							t : 9f1febfb-a652-4900-bf16-1aaad41bb999 ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS1 ! name;
							t : С-10 кВ ! uname;
							t : TP010-0000272-14-01 ! code;
							t : x ! subcode;
							t : 90 ! type;
							t : 0.0 ! weight;
							t : 1 ! vcode;
							t : 1 ! number;
							t : 0 ! zone;
							t : 0 ! direct;
							t : t ! mutual;

						}
						childs {
								seq {
								meta {
									t : 202720011 ! id;
									t : 31ccc679-5be7-4883-9f05-ccb58e89a62b ! sid;
									t : 6290a03e-fd57-45bb-9f5e-e0ec41b2bf1a ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : яч.1 Л2674-2501 ! uname;
									t : TP010-0000272-14-01-01 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 1 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720027 ! id;
											t : 8fd06a60-53f6-4608-abd9-9d2a13f50ed0 ! sid;
											t : 31ccc679-5be7-4883-9f05-ccb58e89a62b ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : В-10 кВ ! uname;
											t : TP010-0000272-14-01-01-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 100 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720028 ! id;
											t : 8dc7def5-8402-4b9d-9b78-213c47fe6f01 ! sid;
											t : 31ccc679-5be7-4883-9f05-ccb58e89a62b ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : РВ ! uname;
											t : TP010-0000272-14-01-01-21 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 300 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720012 ! id;
									t : 671b5265-07c0-4ad6-a0af-2580d337224c ! sid;
									t : 6290a03e-fd57-45bb-9f5e-e0ec41b2bf1a ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP2 ! name;
									t : яч.3 Л2501-2506 ! uname;
									t : TP010-0000272-14-01-02 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 2 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720026 ! id;
											t : 2373f108-bdc8-42d3-9e86-a79a89286a7e ! sid;
											t : 671b5265-07c0-4ad6-a0af-2580d337224c ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : TP010-0000272-14-01-02-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 100 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720051 ! id;
											t : 48dfc979-ee10-4592-aaec-d8f585aeab09 ! sid;
											t : 671b5265-07c0-4ad6-a0af-2580d337224c ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : РВ ! uname;
											t : TP010-0000272-14-01-02-21 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 300 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720022 ! id;
									t : df8db58b-bf5d-4227-82d2-7d3d293b6c5b ! sid;
									t : 6290a03e-fd57-45bb-9f5e-e0ec41b2bf1a ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP3 ! name;
									t : яч.4 Л2501-2508 ! uname;
									t : TP010-0000272-14-01-03 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 3 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720052 ! id;
											t : 20aefae5-5bf1-432f-919a-b8e2938f62da ! sid;
											t : df8db58b-bf5d-4227-82d2-7d3d293b6c5b ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : В-10 кВ ! uname;
											t : TP010-0000272-14-01-03-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 100 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720025 ! id;
											t : 5af00d4f-3980-4154-893c-d2a1447a545f ! sid;
											t : df8db58b-bf5d-4227-82d2-7d3d293b6c5b ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : РВ ! uname;
											t : TP010-0000272-14-01-03-21 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 300 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720029 ! id;
											t : e40dcb85-6d90-49dd-a0e0-e86cb7cb917a ! sid;
											t : df8db58b-bf5d-4227-82d2-7d3d293b6c5b ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : TP010-0000272-14-01-03-75 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 0 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										childs {
												seq {
												meta {
													t : 202720055 ! id;
													t : 358bd1a4-10a7-42c6-be9a-bc776415c28a ! sid;
													t : e40dcb85-6d90-49dd-a0e0-e86cb7cb917a ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ(ТПЛ-60-5) ! uname;
													t : TP010-0000272-14-01-03-75-05 ! code;
													t : x ! subcode;
													t : 90 ! type;
													t : 0.0 ! weight;
													t : 1 ! vcode;
													t : 1 ! number;
													t : 0 ! zone;
													t : 0 ! direct;
													t : t ! mutual;

												}
												body {
														t : $nextUCounter ! perform;
														t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
														not(use) : errMsg+rn ! buffer;
														not(use) : errMsg ! ln,err;
														not(use) : 0 ! use,stop;
														def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
														t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
														t : $MsgBadStru+pathname+" "+#utype ! errMsg;
														checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
														checked<1 : errMsg ! ln,err;
														too : errMsg+rn ! buffer;
														checked<1 : 0 ! use,stop;
														t : $setQvoltage ! perform;
														t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
														not(mySimplexDesc="") : mySimplexDesc ! simplex;
														def(.parent.connectName) : .parent.connectName : "" ! connectName;
														def(.parent.coName) : .parent.coName : "unk" ! pcoName;
														undef(connectType) : "unk" ! connectType;
														def(.parent.connectType) : .parent.connectType ! connectType;
														def(.parent.soName) : .parent.soName ! soName;
														def(soName)&(connectType="clep") : soName ! pcoName;
														connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
														head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
														undef(qvoltage) : 0 ! qvoltage;
														undef(connectName) : "" ! connectName;
														t : $buildCoName+"coName"
														    +"myUtype"+#utype
														    +"myUname"+#uname
														    +"pcoName"+pcoName
														    +"qvoltage"+qvoltage 
														    +"connectName"+connectName 
														! invoke;
														def(coName) : replace(coName,"~","-") : "unk" ! coName;
														t : replace(coName,"+","_") ! coName;
														t : replace(coName,"*"," ") ! coName;
														def(coName) : in(coName,"?") : f ! isBadName;
														isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
														isBadName : errCoNameMsg+rn ! buffer;
														isBadName : errCoNameMsg ! ln,err;
														not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
														t : 0 ! fence;

												}
												}
										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720013 ! id;
									t : 75ef1298-639d-46f9-8332-be66afa75441 ! sid;
									t : 6290a03e-fd57-45bb-9f5e-e0ec41b2bf1a ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP4 ! name;
									t : яч.5 резерв ! uname;
									t : TP010-0000272-14-01-04 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 4 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720030 ! id;
											t : c7ed97c5-67f4-4961-a655-a21f1c652041 ! sid;
											t : 75ef1298-639d-46f9-8332-be66afa75441 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : В-10 кВ ! uname;
											t : TP010-0000272-14-01-04-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 100 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720031 ! id;
											t : a4b666a8-25b8-475f-a393-b8dfa6930eab ! sid;
											t : 75ef1298-639d-46f9-8332-be66afa75441 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : РВ ! uname;
											t : TP010-0000272-14-01-04-21 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 300 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720032 ! id;
											t : 6ed4bc5f-10bc-41af-b538-dc08d554d8e0 ! sid;
											t : 75ef1298-639d-46f9-8332-be66afa75441 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : РВ ! uname;
											t : TP010-0000272-14-01-04-23 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 2 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										childs {
												seq {
												meta {
													t : 202720057 ! id;
													t : 24a83599-a93b-494e-b6fd-6bec9a897474 ! sid;
													t : 6ed4bc5f-10bc-41af-b538-dc08d554d8e0 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : TP010-0000272-14-01-04-23-01 ! code;
													t : x ! subcode;
													t : 90 ! type;
													t : 0.0 ! weight;
													t : 1 ! vcode;
													t : 1 ! number;
													t : 0 ! zone;
													t : 0 ! direct;
													t : t ! mutual;

												}
												body {
														t : $nextUCounter ! perform;
														t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
														not(use) : errMsg+rn ! buffer;
														not(use) : errMsg ! ln,err;
														not(use) : 0 ! use,stop;
														def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
														t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
														t : $MsgBadStru+pathname+" "+#utype ! errMsg;
														checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
														checked<1 : errMsg ! ln,err;
														too : errMsg+rn ! buffer;
														checked<1 : 0 ! use,stop;
														t : $setQvoltage ! perform;
														t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
														not(mySimplexDesc="") : mySimplexDesc ! simplex;
														def(.parent.connectName) : .parent.connectName : "" ! connectName;
														def(.parent.coName) : .parent.coName : "unk" ! pcoName;
														undef(connectType) : "unk" ! connectType;
														def(.parent.connectType) : .parent.connectType ! connectType;
														def(.parent.soName) : .parent.soName ! soName;
														def(soName)&(connectType="clep") : soName ! pcoName;
														connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
														head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
														undef(qvoltage) : 0 ! qvoltage;
														undef(connectName) : "" ! connectName;
														t : $buildCoName+"coName"
														    +"myUtype"+#utype
														    +"myUname"+#uname
														    +"pcoName"+pcoName
														    +"qvoltage"+qvoltage 
														    +"connectName"+connectName 
														! invoke;
														def(coName) : replace(coName,"~","-") : "unk" ! coName;
														t : replace(coName,"+","_") ! coName;
														t : replace(coName,"*"," ") ! coName;
														def(coName) : in(coName,"?") : f ! isBadName;
														isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
														isBadName : errCoNameMsg+rn ! buffer;
														isBadName : errCoNameMsg ! ln,err;
														not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
														t : 0 ! fence;

												}
												}
										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 300 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720053 ! id;
											t : 0404f848-f183-4098-8122-8623997a49e2 ! sid;
											t : 75ef1298-639d-46f9-8332-be66afa75441 ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : TP010-0000272-14-01-04-75 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 0 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										childs {
												seq {
												meta {
													t : 202720056 ! id;
													t : ac93cb50-2d48-41b9-b447-fb234a681bac ! sid;
													t : 0404f848-f183-4098-8122-8623997a49e2 ! parentsid;
													t : VTM_050 ! utype;
													t : TN1 ! name;
													t : ТН ! uname;
													t : TP010-0000272-14-01-04-75-04 ! code;
													t : x ! subcode;
													t : 90 ! type;
													t : 0.0 ! weight;
													t : 1 ! vcode;
													t : 1 ! number;
													t : 0 ! zone;
													t : 0 ! direct;
													t : t ! mutual;

												}
												body {
														t : $nextUCounter ! perform;
														t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
														not(use) : errMsg+rn ! buffer;
														not(use) : errMsg ! ln,err;
														not(use) : 0 ! use,stop;
														def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
														t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
														t : $MsgBadStru+pathname+" "+#utype ! errMsg;
														checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
														checked<1 : errMsg ! ln,err;
														too : errMsg+rn ! buffer;
														checked<1 : 0 ! use,stop;
														t : $setQvoltage ! perform;
														t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
														not(mySimplexDesc="") : mySimplexDesc ! simplex;
														def(.parent.connectName) : .parent.connectName : "" ! connectName;
														def(.parent.coName) : .parent.coName : "unk" ! pcoName;
														undef(connectType) : "unk" ! connectType;
														def(.parent.connectType) : .parent.connectType ! connectType;
														def(.parent.soName) : .parent.soName ! soName;
														def(soName)&(connectType="clep") : soName ! pcoName;
														connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
														head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
														undef(qvoltage) : 0 ! qvoltage;
														undef(connectName) : "" ! connectName;
														t : $buildCoName+"coName"
														    +"myUtype"+#utype
														    +"myUname"+#uname
														    +"pcoName"+pcoName
														    +"qvoltage"+qvoltage 
														    +"connectName"+connectName 
														! invoke;
														def(coName) : replace(coName,"~","-") : "unk" ! coName;
														t : replace(coName,"+","_") ! coName;
														t : replace(coName,"*"," ") ! coName;
														def(coName) : in(coName,"?") : f ! isBadName;
														isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
														isBadName : errCoNameMsg+rn ! buffer;
														isBadName : errCoNameMsg ! ln,err;
														not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
														t : 0 ! fence;

												}
												}
												seq {
												meta {
													t : 202720058 ! id;
													t : adefa4ef-8831-4ee4-8839-be7ff02af44c ! sid;
													t : 0404f848-f183-4098-8122-8623997a49e2 ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ ! uname;
													t : TP010-0000272-14-01-04-75-05 ! code;
													t : x ! subcode;
													t : 90 ! type;
													t : 0.0 ! weight;
													t : 1 ! vcode;
													t : 1 ! number;
													t : 0 ! zone;
													t : 0 ! direct;
													t : t ! mutual;

												}
												body {
														t : $nextUCounter ! perform;
														t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
														not(use) : errMsg+rn ! buffer;
														not(use) : errMsg ! ln,err;
														not(use) : 0 ! use,stop;
														def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
														t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
														t : $MsgBadStru+pathname+" "+#utype ! errMsg;
														checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
														checked<1 : errMsg ! ln,err;
														too : errMsg+rn ! buffer;
														checked<1 : 0 ! use,stop;
														t : $setQvoltage ! perform;
														t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
														not(mySimplexDesc="") : mySimplexDesc ! simplex;
														def(.parent.connectName) : .parent.connectName : "" ! connectName;
														def(.parent.coName) : .parent.coName : "unk" ! pcoName;
														undef(connectType) : "unk" ! connectType;
														def(.parent.connectType) : .parent.connectType ! connectType;
														def(.parent.soName) : .parent.soName ! soName;
														def(soName)&(connectType="clep") : soName ! pcoName;
														connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
														head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
														undef(qvoltage) : 0 ! qvoltage;
														undef(connectName) : "" ! connectName;
														t : $buildCoName+"coName"
														    +"myUtype"+#utype
														    +"myUname"+#uname
														    +"pcoName"+pcoName
														    +"qvoltage"+qvoltage 
														    +"connectName"+connectName 
														! invoke;
														def(coName) : replace(coName,"~","-") : "unk" ! coName;
														t : replace(coName,"+","_") ! coName;
														t : replace(coName,"*"," ") ! coName;
														def(coName) : in(coName,"?") : f ! isBadName;
														isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
														isBadName : errCoNameMsg+rn ! buffer;
														isBadName : errCoNameMsg ! ln,err;
														not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
														t : 0 ! fence;

												}
												}
										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720033 ! id;
											t : c86abf1b-3524-4d46-aaac-9ca087bdd341 ! sid;
											t : 75ef1298-639d-46f9-8332-be66afa75441 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПК ! uname;
											t : TP010-0000272-14-01-04-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720014 ! id;
									t : f1c13c4a-d50e-4758-ba53-0011bf1c976c ! sid;
									t : 6290a03e-fd57-45bb-9f5e-e0ec41b2bf1a ! parentsid;
									t : VTM_078 ! utype;
									t : CT1 ! name;
									t : яч.2 Присоединение трансформатора Т1 ! uname;
									t : TP010-0000272-14-01-20 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 1 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720023 ! id;
											t : cdfc5acb-7aa3-48d6-b66c-370c9ce63bc1 ! sid;
											t : f1c13c4a-d50e-4758-ba53-0011bf1c976c ! parentsid;
											t : VTM_289 ! utype;
											t : RT1 ! name;
											t : РВ ! uname;
											t : TP010-0000272-14-01-20-21 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												t : 300 ! #zone;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720034 ! id;
											t : e1584e71-66b3-4833-8c57-0e0b8801849c ! sid;
											t : f1c13c4a-d50e-4758-ba53-0011bf1c976c ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПК ! uname;
											t : TP010-0000272-14-01-20-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "ct" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										def(.parent.coName) : .parent.coName : "unk" ! pcoName;
										def(.parent.soName) : .parent.soName ! soName;
										undef(qvoltage) : 0 ! qvoltage;
										t : $buildCoName+"coName"
										    +"myUtype"+#utype
										    +"myUname"+#uname
										    +"pcoName"+pcoName
										    +"qvoltage"+qvoltage 
										! invoke;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720015 ! id;
									t : f758b63c-11b0-4f95-bac8-a0dbbca04790 ! sid;
									t : 6290a03e-fd57-45bb-9f5e-e0ec41b2bf1a ! parentsid;
									t : VTM_217 ! utype;
									t : CRZ1 ! name;
									t : яч.2 Присоединение разрядников ! uname;
									t : TP010-0000272-14-01-70 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 1 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720054 ! id;
											t : 57943974-da65-46ae-b1cf-88875da9af4d ! sid;
											t : f758b63c-11b0-4f95-bac8-a0dbbca04790 ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : Разрядник ! uname;
											t : TP010-0000272-14-01-70-70 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "crz" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										def(.parent.coName) : .parent.coName : "unk" ! pcoName;
										def(.parent.soName) : .parent.soName ! soName;
										undef(qvoltage) : 0 ! qvoltage;
										t : $buildCoName+"coName"
										    +"myUtype"+#utype
										    +"myUname"+#uname
										    +"pcoName"+pcoName
										    +"qvoltage"+qvoltage 
										! invoke;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
						}
						body {
								t : $nextUCounter ! perform;
								t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
								not(use) : errMsg+rn ! buffer;
								not(use) : errMsg ! ln,err;
								not(use) : 0 ! use,stop;
								t : 10 ! #zone;
								t : "bus" ! connectType;
								t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
								t : $MsgBadStru+pathname+" "+#utype ! errMsg;
								checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
								checked<1 : errMsg ! ln,err;
								too : errMsg+rn ! buffer;
								checked<1 : 0 ! use,stop;
								t : $setQvoltage ! perform;
								t : $buildBusSimplex ! perform;
								def(.parent.coName) : .parent.coName : "unk" ! pcoName;
								undef(connectType) : "unk" ! connectType;
								def(.parent.connectType) : .parent.connectType ! connectType;
								def(.parent.soName) : .parent.soName ! soName;
								def(soName)&(connectType="clep") : soName ! pcoName;
								connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
								head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
								undef(qvoltage) : 0 ! qvoltage;
								undef(connectName) : "" ! connectName;
								t : $buildCoName+"coName"
								    +"myUtype"+#utype
								    +"myUname"+#uname
								    +"pcoName"+pcoName
								    +"qvoltage"+qvoltage 
								    +"connectName"+connectName 
								! invoke;
								def(coName) : replace(coName,"~","-") : "unk" ! coName;
								t : replace(coName,"+","_") ! coName;
								t : replace(coName,"*"," ") ! coName;
								t : list() ! topoChain;
								def(coName) : in(coName,"?") : f ! isBadName;
								isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
								isBadName : errCoNameMsg+rn ! buffer;
								isBadName : errCoNameMsg ! ln,err;
								t : invariant($INV,"bus+",1) ! tmp;
								t : invariant($INV,"bus."+qvoltage+"+",1) ! tmp;
								t : invariant($INV,"vlevel","") ! vlevelsNum;
								t : list() ! $RuConstraintList;
								t : buildBusArena(peekArena(),"Xbus-"+#name,"",1,"hor") ! myArena;
								t : addArenaElement(myArena,simplex,"center") ! myArenaElement;
								t : constraint("yequals_tomax","xy",0) ! myConstraintY;
								t : econstraint(myConstraintY,myArenaElement) ! myEConstraintY;
								t : constraintpin("bus",myEConstraintY,myArena) ! myConstraintPin;
								t : addConstraintPin(myArena,myConstraintPin) ! tmp;
								t : pushArena(myArena) ! tmp;
								t : fillQname(simplex,toList("coName,connectType,qvoltage")) ! tmp;
								t : 0 ! fence;
								t : postArenaItems(myArena) ! tmp;
								t : dropArena() ! tmp;

						}
						}
				}
				body {
						t : invariant($INV,"vlevel+",1) ! tmp;
						t : invariant($INV,"vlevel."+qvoltage+"+",1) ! tmp;
						t : getComplex(parent) ! vcomplex;
						t : invariant($INV,"vlevel","") ! vlevelsNum;
						t : list() ! $RuConstraintList;
						vlevelsNum=1 : buildArena($NorthArena,complex,"",1,"horflowc") ! myArena;
						vlevelsNum>1 : buildArena($SouthArena,complex,"",1,"horflowc") ! myArena;
						t : pushArena(myArena) ! tmp;
						t : fillQname(complex,toList("qvoltage")) ! tmp;
						t : 0 ! fence;
						t : dropComplex() ! tmp;
						t : postArenaItems(myArena) ! tmp;
						t : constraint("yequals_tomax","xy",0) ! myConstraintBus;
						t : javaFunc(myArena,"addGroupPins",list("bus",myConstraintBus)) ! tmp;
						t : javaFunc(myArena,"applyGroupConstraint","bus") ! tmp;
						t : dropArena() ! tmp;

				}
				}
				seq {
				meta {
					t : 202720001 ! id;
					t : 22b76fd8-daa5-4a41-ad09-fe57ab0b1be9 ! sid;
					t : 6cd53764-1d99-4348-b8d0-70bb300e0f34 ! parentsid;
					t : VTM_108 ! utype;
					t : VF1 ! name;
					t : РУ-0,4 кВ ТП2501 ! uname;
					t : TP010-0000272-16 ! code;
					t : x ! subcode;
					t : 90 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;
					t : 0 ! direct;
					t : t ! mutual;

				}
				data {
						t : 4 ! qvoltage;

				}
				childs {
						seq {
						meta {
							t : 202720007 ! id;
							t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! sid;
							t : 22b76fd8-daa5-4a41-ad09-fe57ab0b1be9 ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS1 ! name;
							t : С-0,4 кВ ! uname;
							t : TP010-0000272-16-01 ! code;
							t : x ! subcode;
							t : 90 ! type;
							t : 0.0 ! weight;
							t : 1 ! vcode;
							t : 1 ! number;
							t : 0 ! zone;
							t : 0 ! direct;
							t : t ! mutual;

						}
						childs {
								seq {
								meta {
									t : 202720009 ! id;
									t : 1f26bd1b-ab84-43d1-bb6b-3e3e65ebdbbc ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : КЛ-0,4 кВ Л1 ! uname;
									t : TP010-0000272-16-01-01 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 1 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720035 ! id;
											t : 5284e8a8-32db-4495-8ff9-fc14a53b0666 ! sid;
											t : 1f26bd1b-ab84-43d1-bb6b-3e3e65ebdbbc ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-01-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720036 ! id;
											t : 77b4dd90-4b05-45fa-96c9-31e87a8ffec7 ! sid;
											t : 1f26bd1b-ab84-43d1-bb6b-3e3e65ebdbbc ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000272-16-01-01-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720016 ! id;
									t : 9ee7837e-aefa-47f3-a4eb-71f4ef045885 ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP2 ! name;
									t : КЛ-0,4 кВ Л2 ! uname;
									t : TP010-0000272-16-01-02 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 2 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720037 ! id;
											t : 6b33f1f2-3dc0-4067-b412-149d816de140 ! sid;
											t : 9ee7837e-aefa-47f3-a4eb-71f4ef045885 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-02-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720038 ! id;
											t : 5bb383a1-fbbb-4ccf-987d-e8d4d2f24fa4 ! sid;
											t : 9ee7837e-aefa-47f3-a4eb-71f4ef045885 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000272-16-01-02-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720017 ! id;
									t : 75150945-1023-4ea6-9428-d86ad265c310 ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP3 ! name;
									t : КЛ-0,4 кВ Л3 ! uname;
									t : TP010-0000272-16-01-03 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 3 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720039 ! id;
											t : 423e562e-0fce-4e55-87fb-de5f18629b67 ! sid;
											t : 75150945-1023-4ea6-9428-d86ad265c310 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-03-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720040 ! id;
											t : 6c9da425-f99d-4645-be10-fe5058087aed ! sid;
											t : 75150945-1023-4ea6-9428-d86ad265c310 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000272-16-01-03-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720018 ! id;
									t : 0536e534-f9f5-4ed3-80f4-771d6f87371f ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP4 ! name;
									t : КЛ-0,4 кВ Л4 ! uname;
									t : TP010-0000272-16-01-04 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 4 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720041 ! id;
											t : e50931b5-a5ae-46ba-8e30-9b10f2725663 ! sid;
											t : 0536e534-f9f5-4ed3-80f4-771d6f87371f ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-04-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720042 ! id;
											t : 66363f74-e938-48ed-ad5f-c402beec339c ! sid;
											t : 0536e534-f9f5-4ed3-80f4-771d6f87371f ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000272-16-01-04-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720019 ! id;
									t : c103ef49-9080-4a38-ab68-0e05b621779f ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP5 ! name;
									t : КЛ-0,4 кВ Л5 ! uname;
									t : TP010-0000272-16-01-05 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 5 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720043 ! id;
											t : 58631a1f-cef6-4a48-b0e8-23083c64ff4d ! sid;
											t : c103ef49-9080-4a38-ab68-0e05b621779f ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-05-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720044 ! id;
											t : 04f10dea-b2ca-4db3-8307-17cddb6990f7 ! sid;
											t : c103ef49-9080-4a38-ab68-0e05b621779f ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000272-16-01-05-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720020 ! id;
									t : 059b4550-a08b-44d1-a0a7-750345926aba ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP6 ! name;
									t : КЛ-0,4 кВ Л6 ! uname;
									t : TP010-0000272-16-01-06 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 6 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720045 ! id;
											t : ceb8ef60-892f-4a30-b0eb-7fb79ce063dc ! sid;
											t : 059b4550-a08b-44d1-a0a7-750345926aba ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-06-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720046 ! id;
											t : 88b09cf6-0061-49c6-a543-e99e30ade164 ! sid;
											t : 059b4550-a08b-44d1-a0a7-750345926aba ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000272-16-01-06-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720021 ! id;
									t : 3caf6d85-c57b-4d70-903b-877a48e4ce39 ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP7 ! name;
									t : КЛ-0,4 кВ Л7 ! uname;
									t : TP010-0000272-16-01-07 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 7 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720024 ! id;
											t : f38af2d5-e3f4-4469-9858-61f655ffd5a4 ! sid;
											t : 3caf6d85-c57b-4d70-903b-877a48e4ce39 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-07-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720047 ! id;
											t : 1bf1a08e-a6ec-4a96-8d1a-3ce411547dea ! sid;
											t : 3caf6d85-c57b-4d70-903b-877a48e4ce39 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000272-16-01-07-85 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										t : map(rchilds,".item.#uname") ! myRchilds;
										size(myRchilds)<2 : "" ! soName;
										undef(soName) : $buildSoName+"soName"+"myUtype"+#utype+"myRchilds"+myRchilds ! invoke;
										def(soName) : trim(replace(soName,"-","~")) : "unk" ! soName;
										t : replace(soName,"_","+") ! soName;
										t : replace(soName," ","*") ! soName;
										soName="" : rhead(split(#uname," "))  ! soName;
										t : soName ! coName;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 202720010 ! id;
									t : 828dbb30-f745-4ef7-b849-06b2010d6d6b ! sid;
									t : 1125d954-1d73-45dc-aa6c-da0563bd8830 ! parentsid;
									t : VTM_078 ! utype;
									t : CT1 ! name;
									t : Присоединение трансформатора Т1 ! uname;
									t : TP010-0000272-16-01-20 ! code;
									t : x ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 1 ! number;
									t : 0 ! zone;
									t : 0 ! direct;
									t : t ! mutual;

								}
								childs {
										seq {
										meta {
											t : 202720048 ! id;
											t : a83a9d5e-f5e9-4286-a3a3-87294c24a653 ! sid;
											t : 828dbb30-f745-4ef7-b849-06b2010d6d6b ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-20-10 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720049 ! id;
											t : 3738f68e-34eb-4b66-a924-8fbe4a26ddf4 ! sid;
											t : 828dbb30-f745-4ef7-b849-06b2010d6d6b ! parentsid;
											t : VTM_046 ! utype;
											t : CA2 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000272-16-01-20-21 ! code;
											t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 1 ! vcode;
											t : 2 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
										seq {
										meta {
											t : 202720050 ! id;
											t : 06256685-b91a-47a1-aae8-d5b7ca5e9c84 ! sid;
											t : 828dbb30-f745-4ef7-b849-06b2010d6d6b ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : TP010-0000272-16-01-20-75 ! code;
											t : x ! subcode;
											t : 90 ! type;
											t : 0.0 ! weight;
											t : 0 ! vcode;
											t : 1 ! number;
											t : 0 ! zone;
											t : 0 ! direct;
											t : t ! mutual;

										}
										childs {
												seq {
												meta {
													t : 202720059 ! id;
													t : 9153a2eb-6e16-4bd6-b457-1ff0074f678c ! sid;
													t : 06256685-b91a-47a1-aae8-d5b7ca5e9c84 ! parentsid;
													t : VTM_014 ! utype;
													t : TT1 ! name;
													t : ТТ ! uname;
													t : TP010-0000272-16-01-20-75-05 ! code;
													t : x ! subcode;
													t : 90 ! type;
													t : 0.0 ! weight;
													t : 1 ! vcode;
													t : 1 ! number;
													t : 0 ! zone;
													t : 0 ! direct;
													t : t ! mutual;

												}
												body {
														t : $nextUCounter ! perform;
														t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
														not(use) : errMsg+rn ! buffer;
														not(use) : errMsg ! ln,err;
														not(use) : 0 ! use,stop;
														def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
														t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
														t : $MsgBadStru+pathname+" "+#utype ! errMsg;
														checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
														checked<1 : errMsg ! ln,err;
														too : errMsg+rn ! buffer;
														checked<1 : 0 ! use,stop;
														t : $setQvoltage ! perform;
														t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
														not(mySimplexDesc="") : mySimplexDesc ! simplex;
														def(.parent.connectName) : .parent.connectName : "" ! connectName;
														def(.parent.coName) : .parent.coName : "unk" ! pcoName;
														undef(connectType) : "unk" ! connectType;
														def(.parent.connectType) : .parent.connectType ! connectType;
														def(.parent.soName) : .parent.soName ! soName;
														def(soName)&(connectType="clep") : soName ! pcoName;
														connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
														head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
														undef(qvoltage) : 0 ! qvoltage;
														undef(connectName) : "" ! connectName;
														t : $buildCoName+"coName"
														    +"myUtype"+#utype
														    +"myUname"+#uname
														    +"pcoName"+pcoName
														    +"qvoltage"+qvoltage 
														    +"connectName"+connectName 
														! invoke;
														def(coName) : replace(coName,"~","-") : "unk" ! coName;
														t : replace(coName,"+","_") ! coName;
														t : replace(coName,"*"," ") ! coName;
														def(coName) : in(coName,"?") : f ! isBadName;
														isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
														isBadName : errCoNameMsg+rn ! buffer;
														isBadName : errCoNameMsg ! ln,err;
														not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
														t : 0 ! fence;

												}
												}
										}
										body {
												t : $nextUCounter ! perform;
												t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
												not(use) : errMsg+rn ! buffer;
												not(use) : errMsg ! ln,err;
												not(use) : 0 ! use,stop;
												def(.parent.connectType) : .parent.connectType : "unk" ! connectType;
												t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
												t : $MsgBadStru+pathname+" "+#utype ! errMsg;
												checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
												checked<1 : errMsg ! ln,err;
												too : errMsg+rn ! buffer;
												checked<1 : 0 ! use,stop;
												t : $setQvoltage ! perform;
												t : $getSimplexDesc+"mySimplexDesc"+"myUtype"+#utype+"qvoltage"+qvoltage ! invoke;
												not(mySimplexDesc="") : mySimplexDesc ! simplex;
												def(.parent.connectName) : .parent.connectName : "" ! connectName;
												def(.parent.coName) : .parent.coName : "unk" ! pcoName;
												undef(connectType) : "unk" ! connectType;
												def(.parent.connectType) : .parent.connectType ! connectType;
												def(.parent.soName) : .parent.soName ! soName;
												def(soName)&(connectType="clep") : soName ! pcoName;
												connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
												head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
												undef(qvoltage) : 0 ! qvoltage;
												undef(connectName) : "" ! connectName;
												t : $buildCoName+"coName"
												    +"myUtype"+#utype
												    +"myUname"+#uname
												    +"pcoName"+pcoName
												    +"qvoltage"+qvoltage 
												    +"connectName"+connectName 
												! invoke;
												def(coName) : replace(coName,"~","-") : "unk" ! coName;
												t : replace(coName,"+","_") ! coName;
												t : replace(coName,"*"," ") ! coName;
												def(coName) : in(coName,"?") : f ! isBadName;
												isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
												isBadName : errCoNameMsg+rn ! buffer;
												isBadName : errCoNameMsg ! ln,err;
												not(isnull(simplex)) : fillQname(simplex,toList("coName,connectType,soName,qvoltage")) ! tmp;
												t : 0 ! fence;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "unk" ! connectType;
										t : "ct" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! scomplex;
										def(.parent.coName) : .parent.coName : "unk" ! pcoName;
										def(.parent.soName) : .parent.soName ! soName;
										undef(qvoltage) : 0 ! qvoltage;
										t : $buildCoName+"coName"
										    +"myUtype"+#utype
										    +"myUname"+#uname
										    +"pcoName"+pcoName
										    +"qvoltage"+qvoltage 
										! invoke;
										def(coName) : coName : "" ! connectName;
										t : list() ! topoChain;
										t : coindex(#uname,list("яч.","яч")) ! coIndexObject;
										def(coName) : in(coName,"?") : f ! isBadName;
										isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
										isBadName : errCoNameMsg+rn ! buffer;
										isBadName : errCoNameMsg ! ln,err;
										t : invariant($INV,"bus."+qvoltage+"."+.parent.#name+"+",1) ! tmp;
										t : set(complex,"connectType",connectType) ! tmp;
										connectType="clep" : addArrowSimplex(complex) ! arrowSimplex;
										def(arrowSimplex)&def(coName) : get(arrowSimplex,"qname") ! arrowQname;
										def(arrowQname) : set(arrowQname,"coName",coName) ! tmp;
										def(arrowQname)&def(qvoltage) : set(arrowQname,"qvoltage",qvoltage) ! tmp;
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : jfo("GC") ! myGC;
										t : 0 ! fence;
										not(isnull(complex)) : size(getRsimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildStruArena(peekArena(),complex,myGC,0,getRsimplexes(complex)) ! myArena;
										def(myArena)&(connectType="clep") : applyOperator(myArena,L2MapY) ! tmp;
										def(myArena)&(connectType="csv") : applyOperator(myArena,L2Rotate1) ! tmp;
										def(myArena)&(connectType="csv") : javaFunc(myArena,"setAngles",int(180)) ! tmp;
										def(myArena) : set(myArena,"parentArena",peekArena()) ! tmp;
										t : "here" ! herePlace;
										def(myArena) : get(myArena,"placePath") : "" ! myPlacePath;
										in(myPlacePath,"south")&(connectType="ct")  : "there" ! herePlace;
										def(myArena) : addArenaElement(peekArena(),myArena,herePlace) ! tmp;
										connectType="csv" : moveArenaAfterFirst(myArena) ! tmp;
										def(myArena) : postArenaItems(myArena) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
						}
						body {
								t : $nextUCounter ! perform;
								t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
								not(use) : errMsg+rn ! buffer;
								not(use) : errMsg ! ln,err;
								not(use) : 0 ! use,stop;
								t : 10 ! #zone;
								t : "bus" ! connectType;
								t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
								t : $MsgBadStru+pathname+" "+#utype ! errMsg;
								checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
								checked<1 : errMsg ! ln,err;
								too : errMsg+rn ! buffer;
								checked<1 : 0 ! use,stop;
								t : $setQvoltage ! perform;
								t : $buildBusSimplex ! perform;
								def(.parent.coName) : .parent.coName : "unk" ! pcoName;
								undef(connectType) : "unk" ! connectType;
								def(.parent.connectType) : .parent.connectType ! connectType;
								def(.parent.soName) : .parent.soName ! soName;
								def(soName)&(connectType="clep") : soName ! pcoName;
								connectType="trans" : nfrom(cutTail(#uname,connectName)) : list(f,0) ! qvoltageBlist;
								head(qvoltageBlist) : int(get(qvoltageBlist,1)*10) ! qvoltage;
								undef(qvoltage) : 0 ! qvoltage;
								undef(connectName) : "" ! connectName;
								t : $buildCoName+"coName"
								    +"myUtype"+#utype
								    +"myUname"+#uname
								    +"pcoName"+pcoName
								    +"qvoltage"+qvoltage 
								    +"connectName"+connectName 
								! invoke;
								def(coName) : replace(coName,"~","-") : "unk" ! coName;
								t : replace(coName,"+","_") ! coName;
								t : replace(coName,"*"," ") ! coName;
								t : list() ! topoChain;
								def(coName) : in(coName,"?") : f ! isBadName;
								isBadName : $MsgBadCoName+pathname+" "+#utype ! errCoNameMsg;
								isBadName : errCoNameMsg+rn ! buffer;
								isBadName : errCoNameMsg ! ln,err;
								t : invariant($INV,"bus+",1) ! tmp;
								t : invariant($INV,"bus."+qvoltage+"+",1) ! tmp;
								t : invariant($INV,"vlevel","") ! vlevelsNum;
								t : list() ! $RuConstraintList;
								t : buildBusArena(peekArena(),"Xbus-"+#name,"",1,"hor") ! myArena;
								t : addArenaElement(myArena,simplex,"center") ! myArenaElement;
								t : constraint("yequals_tomax","xy",0) ! myConstraintY;
								t : econstraint(myConstraintY,myArenaElement) ! myEConstraintY;
								t : constraintpin("bus",myEConstraintY,myArena) ! myConstraintPin;
								t : addConstraintPin(myArena,myConstraintPin) ! tmp;
								t : pushArena(myArena) ! tmp;
								t : fillQname(simplex,toList("coName,connectType,qvoltage")) ! tmp;
								t : 0 ! fence;
								t : postArenaItems(myArena) ! tmp;
								t : dropArena() ! tmp;

						}
						}
				}
				body {
						t : invariant($INV,"vlevel+",1) ! tmp;
						t : invariant($INV,"vlevel."+qvoltage+"+",1) ! tmp;
						t : getComplex(parent) ! vcomplex;
						t : invariant($INV,"vlevel","") ! vlevelsNum;
						t : list() ! $RuConstraintList;
						vlevelsNum=1 : buildArena($NorthArena,complex,"",1,"horflowc") ! myArena;
						vlevelsNum>1 : buildArena($SouthArena,complex,"",1,"horflowc") ! myArena;
						t : pushArena(myArena) ! tmp;
						t : fillQname(complex,toList("qvoltage")) ! tmp;
						t : 0 ! fence;
						t : dropComplex() ! tmp;
						t : postArenaItems(myArena) ! tmp;
						t : constraint("yequals_tomax","xy",0) ! myConstraintBus;
						t : javaFunc(myArena,"addGroupPins",list("bus",myConstraintBus)) ! tmp;
						t : javaFunc(myArena,"applyGroupConstraint","bus") ! tmp;
						t : dropArena() ! tmp;

				}
				}
				seq {
				meta {
					t : 202720004 ! id;
					t : 7bef10a9-16b9-408d-bb34-3a91790d2279 ! sid;
					t : 6cd53764-1d99-4348-b8d0-70bb300e0f34 ! parentsid;
					t : VTM_328 ! utype;
					t : Z_BUILD1 ! name;
					t : Здания ! uname;
					t : TP010-0000272-30 ! code;
					t : x ! subcode;
					t : 90 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;
					t : 0 ! direct;
					t : 1 ! ignore;

				}
				childs {
						seq {
						meta {
							t : 202720008 ! id;
							t : bafb515a-dfff-49e0-be04-623bc045eaca ! sid;
							t : 7bef10a9-16b9-408d-bb34-3a91790d2279 ! parentsid;
							t : VTM_330 ! utype;
							t : VTM_330_1 ! name;
							t : Строительная часть ЗТП-2501 ! uname;
							t : TP010-0000272-30-02 ! code;
							t : x ! subcode;
							t : 90 ! type;
							t : 0.0 ! weight;
							t : 1 ! vcode;
							t : 1 ! number;
							t : 0 ! zone;
							t : 0 ! direct;
							t : 1 ! ignore;

						}
						}
				}
				}
				seq {
				meta {
					t : 202720005 ! id;
					t : c43c8cc3-da6c-419b-a3a2-95b8a98afa48 ! sid;
					t : 6cd53764-1d99-4348-b8d0-70bb300e0f34 ! parentsid;
					t : VTM_057 ! utype;
					t : KZ1 ! name;
					t : Контур заземления ! uname;
					t : TP010-0000272-63 ! code;
					t : x ! subcode;
					t : 90 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 1 ! number;
					t : 0 ! zone;
					t : 0 ! direct;
					t : 1 ! ignore;

				}
				}
		}
		body {
				t : "Лог_объекта: "+#code+" "+#utype+" "+#sid ! logMsg;
				t : logMsg+rn ! buffer;
				t : logMsg ! ln,err;
				t : int(
				  replace(
				  replace(
				  head(split(#code,"-")),
				  "TP",""),
				   "RP","")
				) ! $ObjectVoltage;
				t : "privse_vsevol_tp" ! pinchfcur;
				t : sucomplex ! complex;
				t : buildArena(null,complex,"",1,"border") ! $ObjectArena;
				t : buildArena($ObjectArena,"North","north",1,"horflowc") ! $NorthArena;
				t : buildArena($ObjectArena,"South","south",1,"horflowc") ! $SouthArena;
				t : complex ! $ObjectComplex;
				t : set(get(sucomplex,"register"),"superSid",#sid) ! tmp;
				t : qname("Нейтраль","Neutral","Neutral") ! myQname;
				t : list(complex,myQname) ! complex;
				t : 0 ! fence;
				t : buildArena($ObjectArena,"Trans","center",1,"horflowc",getSimplexes(complex)) ! $CenterArena;
				t : postArenaItems($CenterArena) ! tmp;
				t : postArenaItems($NorthArena) ! tmp;
				t : postArenaItems($SouthArena) ! tmp;
				t : postArenaItems($ObjectArena) ! tmp;
				t : alignArena($ObjectArena) ! tmp;
				t : arenaToAbs($ObjectArena,60,60) ! tmp;
				t : buildArenaMetaConnections($ObjectArena) ! tmp;
				t : dropComplex() ! tmp;
				t : dropComplex() ! tmp;

		}
		}
		seq {
		meta {
			t : App ! name;
			t : 2000 ! id;
			t : -1 ! type;
			t : App ! uname;
			t : 0 ! vcode;
			t : xxx-ps-app ! sid;

		}
		childs {
				seq {
				meta {
					t : Post ! name;
					t : 1910 ! id;
					t : -100 ! type;
					t : Post ! uname;
					t : 0 ! vcode;

				}
				childs {
						seq {
						meta {
							t : S0 ! name;
							t : 1911 ! id;
							t : -100 ! type;
							t : S0 ! uname;
							t : 0 ! vcode;

						}
						}
						seq {
						meta {
							t : S1 ! name;
							t : 1912 ! id;
							t : -100 ! type;
							t : S1 ! uname;
							t : 0 ! vcode;

						}
						}
				}
				}
				seq {
				meta {
					t : Topo ! name;
					t : 2001 ! id;
					t : -100 ! type;
					t : Topo ! uname;
					t : 0 ! vcode;

				}
				}
				seq {
				meta {
					t : Draw ! name;
					t : 2200 ! id;
					t : -2200 ! type;
					t : Draw ! uname;
					t : 0 ! vcode;

				}
				childs {
						seq {
						meta {
							t : Canvas ! name;
							t : 2210 ! id;
							t : -2210 ! type;
							t : Canvas ! uname;
							t : 0 ! vcode;

						}
						}
						seq {
						meta {
							t : Form ! name;
							t : 2220 ! id;
							t : -2220 ! type;
							t : Form ! uname;
							t : 0 ! vcode;

						}
						}
						seq {
						meta {
							t : Details ! name;
							t : 2230 ! id;
							t : -2230 ! type;
							t : Details ! uname;
							t : 0 ! vcode;

						}
						}
						seq {
						meta {
							t : Frame ! name;
							t : 2240 ! id;
							t : -2240 ! type;
							t : Frame ! uname;
							t : 0 ! vcode;

						}
						}
						seq {
						meta {
							t : Diogen ! name;
							t : 2250 ! id;
							t : -2250 ! type;
							t : Diogen ! uname;
							t : 0 ! vcode;

						}
						body {
								t : getPinchrefDataPath("diogen/res") ! $DioTemplatePath;
								t : getPinchstream("zip")+"/one.zip" ! $DioZipPath;
								t : getPinchstream("base64")+"/one.txt" ! $DioBase64Path;
								t : getComplex("TMD.TP") ! $DioComplex;
								 t : seq(push($ObjectArena),push(sucomplex),push($INV),push("doADio"),jfo("interpret")) ! tmp;
								/* t : seq(push($DioComplex),push(sucomplex),push($INV),push("doDio"),jfo("interpret")) ! tmp; */
								getoPermit("printZip") : zipFile($DioTemplatePath,$DioZipPath) ! tmp;
								getoPermit("printZip") : bytesToBase64(fileToBytes($DioZipPath)) ! strBase64;
								getoPermit("printZip") : get($DioComplex,"qname") ! dioComplexQname;
								getoPermit("printZip") : set(dioComplexQname,"diagram",strBase64) ! tmp;
								t : getPinchrefDataPath("diogen")+"/card.jfo" ! cardFileTemplate;
								t : fread(cardFileTemplate,"UTF-8") ! cardTemplate;
								t : jfo("UCardsFilter") ! cardFilter;
								t : jfo("UCardsColors") ! cardColors;
								t : jfo("UCardsGroups") ! cardGroups;
								t : arenaToCard($ObjectArena,cardFilter,cardColors,cardGroups) ! cardArenaText;
								t : replace(cardTemplate,"$$$$$",cardArenaText) ! cardText;
								t : TP.#uname+"("+TP.#code+")-card.jfo" ! cardFileName;
								t : fwrite(cardText,getPinchstream("card")+"/"+cardFileName,"UTF-8") ! tmp;

						}
						}
				}
				}
				seq {
				meta {
					t : G ! name;
					t : 2300 ! id;
					t : -2300 ! type;
					t : G ! uname;
					t : 0 ! vcode;

				}
				}
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
		childs {
				seq {
				meta {
					t : Xml ! name;
					t : 0 ! id;
					t : 0 ! type;
					t : Xml ! uname;
					t : 0 ! vcode;

				}
				body {
						t : TP.#uname+"("+TP.#code+")" ! fileName;
						getoPermit("printXml") : "Количество_трансформаторов: "+invariant($INV,"trans","")+rn ! buffer;
						getoPermit("printXml") : "Количество_РУ: "+invariant($INV,"vlevel","")+rn ! buffer;
						getoPermit("printXml") : "Количество_шин: "+invariant($INV,"bus","")+rn ! buffer;
						getoPermit("printXml") : printComplex(sucomplex) ! xmlContent;
						getoPermit("printXml"): seq(push(xmlContent),push("pqDoPost"),jfo("interpret")) ! xmlContent2;
						getoPermit("printXml") : fwrite(xmlContent2,getPinchstream("xml")+"/"+fileName+".xml","UTF-8") ! tmp;
						getoPermit("printXml") : fwrite(buffer,getPinchstream("log")+"/"+fileName+".txt","UTF-8") ! tmp;

				}
				}
		}
		body {
				t : '<h3>Инварианты ТМД</h3>' ! qforma,hidden;
				t : qforma+'<p>Типы ТМ: '+$UCounter+'</p>' ! qforma,hidden;
				t : qforma+'<p>Инвариант: '+$INV+'</p>' ! qforma,hidden;
				t : qforma+'<p>Пост список:</p>' ! qforma,hidden;
				t : qforma+chtml($PostList,"#uname,#utype") ! qforma,hidden;
				t : qforma+'<p>Лог:</p>' ! qforma,hidden;
				t : qforma+'<p>'+err+'</p>' ! qforma,hidden;
				t : qforma+'<p>Проверка имен:</p>' ! qforma,hidden;
				t : TP. ! baseNode;
				t : mapflat(
				    $VCATTrans
				   +$VCATRu
				   +$VCATClep
				   +$VCATCt
				   +$VCATBus
				   +$VCATBreaker
				   +$VCATSeparator
				   +$VCATDisconnector
				   +$VCATVch
				   +"VTM_013"
				   +"VTM_027"
				   +"VTM_106"
				   +"VTM_279"
				   +"VTM_081"
				   +"VTM_055"
				   +"VTM_019"
				   +"VTM_208"
				   +"VTM_018"
				   +"VTM_052"
				   +"VTM_172"
				   +"VTM_044"
				   +"VTM_045"
				   +"VTM_094"
				   +"VTM_046"
				   +"VTM_175"
				) ! utypesList;
				t : "in(utypesList,.item.#utype)" ! filterUtype;
				t : .baseNode.rchilds ! baseClist,hidden;
				t : filter(baseClist,filterUtype) ! formaClist,hidden;
				t : qforma+chtml(formaClist,"#uname,use,#vcode,#zone,#utype,connectType,pcoName,coName,soName,connectName,qvoltage") ! qforma,hidden;
				t : "TMD.TP" ! topoNode;
				t : qforma+'<p>Комплексы/симплексы: '+topoNode+'</p>' ! qforma,hidden;
				t : qforma+thtml(getRplexes(topoNode),"label,size,uname,nomer,utype,synonym,parentName,coName,desc,sid,parentSid") ! qforma,hidden;
				t : qforma+'<p>Арены: '+topoNode+'</p>' ! qforma,hidden;
				t : qforma+thtml(rarenas,"label,size,placeSpec,superSpec,desc,uname,coName,nomer,coIndexObject,x,y,x1,y1,width,height,a,b,a1,b1,awidth,aheight") ! qforma,hidden;

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
	    t : writer ! out;
	    t : t ! write;

}
