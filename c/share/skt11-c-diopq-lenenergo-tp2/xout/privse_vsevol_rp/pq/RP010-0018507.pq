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
			t : c26485a9-156b-4254-96c0-c644ad290b68 ! sid;
			t : VTM_215 ! utype;
			t : TP ! name;
			t : РП-7517 Ф. 374-210 ! uname;
			t : RP010-0018507 ! code;
			t : 10001348-0000-0000-c000-0000006d746c ! subcode;
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
					t : 385070001 ! id;
					t : 635226eb-e294-4720-8bbe-b3f0a1a88312 ! sid;
					t : c26485a9-156b-4254-96c0-c644ad290b68 ! parentsid;
					t : VTM_119 ! utype;
					t : T1 ! name;
					t : Силовой трансформатор №1 ! uname;
					t : RP010-0018507-01 ! code;
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
						t : list(getComplex(parent),'C/-1/100,W/-1/0') ! usimplex;
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
						t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
						t : evals(shapeDesc) ! tmp;
						t : drawSimplex(0,0) ! tmp;

				}
				}
				seq {
				meta {
					t : 385070002 ! id;
					t : aadbfd2d-92a9-4596-a679-dba6044141aa ! sid;
					t : c26485a9-156b-4254-96c0-c644ad290b68 ! parentsid;
					t : VTM_109 ! utype;
					t : VC1 ! name;
					t : РУ 10 кВ ! uname;
					t : RP010-0018507-14 ! code;
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
							t : 385070003 ! id;
							t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! sid;
							t : aadbfd2d-92a9-4596-a679-dba6044141aa ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS1 ! name;
							t : Система шин 1 ! uname;
							t : RP010-0018507-14-01 ! code;
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
									t : 385070010 ! id;
									t : d9c3ed04-d3b6-4137-810e-85c45dc3ea87 ! sid;
									t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : яч. 1 Резерв ! uname;
									t : RP010-0018507-14-01-01 ! code;
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
											t : 385070040 ! id;
											t : 1201d4dc-ff60-4df0-992e-c12ae345ed81 ! sid;
											t : d9c3ed04-d3b6-4137-810e-85c45dc3ea87 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : RP010-0018507-14-01-01-10 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070014 ! id;
											t : 248f22d1-92c6-4a7e-9424-4d42906c95b3 ! sid;
											t : d9c3ed04-d3b6-4137-810e-85c45dc3ea87 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-01-21 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070037 ! id;
											t : 2fcee020-e4b4-4a93-a531-8f96fab7d4a9 ! sid;
											t : d9c3ed04-d3b6-4137-810e-85c45dc3ea87 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-01-22 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070041 ! id;
											t : f97fb327-de71-41ed-b3e3-ffa3a7fbd030 ! sid;
											t : d9c3ed04-d3b6-4137-810e-85c45dc3ea87 ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : Разрядники, ОПН ! uname;
											t : RP010-0018507-14-01-01-70 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070042 ! id;
											t : 4ea2359b-1ecc-467c-bdbd-8b5c69a55f19 ! sid;
											t : d9c3ed04-d3b6-4137-810e-85c45dc3ea87 ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : RP010-0018507-14-01-01-75 ! code;
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
													t : 385070052 ! id;
													t : 87e22207-30ba-4ae4-a65b-590d08638b92 ! sid;
													t : 4ea2359b-1ecc-467c-bdbd-8b5c69a55f19 ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ линейный, стор. ЛЭП ! uname;
													t : RP010-0018507-14-01-01-75-05 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : 0 ! fence;
										t : $getTopoJfo+"myTopoJfo"+"myUtype"+#utype ! invoke;
										def(myTopoJfo) : seq(push(rsimplexes),push(myTopoJfo),jfo("interpret")) ! topoList;
										not(isnull(complex)) : connect(complex) ! tmp;
										not(isnull(complex)) : size(getSimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildArena(peekArena(),complex,"",0,"verflowc", getSimplexes(complex),t) ! myArena;
										def(myArena) : buildArenaConnections(myArena) ! tmp;
										t : postArenaItems(peekArena()) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 385070009 ! id;
									t : 62ba717a-47cd-4da4-9df9-a268247a4279 ! sid;
									t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP2 ! name;
									t : яч. 3 ПС-374 ! uname;
									t : RP010-0018507-14-01-02 ! code;
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
											t : 385070039 ! id;
											t : f379f44e-da5e-4043-94e8-57ecdb2eee24 ! sid;
											t : 62ba717a-47cd-4da4-9df9-a268247a4279 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : RP010-0018507-14-01-02-10 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070038 ! id;
											t : 27e6c17e-ce6c-4af1-89cd-8e1391812837 ! sid;
											t : 62ba717a-47cd-4da4-9df9-a268247a4279 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-02-21 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
													t : 385070054 ! id;
													t : 323e3045-b78f-423d-923a-10bbdae8563f ! sid;
													t : 27e6c17e-ce6c-4af1-89cd-8e1391812837 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : RP010-0018507-14-01-02-21-01 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070035 ! id;
											t : ffc6b4be-0bd9-44fc-a039-ff4d7c794470 ! sid;
											t : 62ba717a-47cd-4da4-9df9-a268247a4279 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-02-22 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070013 ! id;
											t : 5b7c9c55-fff4-4846-8750-ef303d7af9e4 ! sid;
											t : 62ba717a-47cd-4da4-9df9-a268247a4279 ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : Разрядники, ОПН ! uname;
											t : RP010-0018507-14-01-02-70 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070034 ! id;
											t : fb8032b5-48bc-4ff1-8988-6d55225ec39e ! sid;
											t : 62ba717a-47cd-4da4-9df9-a268247a4279 ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : RP010-0018507-14-01-02-75 ! code;
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
													t : 385070051 ! id;
													t : a1e9cf21-2dfb-46d8-80f4-161df496596f ! sid;
													t : fb8032b5-48bc-4ff1-8988-6d55225ec39e ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ линейный, стор. ЛЭП ! uname;
													t : RP010-0018507-14-01-02-75-05 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : 0 ! fence;
										t : $getTopoJfo+"myTopoJfo"+"myUtype"+#utype ! invoke;
										def(myTopoJfo) : seq(push(rsimplexes),push(myTopoJfo),jfo("interpret")) ! topoList;
										not(isnull(complex)) : connect(complex) ! tmp;
										not(isnull(complex)) : size(getSimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildArena(peekArena(),complex,"",0,"verflowc", getSimplexes(complex),t) ! myArena;
										def(myArena) : buildArenaConnections(myArena) ! tmp;
										t : postArenaItems(peekArena()) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 385070008 ! id;
									t : a315d6ae-5bc1-4020-9e73-dc3c014d2db7 ! sid;
									t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP3 ! name;
									t : яч. 4 Резерв ! uname;
									t : RP010-0018507-14-01-03 ! code;
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
											t : 385070030 ! id;
											t : 5a563db8-09f0-4566-b854-7ffe7ffb4cdc ! sid;
											t : a315d6ae-5bc1-4020-9e73-dc3c014d2db7 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : RP010-0018507-14-01-03-10 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070032 ! id;
											t : 6de733b4-6ee1-4fe3-bcf1-85bcb727a857 ! sid;
											t : a315d6ae-5bc1-4020-9e73-dc3c014d2db7 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-03-21 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070036 ! id;
											t : 75374521-66b7-4e4e-9c2b-0257b6f984c1 ! sid;
											t : a315d6ae-5bc1-4020-9e73-dc3c014d2db7 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-03-22 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070031 ! id;
											t : 2b979dc1-b8c1-40aa-a18e-e61c5136d7cd ! sid;
											t : a315d6ae-5bc1-4020-9e73-dc3c014d2db7 ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : RP010-0018507-14-01-03-75 ! code;
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
													t : 385070053 ! id;
													t : 28d1501b-40a4-4fa4-90b9-6c37ddf8cf30 ! sid;
													t : 2b979dc1-b8c1-40aa-a18e-e61c5136d7cd ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ линейный, стор. ЛЭП ! uname;
													t : RP010-0018507-14-01-03-75-05 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : 0 ! fence;
										t : $getTopoJfo+"myTopoJfo"+"myUtype"+#utype ! invoke;
										def(myTopoJfo) : seq(push(rsimplexes),push(myTopoJfo),jfo("interpret")) ! topoList;
										not(isnull(complex)) : connect(complex) ! tmp;
										not(isnull(complex)) : size(getSimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildArena(peekArena(),complex,"",0,"verflowc", getSimplexes(complex),t) ! myArena;
										def(myArena) : buildArenaConnections(myArena) ! tmp;
										t : postArenaItems(peekArena()) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 385070007 ! id;
									t : 30d95247-7e99-4cea-a0bb-5187d4eaffdd ! sid;
									t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP4 ! name;
									t : яч. 5 Резерв ! uname;
									t : RP010-0018507-14-01-05 ! code;
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
											t : 385070026 ! id;
											t : af438e30-e3f2-43dc-8abd-27ef66bf3c06 ! sid;
											t : 30d95247-7e99-4cea-a0bb-5187d4eaffdd ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : RP010-0018507-14-01-05-10 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070033 ! id;
											t : 8dfd2c5d-e2fe-4f4a-b897-225117f55cea ! sid;
											t : 30d95247-7e99-4cea-a0bb-5187d4eaffdd ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-05-21 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070028 ! id;
											t : b014ccf4-a9d1-4b8e-b627-e50f86115f42 ! sid;
											t : 30d95247-7e99-4cea-a0bb-5187d4eaffdd ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-05-22 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070027 ! id;
											t : 54bc4d79-307b-4bc1-8612-e14b839d58ec ! sid;
											t : 30d95247-7e99-4cea-a0bb-5187d4eaffdd ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : Разрядники, ОПН ! uname;
											t : RP010-0018507-14-01-05-70 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070029 ! id;
											t : 073053fc-e398-4ef3-8013-e6d7e3e4b17a ! sid;
											t : 30d95247-7e99-4cea-a0bb-5187d4eaffdd ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : RP010-0018507-14-01-05-75 ! code;
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
													t : 385070050 ! id;
													t : 5b9a040e-289a-4612-a0f0-6e4bd6617c1d ! sid;
													t : 073053fc-e398-4ef3-8013-e6d7e3e4b17a ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ линейный, стор. ЛЭП ! uname;
													t : RP010-0018507-14-01-05-75-05 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : 0 ! fence;
										t : $getTopoJfo+"myTopoJfo"+"myUtype"+#utype ! invoke;
										def(myTopoJfo) : seq(push(rsimplexes),push(myTopoJfo),jfo("interpret")) ! topoList;
										not(isnull(complex)) : connect(complex) ! tmp;
										not(isnull(complex)) : size(getSimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildArena(peekArena(),complex,"",0,"verflowc", getSimplexes(complex),t) ! myArena;
										def(myArena) : buildArenaConnections(myArena) ! tmp;
										t : postArenaItems(peekArena()) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 385070006 ! id;
									t : ae0f7145-9795-400c-8c04-760c6bb523e1 ! sid;
									t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP5 ! name;
									t : яч.6 ! uname;
									t : RP010-0018507-14-01-06 ! code;
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
											t : 385070023 ! id;
											t : 2c26229f-12a1-43ad-8c5a-bfe1f408691c ! sid;
											t : ae0f7145-9795-400c-8c04-760c6bb523e1 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : RP010-0018507-14-01-06-10 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070022 ! id;
											t : 54284de4-bdc8-4b9c-b338-01cf4c64d5b7 ! sid;
											t : ae0f7145-9795-400c-8c04-760c6bb523e1 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-06-21 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
													t : 385070048 ! id;
													t : b68734aa-9763-4950-9346-3c27a31840e5 ! sid;
													t : 54284de4-bdc8-4b9c-b338-01cf4c64d5b7 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : RP010-0018507-14-01-06-21-01 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070020 ! id;
											t : 2ef10c9d-0a89-4d96-8d0c-ef238c0d9b41 ! sid;
											t : ae0f7145-9795-400c-8c04-760c6bb523e1 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-06-22 ! code;
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
													t : 385070047 ! id;
													t : 9aa2b263-cf29-4339-af96-0f2007f648db ! sid;
													t : 2ef10c9d-0a89-4d96-8d0c-ef238c0d9b41 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : RP010-0018507-14-01-06-22-01 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070024 ! id;
											t : b12eb937-ce32-4a4d-b2cd-d8173e3813b0 ! sid;
											t : ae0f7145-9795-400c-8c04-760c6bb523e1 ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : Разрядники, ОПН ! uname;
											t : RP010-0018507-14-01-06-70 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070025 ! id;
											t : 164a0c50-5c6f-40fd-9573-205db43d566f ! sid;
											t : ae0f7145-9795-400c-8c04-760c6bb523e1 ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : RP010-0018507-14-01-06-75 ! code;
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
													t : 385070049 ! id;
													t : 8507fc75-a692-4833-96a2-2b4eee0a7e0b ! sid;
													t : 164a0c50-5c6f-40fd-9573-205db43d566f ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ линейный, стор. ЛЭП ! uname;
													t : RP010-0018507-14-01-06-75-05 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : 0 ! fence;
										t : $getTopoJfo+"myTopoJfo"+"myUtype"+#utype ! invoke;
										def(myTopoJfo) : seq(push(rsimplexes),push(myTopoJfo),jfo("interpret")) ! topoList;
										not(isnull(complex)) : connect(complex) ! tmp;
										not(isnull(complex)) : size(getSimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildArena(peekArena(),complex,"",0,"verflowc", getSimplexes(complex),t) ! myArena;
										def(myArena) : buildArenaConnections(myArena) ! tmp;
										t : postArenaItems(peekArena()) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 385070005 ! id;
									t : 3f9c1a20-0275-4e50-ace8-9f01a6b2c59f ! sid;
									t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP6 ! name;
									t : яч.7 Резерв ! uname;
									t : RP010-0018507-14-01-07 ! code;
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
											t : 385070012 ! id;
											t : 3fe75bc6-683d-47c3-b4ca-25088e59d654 ! sid;
											t : 3f9c1a20-0275-4e50-ace8-9f01a6b2c59f ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : RP010-0018507-14-01-07-10 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070021 ! id;
											t : ba076d54-ae8a-4aba-af49-e61693279d18 ! sid;
											t : 3f9c1a20-0275-4e50-ace8-9f01a6b2c59f ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-07-21 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070017 ! id;
											t : 17714066-af79-442c-b25c-617cf0882456 ! sid;
											t : 3f9c1a20-0275-4e50-ace8-9f01a6b2c59f ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-07-22 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070043 ! id;
											t : 109b795f-f1f1-4616-b6e4-cbef443fa1eb ! sid;
											t : 3f9c1a20-0275-4e50-ace8-9f01a6b2c59f ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : Разрядники, ОПН ! uname;
											t : RP010-0018507-14-01-07-70 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070016 ! id;
											t : 0cd8f970-cabf-4aef-bbbd-e4d6f13a04ab ! sid;
											t : 3f9c1a20-0275-4e50-ace8-9f01a6b2c59f ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : RP010-0018507-14-01-07-75 ! code;
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
													t : 385070046 ! id;
													t : 24a784ff-463a-41ad-914c-8619cbf9d5aa ! sid;
													t : 0cd8f970-cabf-4aef-bbbd-e4d6f13a04ab ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ линейный, стор. ЛЭП ! uname;
													t : RP010-0018507-14-01-07-75-05 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : 0 ! fence;
										t : $getTopoJfo+"myTopoJfo"+"myUtype"+#utype ! invoke;
										def(myTopoJfo) : seq(push(rsimplexes),push(myTopoJfo),jfo("interpret")) ! topoList;
										not(isnull(complex)) : connect(complex) ! tmp;
										not(isnull(complex)) : size(getSimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildArena(peekArena(),complex,"",0,"verflowc", getSimplexes(complex),t) ! myArena;
										def(myArena) : buildArenaConnections(myArena) ! tmp;
										t : postArenaItems(peekArena()) ! tmp;
										t : dropComplex() ! tmp;

								}
								}
								seq {
								meta {
									t : 385070004 ! id;
									t : e8eb229d-8a17-4572-9272-02a7a1347777 ! sid;
									t : d46ea60a-d3da-40fb-a497-cc4d863e1966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP7 ! name;
									t : яч. 8 Резерв ! uname;
									t : RP010-0018507-14-01-08 ! code;
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
											t : 385070019 ! id;
											t : 9c84b177-ff22-4562-9d48-51baa2573dd5 ! sid;
											t : e8eb229d-8a17-4572-9272-02a7a1347777 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : Выключатель ! uname;
											t : RP010-0018507-14-01-08-10 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070018 ! id;
											t : e39dd773-24e3-4ad2-b208-5ce76fb21cc3 ! sid;
											t : e8eb229d-8a17-4572-9272-02a7a1347777 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-08-21 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070015 ! id;
											t : 18ea61a6-2290-4c2e-96aa-47faf4148eba ! sid;
											t : e8eb229d-8a17-4572-9272-02a7a1347777 ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : Разъединитель ! uname;
											t : RP010-0018507-14-01-08-22 ! code;
											t : 10000cd2-0000-0000-c000-0000006d746c ! subcode;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070011 ! id;
											t : af9e95f3-aabd-4488-a225-9c729441eae8 ! sid;
											t : e8eb229d-8a17-4572-9272-02a7a1347777 ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : Разрядники, ОПН ! uname;
											t : RP010-0018507-14-01-08-70 ! code;
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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
										seq {
										meta {
											t : 385070044 ! id;
											t : 7f9f58e2-de50-4de4-b26d-9897ce8a69ea ! sid;
											t : e8eb229d-8a17-4572-9272-02a7a1347777 ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : RP010-0018507-14-01-08-75 ! code;
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
													t : 385070045 ! id;
													t : bea0916b-2569-4f21-89ea-bf9dce6e2bf9 ! sid;
													t : 7f9f58e2-de50-4de4-b26d-9897ce8a69ea ! parentsid;
													t : VTM_279 ! utype;
													t : TTLLEP1 ! name;
													t : ТТ линейный, стор. ЛЭП ! uname;
													t : RP010-0018507-14-01-08-75-05 ! code;
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
														t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
														t : evals(shapeDesc) ! tmp;

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
												t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
												t : evals(shapeDesc) ! tmp;

										}
										}
								}
								body {
										t : $nextUCounter ! perform;
										t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
										not(use) : errMsg+rn ! buffer;
										not(use) : errMsg ! ln,err;
										not(use) : 0 ! use,stop;
										t : "clep" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
										t : fillQname(complex,toList("coName,connectType,soName,coIndexObject")) ! tmp;
										t : 0 ! fence;
										t : $getTopoJfo+"myTopoJfo"+"myUtype"+#utype ! invoke;
										def(myTopoJfo) : seq(push(rsimplexes),push(myTopoJfo),jfo("interpret")) ! topoList;
										not(isnull(complex)) : connect(complex) ! tmp;
										not(isnull(complex)) : size(getSimplexes(complex)) : 0 ! myComplexSize; 
										not(isnull(complex))&(myComplexSize>0) : buildArena(peekArena(),complex,"",0,"verflowc", getSimplexes(complex),t) ! myArena;
										def(myArena) : buildArenaConnections(myArena) ! tmp;
										t : postArenaItems(peekArena()) ! tmp;
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
								t : buildArena(peekArena(),"Xbus","",0,"verflowc") ! myArena;
								t : buildArena(myArena,simplex,"",0,"horflowc") ! busArena;
								t : addArenaElement(busArena,simplex,"") ! tmp;
								t : buildArena(myArena,"Con","",1,"horflowc") ! conArena;
								t : buildArena(myArena,"Lin","",1,"horflowc") ! ctArena;
								t : pushArena(ctArena) ! tmp;
								t : fillQname(simplex,toList("coName,connectType,qvoltage")) ! tmp;
								t : 0 ! fence;
								t : dropArena() ! tmp;
								t : performArenaDeferreds(ctArena,"coIndexObject") ! tmp;
								t : buildFanConnections(myArena,busArena,simplex,conArena,ctArena) ! tmp;
								not(isnull(simplex)) : connect(simplex,getComplex(parent),xchilds) ! tmp;
								t : $pickShape+"shapeDesc"+"myUtype"+#utype ! invoke;
								t : evals(shapeDesc) ! tmp;
								t : drawSimplex(0,-4) ! tmp;

						}
						}
				}
				body {
						t : invariant($INV,"vlevel+",1) ! tmp;
						t : invariant($INV,"vlevel."+qvoltage+"+",1) ! tmp;
						t : getComplex(parent) ! vcomplex;
						t : invariant($INV,"vlevel","") ! vlevelsNum;
						vlevelsNum=1 : buildArena($NorthArena,complex,"",1,"horflowc") ! myArena;
						vlevelsNum>1 : buildArena($SouthArena,complex,"",1,"horflowc") ! myArena;
						t : pushArena(myArena) ! tmp;
						t : fillQname(complex,toList("qvoltage")) ! tmp;
						t : 0 ! fence;
						t : filter(xsimplexes,"in($VCATBus,getq(item,'utype'))") ! myBusList;
						t : filter(xcomplexes,"in($VCATBusLink,getq(item,'utype'))") ! myBusLinkList;
						t : connectSimplexesByComplexes(complex,myBusList,myBusLinkList,$ObjectArena) ! myBusLinkedList;
						size(myBusLinkedList)=1 : getFirstSolidSimplex(head(myBusLinkedList)) ! myBusFirstSimplex;
						def(myBusFirstSimplex) : moveArenaAfter($ObjectArena,myBusFirstSimplex) ! sysout;
						t : dropComplex() ! tmp;
						t : postArenaItems(myArena) ! tmp;
						t : dropArena() ! tmp;

				}
				}
		}
		body {
				t : "Лог_объекта: "+#code+" "+#utype ! logMsg;
				t : logMsg+rn ! buffer;
				t : logMsg ! ln,err;
				t : int(
				  replace(
				  replace(
				  head(split(#code,"-")),
				  "TP",""),
				   "RP","")
				) ! $ObjectVoltage;
				t : "privse_vsevol_rp" ! pinchfcur;
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
				t : qforma+thtml(rarenas,"label,size,place,superSpec,desc,uname,coName,nomer,coIndexObject,x,y,x1,y1,width,height,a,b,a1,b1,awidth,aheight") ! qforma,hidden;

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
