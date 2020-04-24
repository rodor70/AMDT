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
			t : 36936562-87a1-4ba0-8dd1-13af98985499 ! sid;
			t : VTM_215 ! utype;
			t : TP ! name;
			t : ППв 10 кВ 2090 ф.244-03 ! uname;
			t : RP010-0000760 ! code;
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
					t : 207600002 ! id;
					t : 4603a990-6917-40dd-a4c6-bfe15f506fdc ! sid;
					t : 36936562-87a1-4ba0-8dd1-13af98985499 ! parentsid;
					t : VTM_109 ! utype;
					t : VC1 ! name;
					t : РУ10 кВ ! uname;
					t : RP010-0000760-14 ! code;
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
							t : 207600003 ! id;
							t : fdc72870-c042-4e57-aa19-d71637e7280b ! sid;
							t : 4603a990-6917-40dd-a4c6-bfe15f506fdc ! parentsid;
							t : VTM_125 ! utype;
							t : SYSBUS1 ! name;
							t : 1С10 кВ ! uname;
							t : RP010-0000760-14-01 ! code;
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
									t : 207600008 ! id;
									t : d72d50ea-8d2b-497e-91f7-545a9fe5405f ! sid;
									t : fdc72870-c042-4e57-aa19-d71637e7280b ! parentsid;
									t : VTM_076 ! utype;
									t : CLEP1 ! name;
									t : ВЛ-10кв ф.244-03 Л 2659-2194 ! uname;
									t : RP010-0000760-14-01-01 ! code;
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
											t : 207600009 ! id;
											t : 46d12ccb-dd09-4d8d-8c65-a2f5e32ddcf0 ! sid;
											t : d72d50ea-8d2b-497e-91f7-545a9fe5405f ! parentsid;
											t : VTM_023 ! utype;
											t : VKLL1 ! name;
											t : В-10 кВ ! uname;
											t : RP010-0000760-14-01-01-11 ! code;
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
											t : 207600010 ! id;
											t : b43649a5-fb72-4f27-a1d2-050370511a54 ! sid;
											t : d72d50ea-8d2b-497e-91f7-545a9fe5405f ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE1 ! name;
											t : ППр2451 ! uname;
											t : RP010-0000760-14-01-01-22 ! code;
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
													t : 207600017 ! id;
													t : ed79d912-14ca-415c-8cfd-ad69531d9c3e ! sid;
													t : b43649a5-fb72-4f27-a1d2-050370511a54 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : RP010-0000760-14-01-01-22-01 ! code;
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
											t : 207600013 ! id;
											t : 0511eec5-fc1b-4fff-990c-b6c4f69c5d98 ! sid;
											t : d72d50ea-8d2b-497e-91f7-545a9fe5405f ! parentsid;
											t : VTM_290 ! utype;
											t : RLINE2 ! name;
											t : ППр2452 ! uname;
											t : RP010-0000760-14-01-01-23 ! code;
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
													t : 207600016 ! id;
													t : 214160df-94f2-4f43-9f65-4eb00a1c3297 ! sid;
													t : 0511eec5-fc1b-4fff-990c-b6c4f69c5d98 ! parentsid;
													t : VTM_027 ! utype;
													t : ZN1 ! name;
													t : Заземляющий нож ! uname;
													t : RP010-0000760-14-01-01-23-01 ! code;
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
									t : 207600004 ! id;
									t : 2e8102c4-1871-4a5d-9518-ed6e290a8ead ! sid;
									t : fdc72870-c042-4e57-aa19-d71637e7280b ! parentsid;
									t : VTM_081 ! utype;
									t : CTN1 ! name;
									t : Присоединение ТН ! uname;
									t : RP010-0000760-14-01-40 ! code;
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
											t : 207600011 ! id;
											t : 07018175-50e1-4440-a358-0cc20c15aa9e ! sid;
											t : 2e8102c4-1871-4a5d-9518-ed6e290a8ead ! parentsid;
											t : VTM_084 ! utype;
											t : TSN1 ! name;
											t : Трансформатор ОЛС ! uname;
											t : RP010-0000760-14-01-40-01 ! code;
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
										t : "ctn" ! connectType;
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
									t : 207600005 ! id;
									t : fd2a799f-b091-44da-950f-0fdf67bdf503 ! sid;
									t : fdc72870-c042-4e57-aa19-d71637e7280b ! parentsid;
									t : VTM_083 ! utype;
									t : CTSN1 ! name;
									t : Присоединение ТН ! uname;
									t : RP010-0000760-14-01-50 ! code;
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
											t : 207600012 ! id;
											t : 405beede-3346-4dc1-a365-91c52dc6a87a ! sid;
											t : fd2a799f-b091-44da-950f-0fdf67bdf503 ! parentsid;
											t : VTM_084 ! utype;
											t : TSN1 ! name;
											t : Трансформатор ОЛС ! uname;
											t : RP010-0000760-14-01-50-50 ! code;
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
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
									t : 207600006 ! id;
									t : ac81ebd8-abee-406f-b7c4-e5e552777680 ! sid;
									t : fdc72870-c042-4e57-aa19-d71637e7280b ! parentsid;
									t : VTM_217 ! utype;
									t : CRZ1 ! name;
									t : Присоединение ОПН ! uname;
									t : RP010-0000760-14-01-70 ! code;
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
											t : 207600014 ! id;
											t : 5616f7b1-13f6-465c-ae18-0d6bd90618a1 ! sid;
											t : ac81ebd8-abee-406f-b7c4-e5e552777680 ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : ОПН ! uname;
											t : RP010-0000760-14-01-70-70 ! code;
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
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
									t : 207600007 ! id;
									t : 7e8f426b-ce53-43c9-a65d-0a16909c2aca ! sid;
									t : fdc72870-c042-4e57-aa19-d71637e7280b ! parentsid;
									t : VTM_217 ! utype;
									t : CRZ2 ! name;
									t : Присоединение ОПН ! uname;
									t : RP010-0000760-14-01-71 ! code;
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
											t : 207600015 ! id;
											t : 4c46524e-f4ec-4820-9423-957530095a3d ! sid;
											t : 7e8f426b-ce53-43c9-a65d-0a16909c2aca ! parentsid;
											t : VTM_175 ! utype;
											t : RZLEP1 ! name;
											t : ОПН ! uname;
											t : RP010-0000760-14-01-71-70 ! code;
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
										t : $checkPlace+"checked"+"parentUtype"+.parent.#utype+"myUtype"+#utype ! invoke;
										t : $MsgBadStru+pathname+" "+#utype ! errMsg;
										checked<1 : map(rchilds,"set(item,'use',f)") ! tmp;
										checked<1 : errMsg ! ln,err;
										too : errMsg+rn ! buffer;
										checked<1 : 0 ! use,stop;
										t : $setQvoltage ! perform;
										t : superUtypes($VCATRu) ! lcomplex;
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
				seq {
				meta {
					t : 207600001 ! id;
					t : fb895bd1-13aa-42ec-a20f-86fb1ec46694 ! sid;
					t : 36936562-87a1-4ba0-8dd1-13af98985499 ! parentsid;
					t : VTM_057 ! utype;
					t : KZ1 ! name;
					t : Контур заземления ! uname;
					t : RP010-0000760-63 ! code;
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
