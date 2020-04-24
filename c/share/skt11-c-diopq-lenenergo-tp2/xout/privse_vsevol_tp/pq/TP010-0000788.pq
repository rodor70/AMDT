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
			t : 00c0c6df-831d-46e2-aaa8-94b880afa9ce ! sid;
			t : VTM_236 ! utype;
			t : TP ! name;
			t : ТП-2503 Ф. 362-08,23,24 ! uname;
			t : TP010-0000788 ! code;
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
					t : 207880006 ! id;
					t : c8196d7a-a044-418a-8260-881af4fbe7bd ! sid;
					t : 00c0c6df-831d-46e2-aaa8-94b880afa9ce ! parentsid;
					t : VTM_119 ! utype;
					t : T1 ! name;
					t : Силовой трансформатор Т1 ! uname;
					t : TP010-0000788-01 ! code;
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
					t : 207880001 ! id;
					t : ea119af2-8f8a-415a-99cb-7c30fc8d1f43 ! sid;
					t : 00c0c6df-831d-46e2-aaa8-94b880afa9ce ! parentsid;
					t : VTM_119 ! utype;
					t : T2 ! name;
					t : Силовой трансформатор Т2 ! uname;
					t : TP010-0000788-02 ! code;
					t : 10000d24-0000-0000-c000-0000006d746c ! subcode;
					t : 90 ! type;
					t : 0.0 ! weight;
					t : 1 ! vcode;
					t : 2 ! number;
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
					t : 207880003 ! id;
					t : 0ffa2e13-9c17-4830-80eb-af7049d18804 ! sid;
					t : 00c0c6df-831d-46e2-aaa8-94b880afa9ce ! parentsid;
					t : VTM_109 ! utype;
					t : VC1 ! name;
					t : РУ 10 кВ ТП-2503 ! uname;
					t : TP010-0000788-14 ! code;
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
							t : 207880008 ! id;
							t : 8b831a0e-8408-4fb6-9e54-d3efdf5efc89 ! sid;
							t : 0ffa2e13-9c17-4830-80eb-af7049d18804 ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS1 ! name;
							t : 1С-10 кВ ! uname;
							t : TP010-0000788-14-01 ! code;
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
									t : 207880017 ! id;
									t : 0a343d02-215a-4685-b53a-755ff376f9d2 ! sid;
									t : 8b831a0e-8408-4fb6-9e54-d3efdf5efc89 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : яч.5 КЛ2505-2503 ф.362-08 ! uname;
									t : TP010-0000788-14-01-01 ! code;
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
											t : 207880045 ! id;
											t : be6e1074-5210-47c6-a332-8bbdae1fab2d ! sid;
											t : 0a343d02-215a-4685-b53a-755ff376f9d2 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : ВН ! uname;
											t : TP010-0000788-14-01-01-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
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
													t : 207880081 ! id;
													t : fee1161a-a174-4b05-8915-7ef5cb3b6862 ! sid;
													t : be6e1074-5210-47c6-a332-8bbdae1fab2d ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : TP010-0000788-14-01-01-10-01 ! code;
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
									t : 207880033 ! id;
									t : ed7b7fde-4cda-4624-8996-c61dbdee7bd6 ! sid;
									t : 8b831a0e-8408-4fb6-9e54-d3efdf5efc89 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP2 ! name;
									t : яч.3 КЛ2503-2644 ! uname;
									t : TP010-0000788-14-01-02 ! code;
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
											t : 207880072 ! id;
											t : 327d00f6-2c08-4166-abe9-f794d2c3ac68 ! sid;
											t : ed7b7fde-4cda-4624-8996-c61dbdee7bd6 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : ВН ! uname;
											t : TP010-0000788-14-01-02-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
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
													t : 207880082 ! id;
													t : b1dd2f1f-68d8-4827-80af-644f78925cdb ! sid;
													t : 327d00f6-2c08-4166-abe9-f794d2c3ac68 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : TP010-0000788-14-01-02-10-01 ! code;
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
									t : 207880034 ! id;
									t : ac8fb080-2794-4f3c-bcd3-d32a97c87200 ! sid;
									t : 8b831a0e-8408-4fb6-9e54-d3efdf5efc89 ! parentsid;
									t : VTM_078 ! utype;
									t : CT1 ! name;
									t : яч.1 Присоединение трансформатора Т1 ! uname;
									t : TP010-0000788-14-01-20 ! code;
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
											t : 207880073 ! id;
											t : cd625a5d-3d21-4d5e-97c8-4ee82e9402be ! sid;
											t : ac8fb080-2794-4f3c-bcd3-d32a97c87200 ! parentsid;
											t : VTM_029 ! utype;
											t : VT1 ! name;
											t : ВН ! uname;
											t : TP010-0000788-14-01-20-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
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
													t : 207880077 ! id;
													t : 3f34b304-bb75-469a-ba21-979b6678af80 ! sid;
													t : cd625a5d-3d21-4d5e-97c8-4ee82e9402be ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : TP010-0000788-14-01-20-10-01 ! code;
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
											t : 207880070 ! id;
											t : 7eaf3d0b-2147-48e2-a8d2-47c2515b591a ! sid;
											t : ac8fb080-2794-4f3c-bcd3-d32a97c87200 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПК ! uname;
											t : TP010-0000788-14-01-20-85 ! code;
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
						seq {
						meta {
							t : 207880013 ! id;
							t : 5591087a-b5f6-495b-8e2f-74964e197c5a ! sid;
							t : 0ffa2e13-9c17-4830-80eb-af7049d18804 ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS2 ! name;
							t : 2С-10 кВ ! uname;
							t : TP010-0000788-14-02 ! code;
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
									t : 207880014 ! id;
									t : 527dfc4d-06ec-487d-b9f3-c49364686223 ! sid;
									t : 5591087a-b5f6-495b-8e2f-74964e197c5a ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : яч.6 ЛПС-2503 ф.362-23 ! uname;
									t : TP010-0000788-14-02-01 ! code;
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
											t : 207880071 ! id;
											t : 53d31150-79b6-4773-9a8f-3760b2149233 ! sid;
											t : 527dfc4d-06ec-487d-b9f3-c49364686223 ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : ВН ! uname;
											t : TP010-0000788-14-02-01-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
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
													t : 207880084 ! id;
													t : e27b0fde-99c0-4e94-98f9-328e8f0e5dc8 ! sid;
													t : 53d31150-79b6-4773-9a8f-3760b2149233 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : TP010-0000788-14-02-01-10-01 ! code;
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
									t : 207880038 ! id;
									t : a6df260b-18d7-44c4-a3f5-fa03ba30d86a ! sid;
									t : 5591087a-b5f6-495b-8e2f-74964e197c5a ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP2 ! name;
									t : яч.4 КЛ2503-2509 ! uname;
									t : TP010-0000788-14-02-02 ! code;
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
											t : 207880044 ! id;
											t : fb76bd1b-90f0-4586-be6c-1390421960f0 ! sid;
											t : a6df260b-18d7-44c4-a3f5-fa03ba30d86a ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : ВН ! uname;
											t : TP010-0000788-14-02-02-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
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
													t : 207880083 ! id;
													t : a44c73e2-3aab-4c28-b7c2-c7a849089762 ! sid;
													t : fb76bd1b-90f0-4586-be6c-1390421960f0 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : TP010-0000788-14-02-02-10-01 ! code;
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
									t : 207880032 ! id;
									t : 7206742c-69c6-4db4-b40c-d5ebeb7a9a67 ! sid;
									t : 5591087a-b5f6-495b-8e2f-74964e197c5a ! parentsid;
									t : VTM_078 ! utype;
									t : CT1 ! name;
									t : яч.2 Присоединение трансформатора Т2 ! uname;
									t : TP010-0000788-14-02-21 ! code;
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
											t : 207880069 ! id;
											t : a3c562e8-9ee4-48c5-9b90-59c60564c762 ! sid;
											t : 7206742c-69c6-4db4-b40c-d5ebeb7a9a67 ! parentsid;
											t : VTM_029 ! utype;
											t : VT1 ! name;
											t : ВН ! uname;
											t : TP010-0000788-14-02-21-10 ! code;
											t : 1000114b-0000-0000-c000-0000006d746c ! subcode;
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
													t : 207880080 ! id;
													t : 0f3e9d9e-4b6a-4c59-af55-8f24cdd518d1 ! sid;
													t : a3c562e8-9ee4-48c5-9b90-59c60564c762 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : TP010-0000788-14-02-21-10-01 ! code;
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
											t : 207880041 ! id;
											t : f4530db6-8375-457f-a3f1-cf9984bc84dd ! sid;
											t : 7206742c-69c6-4db4-b40c-d5ebeb7a9a67 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПК ! uname;
											t : TP010-0000788-14-02-21-85 ! code;
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
						seq {
						meta {
							t : 207880012 ! id;
							t : f2174420-3e75-497b-a23f-2612aa4962b5 ! sid;
							t : 0ffa2e13-9c17-4830-80eb-af7049d18804 ! parentsid;
							t : VTM_098 ! utype;
							t : CSV1 ! name;
							t : яч.1 Присоединение СВ 1 ! uname;
							t : TP010-0000788-14-10 ! code;
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
									t : 207880030 ! id;
									t : fb83be61-a46d-4231-8e6f-5d412dc7c782 ! sid;
									t : f2174420-3e75-497b-a23f-2612aa4962b5 ! parentsid;
									t : VTM_292 ! utype;
									t : RSEK1 ! name;
									t : РВ ! uname;
									t : TP010-0000788-14-10-21 ! code;
									t : 1000114f-0000-0000-c000-0000006d746c ! subcode;
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
											t : 207880067 ! id;
											t : ac5ea947-69e6-4be7-856e-d78727f1f368 ! sid;
											t : fb83be61-a46d-4231-8e6f-5d412dc7c782 ! parentsid;
											t : VTM_027 ! utype;
											t : ZN1 ! name;
											t : Заземляющий нож ! uname;
											t : TP010-0000788-14-10-21-01 ! code;
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
									t : 207880031 ! id;
									t : 062aaa69-fbf0-4aa3-9bd9-8db3e826edc8 ! sid;
									t : f2174420-3e75-497b-a23f-2612aa4962b5 ! parentsid;
									t : VTM_292 ! utype;
									t : RSEK2 ! name;
									t : РВ ! uname;
									t : TP010-0000788-14-10-22 ! code;
									t : 1000114f-0000-0000-c000-0000006d746c ! subcode;
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
											t : 207880068 ! id;
											t : cbfc5397-3511-4661-bb53-d320e41969ce ! sid;
											t : 062aaa69-fbf0-4aa3-9bd9-8db3e826edc8 ! parentsid;
											t : VTM_027 ! utype;
											t : ZN1 ! name;
											t : Заземляющий нож ! uname;
											t : TP010-0000788-14-10-22-01 ! code;
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
						}
						body {
								t : $nextUCounter ! perform;
								t : $MsgBadParentStru+pathname+" "+#utype ! errMsg;
								not(use) : errMsg+rn ! buffer;
								not(use) : errMsg ! ln,err;
								not(use) : 0 ! use,stop;
								t : "unk" ! connectType;
								t : "csv" ! connectType;
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
								def(myArena) : constraint("yequals_tomax","xy",0) ! myConstraintY;
								def(myArena) : get(myArena,"pinElement") ! myArenaElement;
								def(myArenaElement) : econstraint(myConstraintY,myArenaElement) ! myEConstraintY;
								def(myEConstraintY) : constraintpin("bus",myEConstraintY,myArena) ! myConstraintPin;
								def(myConstraintPin) : addConstraintPin(myArena,myConstraintPin) ! tmp;
								def(myArena) : postArenaItems(myArena) ! tmp;
								t : dropComplex() ! tmp;

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
					t : 207880005 ! id;
					t : ae811cf2-cae8-44b9-8d1e-11547b322226 ! sid;
					t : 00c0c6df-831d-46e2-aaa8-94b880afa9ce ! parentsid;
					t : VTM_108 ! utype;
					t : VF1 ! name;
					t : РУ-0,4 кВ ТП-2503 ! uname;
					t : TP010-0000788-16 ! code;
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
							t : 207880011 ! id;
							t : 35fbe475-5cb6-4351-8dbe-304dd84df966 ! sid;
							t : ae811cf2-cae8-44b9-8d1e-11547b322226 ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS1 ! name;
							t : 1С-0,4 кВ ! uname;
							t : TP010-0000788-16-01 ! code;
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
									t : 207880037 ! id;
									t : 8930533d-009b-4092-873b-99e385f01545 ! sid;
									t : 35fbe475-5cb6-4351-8dbe-304dd84df966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : КЛ-0,4 кВ Л1 ! uname;
									t : TP010-0000788-16-01-01 ! code;
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
											t : 207880065 ! id;
											t : c3f6e895-d40b-45b6-bd50-e78eaab0f721 ! sid;
											t : 8930533d-009b-4092-873b-99e385f01545 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : АВ-0,4 кВ ! uname;
											t : TP010-0000788-16-01-01-10 ! code;
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
									t : 207880029 ! id;
									t : d58004a9-0fa8-43e8-b9e6-9a427e008682 ! sid;
									t : 35fbe475-5cb6-4351-8dbe-304dd84df966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP2 ! name;
									t : ВЛ-0,4 кВ Л3 резерв ! uname;
									t : TP010-0000788-16-01-02 ! code;
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
											t : 207880066 ! id;
											t : bd733e59-7ce7-4baa-b3c4-66ecad392c59 ! sid;
											t : d58004a9-0fa8-43e8-b9e6-9a427e008682 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-01-02-10 ! code;
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
											t : 207880062 ! id;
											t : 40f8bf53-230a-42c5-be9a-207a6e0ea5ce ! sid;
											t : d58004a9-0fa8-43e8-b9e6-9a427e008682 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-01-02-85 ! code;
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
									t : 207880036 ! id;
									t : aab94549-d95e-4e1e-b2a3-e87f7c274d15 ! sid;
									t : 35fbe475-5cb6-4351-8dbe-304dd84df966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP3 ! name;
									t : КЛ-0,4 кВ Л5 ! uname;
									t : TP010-0000788-16-01-03 ! code;
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
											t : 207880043 ! id;
											t : 0ec3d8d0-b5d5-4815-9313-1faf7739ffe6 ! sid;
											t : aab94549-d95e-4e1e-b2a3-e87f7c274d15 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-01-03-10 ! code;
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
											t : 207880063 ! id;
											t : 05be50d7-1769-4cde-8bc2-91e3174a8e8f ! sid;
											t : aab94549-d95e-4e1e-b2a3-e87f7c274d15 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-01-03-85 ! code;
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
									t : 207880028 ! id;
									t : 5c74e6da-58e9-4268-a0d4-3c65233dfdf7 ! sid;
									t : 35fbe475-5cb6-4351-8dbe-304dd84df966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP4 ! name;
									t : ВЛ-0,4 кВ Л7 резерв ! uname;
									t : TP010-0000788-16-01-04 ! code;
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
											t : 207880064 ! id;
											t : 9bee8a6d-5226-4a62-a8ea-de6b52fd91da ! sid;
											t : 5c74e6da-58e9-4268-a0d4-3c65233dfdf7 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-01-04-10 ! code;
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
											t : 207880058 ! id;
											t : dc47c1ab-b11f-493b-9b29-26cb19788264 ! sid;
											t : 5c74e6da-58e9-4268-a0d4-3c65233dfdf7 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-01-04-85 ! code;
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
									t : 207880026 ! id;
									t : 727003dd-509b-4d9a-b9ca-2c53dd09e370 ! sid;
									t : 35fbe475-5cb6-4351-8dbe-304dd84df966 ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP5 ! name;
									t : КЛ-0,4 кВ Л9 ! uname;
									t : TP010-0000788-16-01-05 ! code;
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
											t : 207880059 ! id;
											t : 7ba236db-1fd6-447d-b3bc-84207e6ce2d8 ! sid;
											t : 727003dd-509b-4d9a-b9ca-2c53dd09e370 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-01-05-10 ! code;
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
											t : 207880060 ! id;
											t : a85007a7-146e-4a03-800d-ca4b85d56a74 ! sid;
											t : 727003dd-509b-4d9a-b9ca-2c53dd09e370 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-01-05-85 ! code;
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
									t : 207880027 ! id;
									t : 6741db89-74af-4f8a-bba6-4f9f19a555bc ! sid;
									t : 35fbe475-5cb6-4351-8dbe-304dd84df966 ! parentsid;
									t : VTM_078 ! utype;
									t : CT1 ! name;
									t : Присоединение трансформатора Т1 ! uname;
									t : TP010-0000788-16-01-20 ! code;
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
											t : 207880061 ! id;
											t : 7c540d0b-0cac-4af1-85b1-5e10e5631fce ! sid;
											t : 6741db89-74af-4f8a-bba6-4f9f19a555bc ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : АВ-0,4 кВ ! uname;
											t : TP010-0000788-16-01-20-10 ! code;
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
											t : 207880056 ! id;
											t : 95993f0a-2bc1-45f1-9391-5fc32920d111 ! sid;
											t : 6741db89-74af-4f8a-bba6-4f9f19a555bc ! parentsid;
											t : VTM_046 ! utype;
											t : CA2 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-01-20-21 ! code;
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
											t : 207880076 ! id;
											t : daa731d3-4b1e-40b9-8e9d-95296ec00514 ! sid;
											t : 6741db89-74af-4f8a-bba6-4f9f19a555bc ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : TP010-0000788-16-01-20-75 ! code;
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
													t : 207880079 ! id;
													t : 976d8c18-cdd7-46a8-accb-d2b0a6a40c21 ! sid;
													t : daa731d3-4b1e-40b9-8e9d-95296ec00514 ! parentsid;
													t : VTM_014 ! utype;
													t : TT1 ! name;
													t : ТТ ! uname;
													t : TP010-0000788-16-01-20-75-05 ! code;
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
						seq {
						meta {
							t : 207880010 ! id;
							t : bbd04032-ab57-40cd-be38-48e99279d94f ! sid;
							t : ae811cf2-cae8-44b9-8d1e-11547b322226 ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS2 ! name;
							t : 2С-0,4 кВ ! uname;
							t : TP010-0000788-16-02 ! code;
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
									t : 207880025 ! id;
									t : d41fab65-8ea3-4df8-b94e-554701cf27fa ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : КЛ-0,4 кВ Л2 ! uname;
									t : TP010-0000788-16-02-01 ! code;
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
											t : 207880057 ! id;
											t : c2bdd8c7-e8cf-4397-8817-bcc7c023b0dc ! sid;
											t : d41fab65-8ea3-4df8-b94e-554701cf27fa ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : АВ-0,4 кВ ! uname;
											t : TP010-0000788-16-02-01-10 ! code;
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
									t : 207880023 ! id;
									t : 3e30b9a3-0d93-4b19-a1ea-30866273821c ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP2 ! name;
									t : ВЛ-0,4 кВ Л4 резерв ! uname;
									t : TP010-0000788-16-02-02 ! code;
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
											t : 207880040 ! id;
											t : c1c67a3c-6c24-408c-88bd-4a45c8aca40e ! sid;
											t : 3e30b9a3-0d93-4b19-a1ea-30866273821c ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-02-02-10 ! code;
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
											t : 207880053 ! id;
											t : fb060b0a-f52b-4fb5-b072-c225b045241d ! sid;
											t : 3e30b9a3-0d93-4b19-a1ea-30866273821c ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-02-02-85 ! code;
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
									t : 207880024 ! id;
									t : d13ee029-f365-4e25-a88c-7eb0cd58f83c ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP3 ! name;
									t : ВЛ-0,4 кВ Л6 резерв ! uname;
									t : TP010-0000788-16-02-03 ! code;
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
											t : 207880054 ! id;
											t : 276f6389-7c97-4e9e-8e73-83b5d3a112cd ! sid;
											t : d13ee029-f365-4e25-a88c-7eb0cd58f83c ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-02-03-10 ! code;
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
											t : 207880055 ! id;
											t : 2b8a0380-ff03-411e-b8d6-f1da745a0a51 ! sid;
											t : d13ee029-f365-4e25-a88c-7eb0cd58f83c ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-02-03-85 ! code;
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
									t : 207880022 ! id;
									t : 003b3dad-2714-463a-851a-a0b4958f0625 ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP4 ! name;
									t : ВЛ-0,4 кВ Л8 резерв ! uname;
									t : TP010-0000788-16-02-04 ! code;
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
											t : 207880052 ! id;
											t : 99cca798-af60-4fcb-8101-45d17eee3c6b ! sid;
											t : 003b3dad-2714-463a-851a-a0b4958f0625 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : АВ-0,4 кВ ! uname;
											t : TP010-0000788-16-02-04-10 ! code;
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
											t : 207880074 ! id;
											t : 56e371e5-bd98-4c31-abbc-f432815a7d14 ! sid;
											t : 003b3dad-2714-463a-851a-a0b4958f0625 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-02-04-85 ! code;
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
									t : 207880016 ! id;
									t : 8f54af9b-a3b7-430e-876f-38e699f16425 ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP5 ! name;
									t : ВЛ-0,4 кВ Л10 ! uname;
									t : TP010-0000788-16-02-05 ! code;
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
											t : 207880075 ! id;
											t : f95bbeec-1364-4201-b185-1308874feba9 ! sid;
											t : 8f54af9b-a3b7-430e-876f-38e699f16425 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-02-05-10 ! code;
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
											t : 207880042 ! id;
											t : 7b3b56f1-f33f-444f-bdea-67232b790d6d ! sid;
											t : 8f54af9b-a3b7-430e-876f-38e699f16425 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-02-05-85 ! code;
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
									t : 207880020 ! id;
									t : e3500f1b-f34d-4f33-8b4b-8951c3b2cf3f ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP6 ! name;
									t : КЛ-0,4 кВ Л12 ! uname;
									t : TP010-0000788-16-02-06 ! code;
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
											t : 207880048 ! id;
											t : 4a04afed-7044-4296-9736-0619688274f2 ! sid;
											t : e3500f1b-f34d-4f33-8b4b-8951c3b2cf3f ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-02-06-10 ! code;
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
											t : 207880049 ! id;
											t : d4466a5d-ce3f-487c-9295-57d24c1cef9c ! sid;
											t : e3500f1b-f34d-4f33-8b4b-8951c3b2cf3f ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-02-06-85 ! code;
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
									t : 207880021 ! id;
									t : b2103be3-0ed0-4094-ba18-dfe3f87c6c93 ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP7 ! name;
									t : КЛ-0,4 кВ Л11 резерв ! uname;
									t : TP010-0000788-16-02-07 ! code;
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
											t : 207880050 ! id;
											t : c444fbdd-dca9-44e8-a0a6-97e532ac33a9 ! sid;
											t : b2103be3-0ed0-4094-ba18-dfe3f87c6c93 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-02-07-10 ! code;
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
											t : 207880051 ! id;
											t : 1f9fa230-1143-42ca-b6dd-c01c159d6bc8 ! sid;
											t : b2103be3-0ed0-4094-ba18-dfe3f87c6c93 ! parentsid;
											t : VTM_055 ! utype;
											t : PRED1 ! name;
											t : ПН ! uname;
											t : TP010-0000788-16-02-07-85 ! code;
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
									t : 207880019 ! id;
									t : 8627de5f-f6f2-4286-83f6-656e329acb88 ! sid;
									t : bbd04032-ab57-40cd-be38-48e99279d94f ! parentsid;
									t : VTM_078 ! utype;
									t : CT1 ! name;
									t : Присоединение трансформатора Т2 ! uname;
									t : TP010-0000788-16-02-21 ! code;
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
											t : 207880046 ! id;
											t : 2a6583ba-eb85-4607-9b12-5b20f6523ebb ! sid;
											t : 8627de5f-f6f2-4286-83f6-656e329acb88 ! parentsid;
											t : VTM_046 ! utype;
											t : CA1 ! name;
											t : АВ-0,4 кВ ! uname;
											t : TP010-0000788-16-02-21-10 ! code;
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
											t : 207880047 ! id;
											t : 38e65cd5-9c1c-44e3-b39c-ee955cd4d899 ! sid;
											t : 8627de5f-f6f2-4286-83f6-656e329acb88 ! parentsid;
											t : VTM_046 ! utype;
											t : CA2 ! name;
											t : Р-0,4 кВ ! uname;
											t : TP010-0000788-16-02-21-21 ! code;
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
											t : 207880039 ! id;
											t : ba4c10f6-d0d1-4c8a-a2fa-be7c52c2a289 ! sid;
											t : 8627de5f-f6f2-4286-83f6-656e329acb88 ! parentsid;
											t : VTM_013 ! utype;
											t : SIZM1 ! name;
											t : Средства измерения ! uname;
											t : TP010-0000788-16-02-21-75 ! code;
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
													t : 207880078 ! id;
													t : d74d65ac-8657-4e7f-b044-3d3d2f764cbf ! sid;
													t : ba4c10f6-d0d1-4c8a-a2fa-be7c52c2a289 ! parentsid;
													t : VTM_014 ! utype;
													t : TT1 ! name;
													t : ТТ ! uname;
													t : TP010-0000788-16-02-21-75-05 ! code;
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
						seq {
						meta {
							t : 207880007 ! id;
							t : 57dfb0a4-0f50-4eca-9265-fce95a417dd4 ! sid;
							t : ae811cf2-cae8-44b9-8d1e-11547b322226 ! parentsid;
							t : VTM_098 ! utype;
							t : CSV1 ! name;
							t : Присоединение СВ1 ! uname;
							t : TP010-0000788-16-10 ! code;
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
									t : 207880018 ! id;
									t : d12526f5-2666-43b9-8c57-5325308c8852 ! sid;
									t : 57dfb0a4-0f50-4eca-9265-fce95a417dd4 ! parentsid;
									t : VTM_046 ! utype;
									t : CA1 ! name;
									t : Р-0,4 кВ ! uname;
									t : TP010-0000788-16-10-10 ! code;
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
									t : 207880035 ! id;
									t : 5518f238-f505-434e-bd3a-a8f9a559abee ! sid;
									t : 57dfb0a4-0f50-4eca-9265-fce95a417dd4 ! parentsid;
									t : VTM_046 ! utype;
									t : CA2 ! name;
									t : АВ-0,4 кВ ! uname;
									t : TP010-0000788-16-10-11 ! code;
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
									t : 207880015 ! id;
									t : 16c567fb-69f2-43e4-a23a-fdde39499094 ! sid;
									t : 57dfb0a4-0f50-4eca-9265-fce95a417dd4 ! parentsid;
									t : VTM_046 ! utype;
									t : CA3 ! name;
									t : Р-0,4 кВ ! uname;
									t : TP010-0000788-16-10-21 ! code;
									t : 10000cf1-0000-0000-c000-0000006d746c ! subcode;
									t : 90 ! type;
									t : 0.0 ! weight;
									t : 1 ! vcode;
									t : 3 ! number;
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
								t : "csv" ! connectType;
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
								def(myArena) : constraint("yequals_tomax","xy",0) ! myConstraintY;
								def(myArena) : get(myArena,"pinElement") ! myArenaElement;
								def(myArenaElement) : econstraint(myConstraintY,myArenaElement) ! myEConstraintY;
								def(myEConstraintY) : constraintpin("bus",myEConstraintY,myArena) ! myConstraintPin;
								def(myConstraintPin) : addConstraintPin(myArena,myConstraintPin) ! tmp;
								def(myArena) : postArenaItems(myArena) ! tmp;
								t : dropComplex() ! tmp;

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
					t : 207880002 ! id;
					t : e7a90297-a2aa-4a51-a8a2-c335a2893aec ! sid;
					t : 00c0c6df-831d-46e2-aaa8-94b880afa9ce ! parentsid;
					t : VTM_328 ! utype;
					t : Z_BUILD1 ! name;
					t : Здания ! uname;
					t : TP010-0000788-30 ! code;
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
							t : 207880009 ! id;
							t : b4b43a20-7901-422c-8849-c090fa49494b ! sid;
							t : e7a90297-a2aa-4a51-a8a2-c335a2893aec ! parentsid;
							t : VTM_330 ! utype;
							t : VTM_330_1 ! name;
							t : Строительная часть ЗТП-2503 ! uname;
							t : TP010-0000788-30-02 ! code;
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
					t : 207880004 ! id;
					t : d4fbcd3f-9051-4ae8-afdd-68b9a1859c8b ! sid;
					t : 00c0c6df-831d-46e2-aaa8-94b880afa9ce ! parentsid;
					t : VTM_057 ! utype;
					t : KZ1 ! name;
					t : Контур заземления ! uname;
					t : TP010-0000788-63 ! code;
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
