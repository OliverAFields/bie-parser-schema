#file edited by fixSpecies.jl to fix species:49

#######################################################
# Generated programmatically by CSV2JuliaDiffEq.      #
# http://github.com/SiFTW/CSV2JuliaDiffEq             #
#######################################################
# generated from:
#    reactions file: combinedModelDefinitionFiles/reactions.csv
#    parameters file file: combinedModelDefinitionFiles/parameters.csv
#    rate law file: combinedModelDefinitionFiles/rateLaws.csv
#
# Statistics:
#    Equations:130
#    Parameters:480
#######################################################



function odeModel_fixed(dy,y,h,p,t)
	IkBa=maximum([y[1],0])
	IKK_on=maximum([y[2],0])
	IkBb=maximum([y[3],0])
	IkBe=maximum([y[4],0])
	RelAp50IkBa=maximum([y[5],0])
	RelAp50=maximum([y[6],0])
	RelAp50IkBb=maximum([y[7],0])
	RelAp50IkBe=maximum([y[8],0])
	RelBp50IkBa=maximum([y[9],0])
	RelBp50=maximum([y[10],0])
	RelBp50IkBb=maximum([y[11],0])
	RelBp50IkBe=maximum([y[12],0])
	RelBp52IkBa=maximum([y[13],0])
	RelBp52=maximum([y[14],0])
	RelBp52IkBb=maximum([y[15],0])
	RelBp52IkBe=maximum([y[16],0])
	cRelp50IkBa=maximum([y[17],0])
	cRelp50=maximum([y[18],0])
	cRelp50IkBb=maximum([y[19],0])
	cRelp50IkBe=maximum([y[20],0])
	cRelp52IkBa=maximum([y[21],0])
	cRelp52=maximum([y[22],0])
	cRelp52IkBb=maximum([y[23],0])
	cRelp52IkBe=maximum([y[24],0])
	RelAp52IkBa=maximum([y[25],0])
	RelAp52=maximum([y[26],0])
	RelAp52IkBb=maximum([y[27],0])
	RelAp52IkBe=maximum([y[28],0])
	TAK1=maximum([y[29],0])
	TAK1p=maximum([y[30],0])
	Cp=maximum([y[31],0])
	CpB=maximum([y[32],0])
	CpM=maximum([y[33],0])
	CpBM=maximum([y[34],0])
	TRAF6s=maximum([y[35],0])
	TAK1C=maximum([y[36],0])
	TAK1pC=maximum([y[37],0])
	tA20=maximum([y[38],0])
	RelAnp50n=maximum([y[39],0])
	A20=maximum([y[40],0])
	IKK_off=maximum([y[41],0])
	C=maximum([y[42],0])
	CB=maximum([y[43],0])
	CM=maximum([y[44],0])
	CBM=maximum([y[45],0])
	B=maximum([y[46],0])
	M=maximum([y[47],0])
	BM=maximum([y[48],0])
	CpGmedia=maximum([y[49],0])
	CpG1=maximum([y[50],0])
	CpG=maximum([y[51],0])
	TLR9=maximum([y[52],0])
	CpGTLR9=maximum([y[53],0])
	MYD88=maximum([y[54],0])
	MYD88s=maximum([y[55],0])
	TRAF6=maximum([y[56],0])
	IKK_i=maximum([y[57],0])
	RelA=maximum([y[58],0])
	p50=maximum([y[59],0])
	RelAn=maximum([y[60],0])
	p50n=maximum([y[61],0])
	p52=maximum([y[62],0])
	p52n=maximum([y[63],0])
	RelAnp52n=maximum([y[64],0])
	RelB=maximum([y[65],0])
	RelBn=maximum([y[66],0])
	RelBnp52n=maximum([y[67],0])
	RelBnp50n=maximum([y[68],0])
	cRel=maximum([y[69],0])
	cReln=maximum([y[70],0])
	cRelnp50n=maximum([y[71],0])
	cRelnp52n=maximum([y[72],0])
	p50p50=maximum([y[73],0])
	p50np50n=maximum([y[74],0])
	p52p52=maximum([y[75],0])
	p52np52n=maximum([y[76],0])
	IkBan=maximum([y[77],0])
	RelAnp50nIkBan=maximum([y[78],0])
	IkBbn=maximum([y[79],0])
	RelAnp50nIkBbn=maximum([y[80],0])
	IkBen=maximum([y[81],0])
	RelAnp50nIkBen=maximum([y[82],0])
	IkBd=maximum([y[83],0])
	RelAp50IkBd=maximum([y[84],0])
	IkBdn=maximum([y[85],0])
	RelAnp50nIkBdn=maximum([y[86],0])
	RelBnp50nIkBan=maximum([y[87],0])
	RelBnp50nIkBbn=maximum([y[88],0])
	RelBnp50nIkBen=maximum([y[89],0])
	RelBp50IkBd=maximum([y[90],0])
	RelBnp50nIkBdn=maximum([y[91],0])
	RelBnp52nIkBan=maximum([y[92],0])
	RelBnp52nIkBbn=maximum([y[93],0])
	RelBnp52nIkBen=maximum([y[94],0])
	RelBp52IkBd=maximum([y[95],0])
	RelBnp52nIkBdn=maximum([y[96],0])
	cRelnp50nIkBan=maximum([y[97],0])
	cRelnp50nIkBbn=maximum([y[98],0])
	cRelnp50nIkBen=maximum([y[99],0])
	cRelp50IkBd=maximum([y[100],0])
	cRelnp50nIkBdn=maximum([y[101],0])
	cRelnp52nIkBan=maximum([y[102],0])
	cRelnp52nIkBbn=maximum([y[103],0])
	cRelnp52nIkBen=maximum([y[104],0])
	cRelp52IkBd=maximum([y[105],0])
	cRelnp52nIkBdn=maximum([y[106],0])
	RelAnp52nIkBan=maximum([y[107],0])
	RelAnp52nIkBbn=maximum([y[108],0])
	RelAnp52nIkBen=maximum([y[109],0])
	RelAp52IkBd=maximum([y[110],0])
	RelAnp52nIkBdn=maximum([y[111],0])
	tIkBb=maximum([y[112],0])
	tIkBa=maximum([y[113],0])
	tIkBe=maximum([y[114],0])
	tRelA=maximum([y[115],0])
	tp50=maximum([y[116],0])
	tRelB=maximum([y[117],0])
	tp100=maximum([y[118],0])
	tcRel=maximum([y[119],0])
	p100=maximum([y[120],0])
	p100n=maximum([y[121],0])
	NIK=maximum([y[122],0])
	p100NIK=maximum([y[123],0])
	IkBdNIK=maximum([y[124],0])
	RelAp50IkBdNIK=maximum([y[125],0])
	RelBp50IkBdNIK=maximum([y[126],0])
	RelBp52IkBdNIK=maximum([y[127],0])
	cRelp50IkBdNIK=maximum([y[128],0])
	cRelp52IkBdNIK=maximum([y[129],0])
	RelAp52IkBdNIK=maximum([y[130],0])
	tau_RelAnp50n_0=15
	tau_RelAnp52n_1=15
	tau_cRelnp50n_2=15
	tau_cRelnp52n_3=15
	tau_RelAnp50n_4=15
	tau_RelAnp52n_5=15
	tau_cRelnp50n_6=15
	tau_cRelnp52n_7=15
	tau_RelAnp50n_8=45
	tau_RelAnp52n_9=45
	tau_cRelnp50n_10=45
	tau_cRelnp52n_11=45
	tau_RelAnp50n_12=45
	tau_RelAnp52n_13=45
	tau_cRelnp50n_14=45
	tau_cRelnp52n_15=45
	tau_RelAnp50n_16=60
	tau_RelAnp52n_17=60
	tau_cRelnp50n_18=60
	tau_cRelnp52n_19=60
	tau_RelAnp50n_20=60
	tau_RelAnp52n_21=60
	tau_cRelnp50n_22=60
	tau_cRelnp52n_23=60
	tau_RelAnp50n_24=60
	tau_RelAnp52n_25=60
	tau_cRelnp50n_26=60
	tau_cRelnp52n_27=60
	tau_RelAnp50n_28=60
	tau_RelAnp52n_29=60
	tau_cRelnp50n_30=60
	tau_cRelnp52n_31=60
	tau_RelAnp50n_32=240
	tau_RelAnp52n_33=240
	tau_cRelnp50n_34=240
	tau_cRelnp52n_35=240
	tau_RelAnp50n_36=240
	tau_RelAnp52n_37=240
	tau_cRelnp50n_38=240
	tau_cRelnp52n_39=240
	tau_RelAnp50n_40=720
	tau_RelAnp52n_41=720
	tau_cRelnp50n_42=720
	tau_cRelnp52n_43=720
	tau_RelAnp50n_44=720
	tau_RelAnp52n_45=720
	tau_cRelnp50n_46=720
	tau_cRelnp52n_47=720
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	histindex_RelAnp50n=39
	histindex_RelAnp52n=64
	histindex_cRelnp50n=71
	histindex_cRelnp52n=72
	#IkBa
	dy[1]= -IkBa * p[3] *IKK_on - IkBa * p[7] - IkBa * RelAp50 * p[261] - IkBa * RelBp50 * p[265] - IkBa * RelBp52 * p[269] - IkBa * cRelp50 * p[277] - IkBa * cRelp52 * p[281] - IkBa * RelAp52 * p[285] + RelAp50IkBa * p[289] + RelBp50IkBa * p[293] + RelBp52IkBa * p[297] + cRelp50IkBa * p[305] + cRelp52IkBa * p[309] + RelAp52IkBa * p[313] + RelAp50IkBa * p[379] + RelBp50IkBa * p[379] + RelBp52IkBa * p[379] + cRelp50IkBa * p[379] + cRelp52IkBa * p[379] + RelAp52IkBa * p[379] + tIkBa * p[405] - IkBa * p[410] + IkBan * p[414]
	#IKK_on
	dy[2]=0 - p[38] * A20 * (IKK_on / (p[41] * IKK_on)) - IKK_on*p[36] - IKK_on*p[37] + IKK_off*p[200]*TAK1p + IKK_off*p[200]*TAK1pC - IKK_on*p[201]
	#IkBb
	dy[3]= -IkBb * p[4] *IKK_on - IkBb * p[8] - IkBb * RelAp50 * p[262] - IkBb * RelBp50 * p[266] - IkBb * RelBp52 * p[270] - IkBb * cRelp50 * p[278] - IkBb * cRelp52 * p[282] - IkBb * RelAp52 * p[286] + RelAp50IkBb * p[290] + RelBp50IkBb * p[294] + RelBp52IkBb * p[298] + cRelp50IkBb * p[306] + cRelp52IkBb * p[310] + RelAp52IkBb * p[314] + RelAp50IkBb * p[379] + RelBp50IkBb * p[379] + RelBp52IkBb * p[379] + cRelp50IkBb * p[379] + cRelp52IkBb * p[379] + RelAp52IkBb * p[379] + tIkBb * p[405] - IkBb * p[411] + IkBbn * p[415]
	#IkBe
	dy[4]= -IkBe * p[5] *IKK_on - IkBe * p[9] - IkBe * RelAp50 * p[263] - IkBe * RelBp50 * p[267] - IkBe * RelBp52 * p[271] - IkBe * cRelp50 * p[279] - IkBe * cRelp52 * p[283] - IkBe * RelAp52 * p[287] + RelAp50IkBe * p[291] + RelBp50IkBe * p[295] + RelBp52IkBe * p[299] + cRelp50IkBe * p[307] + cRelp52IkBe * p[311] + RelAp52IkBe * p[315] + RelAp50IkBe * p[379] + RelBp50IkBe * p[379] + RelBp52IkBe * p[379] + cRelp50IkBe * p[379] + cRelp52IkBe * p[379] + RelAp52IkBe * p[379] + tIkBe * p[405] - IkBe * p[412] + IkBen * p[416]
	#RelAp50IkBa
	dy[5]= -RelAp50IkBa * p[3] *IKK_on - RelAp50IkBa * p[6] + IkBa * RelAp50 * p[261] - RelAp50IkBa * p[289] - RelAp50IkBa * p[317] + RelAnp50nIkBan * p[345] - RelAp50IkBa * p[379]
	#RelAp50
	dy[6]= + RelAp50IkBa * p[3] *IKK_on + RelAp50IkBb * p[4] *IKK_on + RelAp50IkBe * p[5] *IKK_on + RelAp50IkBa * p[6] + RelAp50IkBb * p[6] + RelAp50IkBe * p[6] + RelA * p50 * p[221] - RelAp50 * p[239] - RelAp50 * p[257] + RelAnp50n * p[259] - RelAp50 * p[260] - IkBa * RelAp50 * p[261] - IkBb * RelAp50 * p[262] - IkBe * RelAp50 * p[263] - IkBd * RelAp50 * p[264] + RelAp50IkBa * p[289] + RelAp50IkBb * p[290] + RelAp50IkBe * p[291] + RelAp50IkBd * p[292] + RelAp50IkBd * p[378] + RelAp50IkBdNIK * p[474] + RelAp50IkBdNIK * p[378]
	#RelAp50IkBb
	dy[7]= -RelAp50IkBb * p[4] *IKK_on - RelAp50IkBb * p[6] + IkBb * RelAp50 * p[262] - RelAp50IkBb * p[290] - RelAp50IkBb * p[318] + RelAnp50nIkBbn * p[346] - RelAp50IkBb * p[379]
	#RelAp50IkBe
	dy[8]= -RelAp50IkBe * p[5] *IKK_on - RelAp50IkBe * p[6] + IkBe * RelAp50 * p[263] - RelAp50IkBe * p[291] - RelAp50IkBe * p[319] + RelAnp50nIkBen * p[347] - RelAp50IkBe * p[379]
	#RelBp50IkBa
	dy[9]= -RelBp50IkBa * p[3] *IKK_on - RelBp50IkBa * p[6] + IkBa * RelBp50 * p[265] - RelBp50IkBa * p[293] - RelBp50IkBa * p[321] + RelBnp50nIkBan * p[349] - RelBp50IkBa * p[379]
	#RelBp50
	dy[10]= + RelBp50IkBa * p[3] *IKK_on + RelBp50IkBb * p[4] *IKK_on + RelBp50IkBe * p[5] *IKK_on + RelBp50IkBa * p[6] + RelBp50IkBb * p[6] + RelBp50IkBe * p[6] + RelB * p50 * p[227] - RelBp50 * p[245] - RelBp50 * p[257] + RelBnp50n * p[259] - RelBp50 * p[260] - IkBa * RelBp50 * p[265] - IkBb * RelBp50 * p[266] - IkBe * RelBp50 * p[267] - IkBd * RelBp50 * p[268] + RelBp50IkBa * p[293] + RelBp50IkBb * p[294] + RelBp50IkBe * p[295] + RelBp50IkBd * p[296] + RelBp50IkBd * p[378] + RelBp50IkBdNIK * p[474] + RelBp50IkBdNIK * p[378]
	#RelBp50IkBb
	dy[11]= -RelBp50IkBb * p[4] *IKK_on - RelBp50IkBb * p[6] + IkBb * RelBp50 * p[266] - RelBp50IkBb * p[294] - RelBp50IkBb * p[322] + RelBnp50nIkBbn * p[350] - RelBp50IkBb * p[379]
	#RelBp50IkBe
	dy[12]= -RelBp50IkBe * p[5] *IKK_on - RelBp50IkBe * p[6] + IkBe * RelBp50 * p[267] - RelBp50IkBe * p[295] - RelBp50IkBe * p[323] + RelBnp50nIkBen * p[351] - RelBp50IkBe * p[379]
	#RelBp52IkBa
	dy[13]= -RelBp52IkBa * p[3] *IKK_on - RelBp52IkBa * p[6] + IkBa * RelBp52 * p[269] - RelBp52IkBa * p[297] - RelBp52IkBa * p[325] + RelBnp52nIkBan * p[353] - RelBp52IkBa * p[379]
	#RelBp52
	dy[14]= + RelBp52IkBa * p[3] *IKK_on + RelBp52IkBb * p[4] *IKK_on + RelBp52IkBe * p[5] *IKK_on + RelBp52IkBa * p[6] + RelBp52IkBb * p[6] + RelBp52IkBe * p[6] + RelB * p52 * p[225] - RelBp52 * p[243] - RelBp52 * p[257] + RelBnp52n * p[259] - RelBp52 * p[260] - IkBa * RelBp52 * p[269] - IkBb * RelBp52 * p[270] - IkBe * RelBp52 * p[271] - IkBd * RelBp52 * p[272] + RelBp52IkBa * p[297] + RelBp52IkBb * p[298] + RelBp52IkBe * p[299] + RelBp52IkBd * p[300] + RelBp52IkBd * p[378] + RelBp52IkBdNIK * p[474] + RelBp52IkBdNIK * p[378]
	#RelBp52IkBb
	dy[15]= -RelBp52IkBb * p[4] *IKK_on - RelBp52IkBb * p[6] + IkBb * RelBp52 * p[270] - RelBp52IkBb * p[298] - RelBp52IkBb * p[326] + RelBnp52nIkBbn * p[354] - RelBp52IkBb * p[379]
	#RelBp52IkBe
	dy[16]= -RelBp52IkBe * p[5] *IKK_on - RelBp52IkBe * p[6] + IkBe * RelBp52 * p[271] - RelBp52IkBe * p[299] - RelBp52IkBe * p[327] + RelBnp52nIkBen * p[355] - RelBp52IkBe * p[379]
	#cRelp50IkBa
	dy[17]= -cRelp50IkBa * p[3] *IKK_on - cRelp50IkBa * p[6] + IkBa * cRelp50 * p[277] - cRelp50IkBa * p[305] - cRelp50IkBa * p[333] + cRelnp50nIkBan * p[361] - cRelp50IkBa * p[379]
	#cRelp50
	dy[18]= + cRelp50IkBa * p[3] *IKK_on + cRelp50IkBb * p[4] *IKK_on + cRelp50IkBe * p[5] *IKK_on + cRelp50IkBa * p[6] + cRelp50IkBb * p[6] + cRelp50IkBe * p[6] + cRel * p50 * p[229] - cRelp50 * p[247] - cRelp50 * p[257] + cRelnp50n * p[259] - cRelp50 * p[260] - IkBa * cRelp50 * p[277] - IkBb * cRelp50 * p[278] - IkBe * cRelp50 * p[279] - IkBd * cRelp50 * p[280] + cRelp50IkBa * p[305] + cRelp50IkBb * p[306] + cRelp50IkBe * p[307] + cRelp50IkBd * p[308] + cRelp50IkBd * p[378] + cRelp50IkBdNIK * p[474] + cRelp50IkBdNIK * p[378]
	#cRelp50IkBb
	dy[19]= -cRelp50IkBb * p[4] *IKK_on - cRelp50IkBb * p[6] + IkBb * cRelp50 * p[278] - cRelp50IkBb * p[306] - cRelp50IkBb * p[334] + cRelnp50nIkBbn * p[362] - cRelp50IkBb * p[379]
	#cRelp50IkBe
	dy[20]= -cRelp50IkBe * p[5] *IKK_on - cRelp50IkBe * p[6] + IkBe * cRelp50 * p[279] - cRelp50IkBe * p[307] - cRelp50IkBe * p[335] + cRelnp50nIkBen * p[363] - cRelp50IkBe * p[379]
	#cRelp52IkBa
	dy[21]= -cRelp52IkBa * p[3] *IKK_on - cRelp52IkBa * p[6] + IkBa * cRelp52 * p[281] - cRelp52IkBa * p[309] - cRelp52IkBa * p[337] + cRelnp52nIkBan * p[365] - cRelp52IkBa * p[379]
	#cRelp52
	dy[22]= + cRelp52IkBa * p[3] *IKK_on + cRelp52IkBb * p[4] *IKK_on + cRelp52IkBe * p[5] *IKK_on + cRelp52IkBa * p[6] + cRelp52IkBb * p[6] + cRelp52IkBe * p[6] + cRel * p52 * p[231] - cRelp52 * p[249] - cRelp52 * p[257] + cRelnp52n * p[259] - cRelp52 * p[260] - IkBa * cRelp52 * p[281] - IkBb * cRelp52 * p[282] - IkBe * cRelp52 * p[283] - IkBd * cRelp52 * p[284] + cRelp52IkBa * p[309] + cRelp52IkBb * p[310] + cRelp52IkBe * p[311] + cRelp52IkBd * p[312] + cRelp52IkBd * p[378] + cRelp52IkBdNIK * p[474] + cRelp52IkBdNIK * p[378]
	#cRelp52IkBb
	dy[23]= -cRelp52IkBb * p[4] *IKK_on - cRelp52IkBb * p[6] + IkBb * cRelp52 * p[282] - cRelp52IkBb * p[310] - cRelp52IkBb * p[338] + cRelnp52nIkBbn * p[366] - cRelp52IkBb * p[379]
	#cRelp52IkBe
	dy[24]= -cRelp52IkBe * p[5] *IKK_on - cRelp52IkBe * p[6] + IkBe * cRelp52 * p[283] - cRelp52IkBe * p[311] - cRelp52IkBe * p[339] + cRelnp52nIkBen * p[367] - cRelp52IkBe * p[379]
	#RelAp52IkBa
	dy[25]= -RelAp52IkBa * p[3] *IKK_on - RelAp52IkBa * p[6] + IkBa * RelAp52 * p[285] - RelAp52IkBa * p[313] - RelAp52IkBa * p[341] + RelAnp52nIkBan * p[369] - RelAp52IkBa * p[379]
	#RelAp52
	dy[26]= + RelAp52IkBa * p[3] *IKK_on + RelAp52IkBb * p[4] *IKK_on + RelAp52IkBe * p[5] *IKK_on + RelAp52IkBa * p[6] + RelAp52IkBb * p[6] + RelAp52IkBe * p[6] + RelA * p52 * p[223] - RelAp52 * p[241] - RelAp52 * p[257] + RelAnp52n * p[259] - RelAp52 * p[260] - IkBa * RelAp52 * p[285] - IkBb * RelAp52 * p[286] - IkBe * RelAp52 * p[287] - IkBd * RelAp52 * p[288] + RelAp52IkBa * p[313] + RelAp52IkBb * p[314] + RelAp52IkBe * p[315] + RelAp52IkBd * p[316] + RelAp52IkBd * p[378] + RelAp52IkBdNIK * p[474] + RelAp52IkBdNIK * p[378]
	#RelAp52IkBb
	dy[27]= -RelAp52IkBb * p[4] *IKK_on - RelAp52IkBb * p[6] + IkBb * RelAp52 * p[286] - RelAp52IkBb * p[314] - RelAp52IkBb * p[342] + RelAnp52nIkBbn * p[370] - RelAp52IkBb * p[379]
	#RelAp52IkBe
	dy[28]= -RelAp52IkBe * p[5] *IKK_on - RelAp52IkBe * p[6] + IkBe * RelAp52 * p[287] - RelAp52IkBe * p[315] - RelAp52IkBe * p[343] + RelAnp52nIkBen * p[371] - RelAp52IkBe * p[379]
	#TAK1
	dy[29]= -TAK1*p[12] - (Cp*TAK1*p[13])/(TAK1+p[17]) - (CpB*TAK1*p[14])/(TAK1+p[18]) - (CpM*TAK1*p[15])/(TAK1+p[19]) - (CpBM*TAK1*p[16])/(TAK1+p[20]) - (TRAF6s*TAK1*p[27])/(TAK1+p[28]) + TAK1p*p[26] - p[114] * ( CB + CpB ) * TAK1 - p[115] * ( CM + CpM ) * TAK1 - p[116] * ( CBM + CpBM ) * TAK1 + TAK1C*p[120]
	#TAK1p
	dy[30]= + TAK1*p[12] + (Cp*TAK1*p[13])/(TAK1+p[17]) + (CpB*TAK1*p[14])/(TAK1+p[18]) + (CpM*TAK1*p[15])/(TAK1+p[19]) + (CpBM*TAK1*p[16])/(TAK1+p[20]) + (TRAF6s*TAK1*p[27])/(TAK1+p[28]) - TAK1p*p[26] - p[117] * ( CB + CpB ) * TAK1p - p[118] * ( CM + CpM ) * TAK1p - p[119] * ( CBM + CpBM ) * TAK1p + TAK1pC*p[121]
	#Cp
	dy[31]=0 + C*p[42] + (p[162](t)*p[46])*(C/(p[50]+C)) - (Cp * p[54]) / (Cp + p[58]) - Cp * B * p[69] + CpB*p[78] - Cp * M * p[70] + CpM*p[79] - Cp * BM * p[68] + CpBM*p[83]
	#CpB
	dy[32]=0 + CB*p[43] + (p[162](t)*p[47])*(CB/(p[51]+CB)) - (CpB * p[55]) / (CpB + p[59]) + Cp * B * p[69] - CpB*p[78] - CpB * M * p[71] + CpBM*p[80]
	#CpM
	dy[33]=0 + CM*p[44] + (p[162](t)*p[48])*(CM/(p[52]+CM)) - (CpM * p[56]) / (CpM + p[60]) + Cp * M * p[70] - CpM*p[79] - CpM * B * p[72] + CpBM*p[81]
	#CpBM
	dy[34]=0 + CBM*p[45] + (p[162](t)*p[49])*(CBM/(p[53]+CBM)) - (CpBM * p[57]) / (CpBM + p[61]) + CpB * M * p[71] - CpBM*p[80] + CpM * B * p[72] - CpBM*p[81] + Cp * BM * p[68] - CpBM*p[83]
	#TRAF6s
	dy[35]=0 + TRAF6*p[195]*MYD88s - TRAF6s*p[197]
	#TAK1C
	dy[36]= -(TRAF6s*TAK1C*p[27])/(TAK1C+p[28]) + (TAK1pC * p[112]) / (TAK1pC + p[113]) + p[114] * ( CB + CpB ) * TAK1 + p[115] * ( CM + CpM ) * TAK1 + p[116] * ( CBM + CpBM ) * TAK1 - TAK1C*p[120]
	#TAK1pC
	dy[37]= + (TRAF6s*TAK1C*p[27])/(TAK1C+p[28]) - (TAK1pC * p[112]) / (TAK1pC + p[113]) + p[117] * ( CB + CpB ) * TAK1p + p[118] * ( CM + CpM ) * TAK1p + p[119] * ( CBM + CpBM ) * TAK1p - TAK1pC*p[121]
	#tA20
	dy[38]= + p[29] + p[31] * RelAnp50n^p[32] - tA20 * p[30]
	#RelAnp50n
	dy[39]=0 + RelAn * p50n * p[222] - RelAnp50n * p[240] + RelAp50 * p[257] - RelAnp50n * p[259] - RelAnp50n * p[260] - IkBan * RelAnp50n * p[261] - IkBbn * RelAnp50n * p[262] - IkBen * RelAnp50n * p[263] - IkBdn * RelAnp50n * p[264] + RelAnp50nIkBan * p[289] + RelAnp50nIkBbn * p[290] + RelAnp50nIkBen * p[291] + RelAnp50nIkBdn * p[292] + RelAnp50nIkBan * p[378] + RelAnp50nIkBbn * p[378] + RelAnp50nIkBen * p[378] + RelAnp50nIkBdn * p[378]
	#A20
	dy[40]= + p[33] * tA20 - A20 * p[34]
	#IKK_off
	dy[41]= + p[38] * A20 * (IKK_on / (p[41] * IKK_on)) + IKK_on*p[36] + IKK_on*p[37] - IKK_off*p[200]*TAK1p - IKK_off*p[200]*TAK1pC + IKK_i*p[203]
	#C
	dy[42]= -C*p[42] - (p[162](t)*p[46])*(C/(p[50]+C)) + (Cp * p[54]) / (Cp + p[58]) - C * B * p[63] + CB*p[74] - C * M * p[64] + CM*p[75] - C * BM * p[67] + CBM*p[82]
	#CB
	dy[43]= -CB*p[43] - (p[162](t)*p[47])*(CB/(p[51]+CB)) + (CpB * p[55]) / (CpB + p[59]) + C * B * p[63] - CB*p[74] - CB * M * p[65] + CBM*p[76]
	#CM
	dy[44]= -CM*p[44] - (p[162](t)*p[48])*(CM/(p[52]+CM)) + (CpM * p[56]) / (CpM + p[60]) + C * M * p[64] - CM*p[75] - CM * B * p[66] + CBM*p[77]
	#CBM
	dy[45]= -CBM*p[45] - (p[162](t)*p[49])*(CBM/(p[53]+CBM)) + (CpBM * p[57]) / (CpBM + p[61]) + CB * M * p[65] - CBM*p[76] + CM * B * p[66] - CBM*p[77] + C * BM * p[67] - CBM*p[82]
	#B
	dy[46]= -B * M * p[62] + BM*p[73] - C * B * p[63] + CB*p[74] - Cp * B * p[69] + CpB*p[78] - CM * B * p[66] + CBM*p[77] - CpM * B * p[72] + CpBM*p[81]
	#M
	dy[47]= -B * M * p[62] + BM*p[73] - C * M * p[64] + CM*p[75] - Cp * M * p[70] + CpM*p[79] - CB * M * p[65] + CBM*p[76] - CpB * M * p[71] + CpBM*p[80]
	#BM
	dy[48]= + B * M * p[62] - BM*p[73] - C * BM * p[67] + CBM*p[82] - Cp * BM * p[68] + CpBM*p[83]
	#CpGmedia
	#dy[49]= + p[167](t) - CpGmedia * p[168]
	dy[49]=0

	#CpG1
	dy[50]= + CpGmedia * p[168] - CpG1 * p[168] + CpG * p[169]
	#CpG
	dy[51]= + CpG1 * p[168] - CpG * p[169] - CpG*TLR9*p[170]
	#TLR9
	dy[52]= -CpG*TLR9*p[170] + CpGTLR9*p[171] + p[176] - TLR9*p[173]
	#CpGTLR9
	dy[53]= + CpG*TLR9*p[170] - CpGTLR9*p[171]
	#MYD88
	dy[54]= -(p[188]*MYD88*(CpGTLR9^p[189]))/((CpGTLR9^p[189])+(p[191]^p[189])) + MYD88s*p[192]
	#MYD88s
	dy[55]= + (p[188]*MYD88*(CpGTLR9^p[189]))/((CpGTLR9^p[189])+(p[191]^p[189])) - MYD88s*p[192]
	#TRAF6
	dy[56]= -TRAF6*p[195]*MYD88s + TRAF6s*p[197]
	#IKK_i
	dy[57]= + IKK_on*p[201] - IKK_i*p[203]
	#RelA
	dy[58]= -RelA * p50 * p[221] - RelA * p52 * p[223] + RelAp50 * p[239] + RelAp52 * p[241] + tRelA * p[466] - RelA * p[467]
	#p50
	dy[59]= -RelA * p50 * p[221] - RelB * p50 * p[227] - cRel * p50 * p[229] - p50 * p50 * p[233] - p50 * p50 * p[233] + RelAp50 * p[239] + RelBp50 * p[245] + cRelp50 * p[247] + p50p50 * p[251] + p50p50 * p[251] + tp50 * p[466] - p50 * p[467]
	#RelAn
	dy[60]= -RelAn * p50n * p[222] - RelAn * p52n * p[224] + RelAnp50n * p[240] + RelAnp52n * p[242] - RelAn * p[467]
	#p50n
	dy[61]= -RelAn * p50n * p[222] - RelBn * p50n * p[228] - cReln * p50n * p[230] - p50n * p50n * p[234] - p50n * p50n * p[234] + RelAnp50n * p[240] + RelBnp50n * p[246] + cRelnp50n * p[248] + p50np50n * p[252] + p50np50n * p[252] - p50n * p[467]
	#p52
	dy[62]= -RelA * p52 * p[223] - RelB * p52 * p[225] - cRel * p52 * p[231] - p52 * p52 * p[235] - p52 * p52 * p[235] + RelAp52 * p[241] + RelBp52 * p[243] + cRelp52 * p[249] + p52p52 * p[253] + p52p52 * p[253] - p52 * p[467] + p100NIK * p[473]
	#p52n
	dy[63]= -RelAn * p52n * p[224] - RelBn * p52n * p[226] - cReln * p52n * p[232] - p52n * p52n * p[236] - p52n * p52n * p[236] + RelAnp52n * p[242] + RelBnp52n * p[244] + cRelnp52n * p[250] + p52np52n * p[254] + p52np52n * p[254] - p52n * p[467]
	#RelAnp52n
	dy[64]= + RelAn * p52n * p[224] - RelAnp52n * p[242] + RelAp52 * p[257] - RelAnp52n * p[259] - RelAnp52n * p[260] - IkBan * RelAnp52n * p[285] - IkBbn * RelAnp52n * p[286] - IkBen * RelAnp52n * p[287] - IkBdn * RelAnp52n * p[288] + RelAnp52nIkBan * p[313] + RelAnp52nIkBbn * p[314] + RelAnp52nIkBen * p[315] + RelAnp52nIkBdn * p[316] + RelAnp52nIkBan * p[378] + RelAnp52nIkBbn * p[378] + RelAnp52nIkBen * p[378] + RelAnp52nIkBdn * p[378]
	#RelB
	dy[65]= -RelB * p52 * p[225] - RelB * p50 * p[227] + RelBp52 * p[243] + RelBp50 * p[245] + tRelB * p[466] - RelB * p[467]
	#RelBn
	dy[66]= -RelBn * p52n * p[226] - RelBn * p50n * p[228] + RelBnp52n * p[244] + RelBnp50n * p[246] - RelBn * p[467]
	#RelBnp52n
	dy[67]= + RelBn * p52n * p[226] - RelBnp52n * p[244] + RelBp52 * p[257] - RelBnp52n * p[259] - RelBnp52n * p[260] - IkBan * RelBnp52n * p[269] - IkBbn * RelBnp52n * p[270] - IkBen * RelBnp52n * p[271] - IkBdn * RelBnp52n * p[272] + RelBnp52nIkBan * p[297] + RelBnp52nIkBbn * p[298] + RelBnp52nIkBen * p[299] + RelBnp52nIkBdn * p[300] + RelBnp52nIkBan * p[378] + RelBnp52nIkBbn * p[378] + RelBnp52nIkBen * p[378] + RelBnp52nIkBdn * p[378]
	#RelBnp50n
	dy[68]= + RelBn * p50n * p[228] - RelBnp50n * p[246] + RelBp50 * p[257] - RelBnp50n * p[259] - RelBnp50n * p[260] - IkBan * RelBnp50n * p[265] - IkBbn * RelBnp50n * p[266] - IkBen * RelBnp50n * p[267] - IkBdn * RelBnp50n * p[268] + RelBnp50nIkBan * p[293] + RelBnp50nIkBbn * p[294] + RelBnp50nIkBen * p[295] + RelBnp50nIkBdn * p[296] + RelBnp50nIkBan * p[378] + RelBnp50nIkBbn * p[378] + RelBnp50nIkBen * p[378] + RelBnp50nIkBdn * p[378]
	#cRel
	dy[69]= -cRel * p50 * p[229] - cRel * p52 * p[231] + cRelp50 * p[247] + cRelp52 * p[249] + tcRel * p[466] - cRel * p[467]
	#cReln
	dy[70]= -cReln * p50n * p[230] - cReln * p52n * p[232] + cRelnp50n * p[248] + cRelnp52n * p[250] - cReln * p[467]
	#cRelnp50n
	dy[71]= + cReln * p50n * p[230] - cRelnp50n * p[248] + cRelp50 * p[257] - cRelnp50n * p[259] - cRelnp50n * p[260] - IkBan * cRelnp50n * p[277] - IkBbn * cRelnp50n * p[278] - IkBen * cRelnp50n * p[279] - IkBdn * cRelnp50n * p[280] + cRelnp50nIkBan * p[305] + cRelnp50nIkBbn * p[306] + cRelnp50nIkBen * p[307] + cRelnp50nIkBdn * p[308] + cRelnp50nIkBan * p[378] + cRelnp50nIkBbn * p[378] + cRelnp50nIkBen * p[378] + cRelnp50nIkBdn * p[378]
	#cRelnp52n
	dy[72]= + cReln * p52n * p[232] - cRelnp52n * p[250] + cRelp52 * p[257] - cRelnp52n * p[259] - cRelnp52n * p[260] - IkBan * cRelnp52n * p[281] - IkBbn * cRelnp52n * p[282] - IkBen * cRelnp52n * p[283] - IkBdn * cRelnp52n * p[284] + cRelnp52nIkBan * p[309] + cRelnp52nIkBbn * p[310] + cRelnp52nIkBen * p[311] + cRelnp52nIkBdn * p[312] + cRelnp52nIkBan * p[378] + cRelnp52nIkBbn * p[378] + cRelnp52nIkBen * p[378] + cRelnp52nIkBdn * p[378]
	#p50p50
	dy[73]= + p50 * p50 * p[233] - p50p50 * p[251] - p50p50 * p[257] + p50np50n * p[259] - p50p50 * p[260]
	#p50np50n
	dy[74]= + p50n * p50n * p[234] - p50np50n * p[252] + p50p50 * p[257] - p50np50n * p[259] - p50np50n * p[260]
	#p52p52
	dy[75]= + p52 * p52 * p[235] - p52p52 * p[253] - p52p52 * p[257] + p52np52n * p[259] - p52p52 * p[260]
	#p52np52n
	dy[76]= + p52n * p52n * p[236] - p52np52n * p[254] + p52p52 * p[257] - p52np52n * p[259] - p52np52n * p[260]
	#IkBan
	dy[77]= -IkBan * RelAnp50n * p[261] - IkBan * RelBnp50n * p[265] - IkBan * RelBnp52n * p[269] - IkBan * cRelnp50n * p[277] - IkBan * cRelnp52n * p[281] - IkBan * RelAnp52n * p[285] + RelAnp50nIkBan * p[289] + RelBnp50nIkBan * p[293] + RelBnp52nIkBan * p[297] + cRelnp50nIkBan * p[305] + cRelnp52nIkBan * p[309] + RelAnp52nIkBan * p[313] + RelAnp50nIkBan * p[379] + RelBnp50nIkBan * p[379] + RelBnp52nIkBan * p[379] + cRelnp50nIkBan * p[379] + cRelnp52nIkBan * p[379] + RelAnp52nIkBan * p[379] + IkBa * p[410] - IkBan * p[414] - IkBan * p[406]
	#RelAnp50nIkBan
	dy[78]= + IkBan * RelAnp50n * p[261] - RelAnp50nIkBan * p[289] + RelAp50IkBa * p[317] - RelAnp50nIkBan * p[345] - RelAnp50nIkBan * p[378] - RelAnp50nIkBan * p[379]
	#IkBbn
	dy[79]= -IkBbn * RelAnp50n * p[262] - IkBbn * RelBnp50n * p[266] - IkBbn * RelBnp52n * p[270] - IkBbn * cRelnp50n * p[278] - IkBbn * cRelnp52n * p[282] - IkBbn * RelAnp52n * p[286] + RelAnp50nIkBbn * p[290] + RelBnp50nIkBbn * p[294] + RelBnp52nIkBbn * p[298] + cRelnp50nIkBbn * p[306] + cRelnp52nIkBbn * p[310] + RelAnp52nIkBbn * p[314] + RelAnp50nIkBbn * p[379] + RelBnp50nIkBbn * p[379] + RelBnp52nIkBbn * p[379] + cRelnp50nIkBbn * p[379] + cRelnp52nIkBbn * p[379] + RelAnp52nIkBbn * p[379] + IkBb * p[411] - IkBbn * p[415] - IkBbn * p[407]
	#RelAnp50nIkBbn
	dy[80]= + IkBbn * RelAnp50n * p[262] - RelAnp50nIkBbn * p[290] + RelAp50IkBb * p[318] - RelAnp50nIkBbn * p[346] - RelAnp50nIkBbn * p[378] - RelAnp50nIkBbn * p[379]
	#IkBen
	dy[81]= -IkBen * RelAnp50n * p[263] - IkBen * RelBnp50n * p[267] - IkBen * RelBnp52n * p[271] - IkBen * cRelnp50n * p[279] - IkBen * cRelnp52n * p[283] - IkBen * RelAnp52n * p[287] + RelAnp50nIkBen * p[291] + RelBnp50nIkBen * p[295] + RelBnp52nIkBen * p[299] + cRelnp50nIkBen * p[307] + cRelnp52nIkBen * p[311] + RelAnp52nIkBen * p[315] + RelAnp50nIkBen * p[379] + RelBnp50nIkBen * p[379] + RelBnp52nIkBen * p[379] + cRelnp50nIkBen * p[379] + cRelnp52nIkBen * p[379] + RelAnp52nIkBen * p[379] + IkBe * p[412] - IkBen * p[416] - IkBen * p[408]
	#RelAnp50nIkBen
	dy[82]= + IkBen * RelAnp50n * p[263] - RelAnp50nIkBen * p[291] + RelAp50IkBe * p[319] - RelAnp50nIkBen * p[347] - RelAnp50nIkBen * p[378] - RelAnp50nIkBen * p[379]
	#IkBd
	dy[83]= -IkBd * RelAp50 * p[264] - IkBd * RelBp50 * p[268] - IkBd * RelBp52 * p[272] - IkBd * cRelp50 * p[280] - IkBd * cRelp52 * p[284] - IkBd * RelAp52 * p[288] + RelAp50IkBd * p[292] + RelBp50IkBd * p[296] + RelBp52IkBd * p[300] + cRelp50IkBd * p[308] + cRelp52IkBd * p[312] + RelAp52IkBd * p[316] + RelAp50IkBd * p[379] + RelBp50IkBd * p[379] + RelBp52IkBd * p[379] + cRelp50IkBd * p[379] + cRelp52IkBd * p[379] + RelAp52IkBd * p[379] - IkBd * p[409] - IkBd * p[413] + IkBdn * p[417] + p100 * p100 * p[469] - IkBd * p[470] - IkBd * NIK * p[471] + IkBdNIK * p[472] + p[475] * IkBdNIK * p[477](t)
	#RelAp50IkBd
	dy[84]= + IkBd * RelAp50 * p[264] - RelAp50IkBd * p[292] - RelAp50IkBd * p[320] + RelAnp50nIkBdn * p[348] - RelAp50IkBd * p[378] - RelAp50IkBd * p[379] - RelAp50IkBd * NIK * p[471] + RelAp50IkBdNIK * p[472] + p[475] * RelAp50IkBdNIK * p[477](t)
	#IkBdn
	dy[85]= -IkBdn * RelAnp50n * p[264] - IkBdn * RelBnp50n * p[268] - IkBdn * RelBnp52n * p[272] - IkBdn * cRelnp50n * p[280] - IkBdn * cRelnp52n * p[284] - IkBdn * RelAnp52n * p[288] + RelAnp50nIkBdn * p[292] + RelBnp50nIkBdn * p[296] + RelBnp52nIkBdn * p[300] + cRelnp50nIkBdn * p[308] + cRelnp52nIkBdn * p[312] + RelAnp52nIkBdn * p[316] + RelAnp50nIkBdn * p[379] + RelBnp50nIkBdn * p[379] + RelBnp52nIkBdn * p[379] + cRelnp50nIkBdn * p[379] + cRelnp52nIkBdn * p[379] + RelAnp52nIkBdn * p[379] + IkBd * p[413] - IkBdn * p[417] - IkBdn * p[409] + p100n * p100n * p[469] - IkBdn * p[470]
	#RelAnp50nIkBdn
	dy[86]= + IkBdn * RelAnp50n * p[264] - RelAnp50nIkBdn * p[292] + RelAp50IkBd * p[320] - RelAnp50nIkBdn * p[348] - RelAnp50nIkBdn * p[378] - RelAnp50nIkBdn * p[379]
	#RelBnp50nIkBan
	dy[87]= + IkBan * RelBnp50n * p[265] - RelBnp50nIkBan * p[293] + RelBp50IkBa * p[321] - RelBnp50nIkBan * p[349] - RelBnp50nIkBan * p[378] - RelBnp50nIkBan * p[379]
	#RelBnp50nIkBbn
	dy[88]= + IkBbn * RelBnp50n * p[266] - RelBnp50nIkBbn * p[294] + RelBp50IkBb * p[322] - RelBnp50nIkBbn * p[350] - RelBnp50nIkBbn * p[378] - RelBnp50nIkBbn * p[379]
	#RelBnp50nIkBen
	dy[89]= + IkBen * RelBnp50n * p[267] - RelBnp50nIkBen * p[295] + RelBp50IkBe * p[323] - RelBnp50nIkBen * p[351] - RelBnp50nIkBen * p[378] - RelBnp50nIkBen * p[379]
	#RelBp50IkBd
	dy[90]= + IkBd * RelBp50 * p[268] - RelBp50IkBd * p[296] - RelBp50IkBd * p[324] + RelBnp50nIkBdn * p[352] - RelBp50IkBd * p[378] - RelBp50IkBd * p[379] - RelBp50IkBd * NIK * p[471] + RelBp50IkBdNIK * p[472] + p[475] * RelBp50IkBdNIK * p[477](t)
	#RelBnp50nIkBdn
	dy[91]= + IkBdn * RelBnp50n * p[268] - RelBnp50nIkBdn * p[296] + RelBp50IkBd * p[324] - RelBnp50nIkBdn * p[352] - RelBnp50nIkBdn * p[378] - RelBnp50nIkBdn * p[379]
	#RelBnp52nIkBan
	dy[92]= + IkBan * RelBnp52n * p[269] - RelBnp52nIkBan * p[297] + RelBp52IkBa * p[325] - RelBnp52nIkBan * p[353] - RelBnp52nIkBan * p[378] - RelBnp52nIkBan * p[379]
	#RelBnp52nIkBbn
	dy[93]= + IkBbn * RelBnp52n * p[270] - RelBnp52nIkBbn * p[298] + RelBp52IkBb * p[326] - RelBnp52nIkBbn * p[354] - RelBnp52nIkBbn * p[378] - RelBnp52nIkBbn * p[379]
	#RelBnp52nIkBen
	dy[94]= + IkBen * RelBnp52n * p[271] - RelBnp52nIkBen * p[299] + RelBp52IkBe * p[327] - RelBnp52nIkBen * p[355] - RelBnp52nIkBen * p[378] - RelBnp52nIkBen * p[379]
	#RelBp52IkBd
	dy[95]= + IkBd * RelBp52 * p[272] - RelBp52IkBd * p[300] - RelBp52IkBd * p[328] + RelBnp52nIkBdn * p[356] - RelBp52IkBd * p[378] - RelBp52IkBd * p[379] - RelBp52IkBd * NIK * p[471] + RelBp52IkBdNIK * p[472] + p[475] * RelBp52IkBdNIK * p[477](t)
	#RelBnp52nIkBdn
	dy[96]= + IkBdn * RelBnp52n * p[272] - RelBnp52nIkBdn * p[300] + RelBp52IkBd * p[328] - RelBnp52nIkBdn * p[356] - RelBnp52nIkBdn * p[378] - RelBnp52nIkBdn * p[379]
	#cRelnp50nIkBan
	dy[97]= + IkBan * cRelnp50n * p[277] - cRelnp50nIkBan * p[305] + cRelp50IkBa * p[333] - cRelnp50nIkBan * p[361] - cRelnp50nIkBan * p[378] - cRelnp50nIkBan * p[379]
	#cRelnp50nIkBbn
	dy[98]= + IkBbn * cRelnp50n * p[278] - cRelnp50nIkBbn * p[306] + cRelp50IkBb * p[334] - cRelnp50nIkBbn * p[362] - cRelnp50nIkBbn * p[378] - cRelnp50nIkBbn * p[379]
	#cRelnp50nIkBen
	dy[99]= + IkBen * cRelnp50n * p[279] - cRelnp50nIkBen * p[307] + cRelp50IkBe * p[335] - cRelnp50nIkBen * p[363] - cRelnp50nIkBen * p[378] - cRelnp50nIkBen * p[379]
	#cRelp50IkBd
	dy[100]= + IkBd * cRelp50 * p[280] - cRelp50IkBd * p[308] - cRelp50IkBd * p[336] + cRelnp50nIkBdn * p[364] - cRelp50IkBd * p[378] - cRelp50IkBd * p[379] - cRelp50IkBd * NIK * p[471] + cRelp50IkBdNIK * p[472] + p[475] * cRelp50IkBdNIK * p[477](t)
	#cRelnp50nIkBdn
	dy[101]= + IkBdn * cRelnp50n * p[280] - cRelnp50nIkBdn * p[308] + cRelp50IkBd * p[336] - cRelnp50nIkBdn * p[364] - cRelnp50nIkBdn * p[378] - cRelnp50nIkBdn * p[379]
	#cRelnp52nIkBan
	dy[102]= + IkBan * cRelnp52n * p[281] - cRelnp52nIkBan * p[309] + cRelp52IkBa * p[337] - cRelnp52nIkBan * p[365] - cRelnp52nIkBan * p[378] - cRelnp52nIkBan * p[379]
	#cRelnp52nIkBbn
	dy[103]= + IkBbn * cRelnp52n * p[282] - cRelnp52nIkBbn * p[310] + cRelp52IkBb * p[338] - cRelnp52nIkBbn * p[366] - cRelnp52nIkBbn * p[378] - cRelnp52nIkBbn * p[379]
	#cRelnp52nIkBen
	dy[104]= + IkBen * cRelnp52n * p[283] - cRelnp52nIkBen * p[311] + cRelp52IkBe * p[339] - cRelnp52nIkBen * p[367] - cRelnp52nIkBen * p[378] - cRelnp52nIkBen * p[379]
	#cRelp52IkBd
	dy[105]= + IkBd * cRelp52 * p[284] - cRelp52IkBd * p[312] - cRelp52IkBd * p[340] + cRelnp52nIkBdn * p[368] - cRelp52IkBd * p[378] - cRelp52IkBd * p[379] - cRelp52IkBd * NIK * p[471] + cRelp52IkBdNIK * p[472] + p[475] * cRelp52IkBdNIK * p[477](t)
	#cRelnp52nIkBdn
	dy[106]= + IkBdn * cRelnp52n * p[284] - cRelnp52nIkBdn * p[312] + cRelp52IkBd * p[340] - cRelnp52nIkBdn * p[368] - cRelnp52nIkBdn * p[378] - cRelnp52nIkBdn * p[379]
	#RelAnp52nIkBan
	dy[107]= + IkBan * RelAnp52n * p[285] - RelAnp52nIkBan * p[313] + RelAp52IkBa * p[341] - RelAnp52nIkBan * p[369] - RelAnp52nIkBan * p[378] - RelAnp52nIkBan * p[379]
	#RelAnp52nIkBbn
	dy[108]= + IkBbn * RelAnp52n * p[286] - RelAnp52nIkBbn * p[314] + RelAp52IkBb * p[342] - RelAnp52nIkBbn * p[370] - RelAnp52nIkBbn * p[378] - RelAnp52nIkBbn * p[379]
	#RelAnp52nIkBen
	dy[109]= + IkBen * RelAnp52n * p[287] - RelAnp52nIkBen * p[315] + RelAp52IkBe * p[343] - RelAnp52nIkBen * p[371] - RelAnp52nIkBen * p[378] - RelAnp52nIkBen * p[379]
	#RelAp52IkBd
	dy[110]= + IkBd * RelAp52 * p[288] - RelAp52IkBd * p[316] - RelAp52IkBd * p[344] + RelAnp52nIkBdn * p[372] - RelAp52IkBd * p[378] - RelAp52IkBd * p[379] - RelAp52IkBd * NIK * p[471] + RelAp52IkBdNIK * p[472] + p[475] * RelAp52IkBdNIK * p[477](t)
	#RelAnp52nIkBdn
	dy[111]= + IkBdn * RelAnp52n * p[288] - RelAnp52nIkBdn * p[316] + RelAp52IkBd * p[344] - RelAnp52nIkBdn * p[372] - RelAnp52nIkBdn * p[378] - RelAnp52nIkBdn * p[379]
	#tIkBb
	dy[112]= + p[380] - tIkBb * p[403] - tIkBb * p[405] + tIkBb * p[405]
	#tIkBa
	dy[113]= + p[381]*((1+((p[382]* ((h(p,t-tau_RelAnp50n_0)[histindex_RelAnp50n]) / p[383]).^p[390])+(p[384]* ((h(p,t-tau_RelAnp52n_1)[histindex_RelAnp52n])/p[385]).^p[390])+(p[386]* ((h(p,t-tau_cRelnp50n_2)[histindex_cRelnp50n])/p[387]).^p[390])+(p[388]* ((h(p,t-tau_cRelnp52n_3)[histindex_cRelnp52n])/p[389]).^p[390])))/ (1+(((h(p,t-tau_RelAnp50n_4)[histindex_RelAnp50n]) /p[383]).^p[390]+((h(p,t-tau_RelAnp52n_5)[histindex_RelAnp52n])/p[385]).^p[390]+((h(p,t-tau_cRelnp50n_6)[histindex_cRelnp50n])/p[387]).^p[390]+((h(p,t-tau_cRelnp52n_7)[histindex_cRelnp52n])/p[389]).^p[390]))) - tIkBa * p[402] - tIkBa * p[405] + tIkBa * p[405]
	#tIkBe
	dy[114]= + p[391]*((1+((p[392]* ((h(p,t-tau_RelAnp50n_8)[histindex_RelAnp50n]) / p[393]).^p[401])+(p[394]* ((h(p,t-tau_RelAnp52n_9)[histindex_RelAnp52n])/p[395]).^p[401])+(p[396]* ((h(p,t-tau_cRelnp50n_10)[histindex_cRelnp50n])/p[397]).^p[401])+(p[398]* ((h(p,t-tau_cRelnp52n_11)[histindex_cRelnp52n])/p[399]).^p[401])))/ (1+(((h(p,t-tau_RelAnp50n_12)[histindex_RelAnp50n]) /p[393]).^p[401]+((h(p,t-tau_RelAnp52n_13)[histindex_RelAnp52n])/p[395]).^p[401]+((h(p,t-tau_cRelnp50n_14)[histindex_cRelnp50n])/p[397]).^p[401]+((h(p,t-tau_cRelnp52n_15)[histindex_cRelnp52n])/p[399]).^p[401]))) - tIkBe * p[404] - tIkBe * p[405] + tIkBe * p[405]
	#tRelA
	dy[115]= + p[420] - tRelA * p[461] - tRelA * p[466] + tRelA * p[466]
	#tp50
	dy[116]= + p[421] + (((p[422] * (((h(p,t-tau_RelAnp50n_16)[histindex_RelAnp50n])/ p[423]).^p[430]))+(p[424] * (((h(p,t-tau_RelAnp52n_17)[histindex_RelAnp52n])/p[425]).^p[430]))+(p[426] * (((h(p,t-tau_cRelnp50n_18)[histindex_cRelnp50n])/ p[427]).^p[430]))+(p[428] * (((h(p,t-tau_cRelnp52n_19)[histindex_cRelnp52n])/ p[429]).^p[430])))/ (1+((p[422] * (((h(p,t-tau_RelAnp50n_20)[histindex_RelAnp50n])/p[423]).^p[430]))+(p[424] * (((h(p,t-tau_RelAnp52n_21)[histindex_RelAnp52n])/ p[425]).^p[430]))+(p[426] * (((h(p,t-tau_cRelnp50n_22)[histindex_cRelnp50n])/p[427]).^p[430]))+(p[428] * (((h(p,t-tau_cRelnp52n_23)[histindex_cRelnp52n])/ p[429]).^p[430])))))./p[479] - tp50 * p[462] - tp50 * p[466] + tp50 * p[466]
	#tRelB
	dy[117]= + p[431] + (((p[432] * (((h(p,t-tau_RelAnp50n_24)[histindex_RelAnp50n])/ p[433]).^p[440]))+(p[434] * (((h(p,t-tau_RelAnp52n_25)[histindex_RelAnp52n])/p[435]).^p[440]))+(p[436] * (((h(p,t-tau_cRelnp50n_26)[histindex_cRelnp50n])/ p[437]).^p[440]))+(p[438] * (((h(p,t-tau_cRelnp52n_27)[histindex_cRelnp52n])/ p[439]).^p[440])))/ (1+((p[432] * (((h(p,t-tau_RelAnp50n_28)[histindex_RelAnp50n])/p[433]).^p[440]))+(p[434] * (((h(p,t-tau_RelAnp52n_29)[histindex_RelAnp52n])/ p[435]).^p[440]))+(p[436] * (((h(p,t-tau_cRelnp50n_30)[histindex_cRelnp50n])/p[437]).^p[440]))+(p[438] * (((h(p,t-tau_cRelnp52n_31)[histindex_cRelnp52n])/ p[439]).^p[440])))))./p[479] - tRelB * p[463] - tRelB * p[466] + tRelB * p[466]
	#tp100
	dy[118]= + p[481]*((1+((p[442]* ((h(p,t-tau_RelAnp50n_32)[histindex_RelAnp50n]) / p[443]).^p[450])+(p[444]* ((h(p,t-tau_RelAnp52n_33)[histindex_RelAnp52n])/p[445]).^p[450])+(p[446]* ((h(p,t-tau_cRelnp50n_34)[histindex_cRelnp50n])/p[447]).^p[450])+(p[448]* ((h(p,t-tau_cRelnp52n_35)[histindex_cRelnp52n])/p[449]).^p[450])))/ (1+(((h(p,t-tau_RelAnp50n_36)[histindex_RelAnp50n]) /p[443]).^p[450]+((h(p,t-tau_RelAnp52n_37)[histindex_RelAnp52n])/p[445]).^p[450]+((h(p,t-tau_cRelnp50n_38)[histindex_cRelnp50n])/p[447]).^p[450]+((h(p,t-tau_cRelnp52n_39)[histindex_cRelnp52n])/p[449]).^p[450]))) - tp100 * p[464] - tp100 * p[466] + tp100 * p[466]
	#tcRel
	dy[119]= + p[451] + (((p[452] * (((h(p,t-tau_RelAnp50n_40)[histindex_RelAnp50n])/ p[453]).^p[460]))+(p[454] * (((h(p,t-tau_RelAnp52n_41)[histindex_RelAnp52n])/p[455]).^p[460]))+(p[456] * (((h(p,t-tau_cRelnp50n_42)[histindex_cRelnp50n])/ p[457]).^p[460]))+(p[458] * (((h(p,t-tau_cRelnp52n_43)[histindex_cRelnp52n])/ p[459]).^p[460])))/ (1+((p[452] * (((h(p,t-tau_RelAnp50n_44)[histindex_RelAnp50n])/p[453]).^p[460]))+(p[454] * (((h(p,t-tau_RelAnp52n_45)[histindex_RelAnp52n])/ p[455]).^p[460]))+(p[456] * (((h(p,t-tau_cRelnp50n_46)[histindex_cRelnp50n])/p[457]).^p[460]))+(p[458] * (((h(p,t-tau_cRelnp52n_47)[histindex_cRelnp52n])/ p[459]).^p[460])))))./p[479] - tcRel * p[465] - tcRel * p[466] + tcRel * p[466]
	#p100
	dy[120]= + tp100 * p[466] - p100 * p[467] - p100 * p100 * p[469] - p100 * p100 * p[469] + IkBd * p[470] + IkBd * p[470] - p100 * NIK * p[471] + p100NIK * p[472] + p[475] * p100NIK * p[477](t)
	#p100n
	dy[121]= -p100n * p[467] - p100n * p100n * p[469] - p100n * p100n * p[469] + IkBdn * p[470] + IkBdn * p[470]
	#NIK
	dy[122]= + p[468] - p[475] * NIK * p[477](t) - p100 * NIK * p[471] + p100NIK * p[472] + p100NIK * p[473] - IkBd * NIK * p[471] + IkBdNIK * p[472] + IkBdNIK * p[474] - RelAp50IkBd * NIK * p[471] - RelBp50IkBd * NIK * p[471] - RelBp52IkBd * NIK * p[471] - cRelp50IkBd * NIK * p[471] - cRelp52IkBd * NIK * p[471] - RelAp52IkBd * NIK * p[471] + RelAp50IkBdNIK * p[472] + RelBp50IkBdNIK * p[472] + RelBp52IkBdNIK * p[472] + cRelp50IkBdNIK * p[472] + cRelp52IkBdNIK * p[472] + RelAp52IkBdNIK * p[472] + RelAp50IkBdNIK * p[474] + RelBp50IkBdNIK * p[474] + RelBp52IkBdNIK * p[474] + cRelp50IkBdNIK * p[474] + cRelp52IkBdNIK * p[474] + RelAp52IkBdNIK * p[474] + RelAp50IkBdNIK * p[378] + RelBp50IkBdNIK * p[378] + RelBp52IkBdNIK * p[378] + cRelp50IkBdNIK * p[378] + cRelp52IkBdNIK * p[378] + RelAp52IkBdNIK * p[378]
	#p100NIK
	dy[123]= + p100 * NIK * p[471] - p100NIK * p[472] - p100NIK * p[473] - p[475] * p100NIK * p[477](t)
	#IkBdNIK
	dy[124]= + IkBd * NIK * p[471] - IkBdNIK * p[472] - IkBdNIK * p[474] - p[475] * IkBdNIK * p[477](t) + RelAp50IkBdNIK * p[379] + RelBp50IkBdNIK * p[379] + RelBp52IkBdNIK * p[379] + cRelp50IkBdNIK * p[379] + cRelp52IkBdNIK * p[379] + RelAp52IkBdNIK * p[379]
	#RelAp50IkBdNIK
	dy[125]= + RelAp50IkBd * NIK * p[471] - RelAp50IkBdNIK * p[472] - RelAp50IkBdNIK * p[474] - p[475] * RelAp50IkBdNIK * p[477](t) - RelAp50IkBdNIK * p[379] - RelAp50IkBdNIK * p[378]
	#RelBp50IkBdNIK
	dy[126]= + RelBp50IkBd * NIK * p[471] - RelBp50IkBdNIK * p[472] - RelBp50IkBdNIK * p[474] - p[475] * RelBp50IkBdNIK * p[477](t) - RelBp50IkBdNIK * p[379] - RelBp50IkBdNIK * p[378]
	#RelBp52IkBdNIK
	dy[127]= + RelBp52IkBd * NIK * p[471] - RelBp52IkBdNIK * p[472] - RelBp52IkBdNIK * p[474] - p[475] * RelBp52IkBdNIK * p[477](t) - RelBp52IkBdNIK * p[379] - RelBp52IkBdNIK * p[378]
	#cRelp50IkBdNIK
	dy[128]= + cRelp50IkBd * NIK * p[471] - cRelp50IkBdNIK * p[472] - cRelp50IkBdNIK * p[474] - p[475] * cRelp50IkBdNIK * p[477](t) - cRelp50IkBdNIK * p[379] - cRelp50IkBdNIK * p[378]
	#cRelp52IkBdNIK
	dy[129]= + cRelp52IkBd * NIK * p[471] - cRelp52IkBdNIK * p[472] - cRelp52IkBdNIK * p[474] - p[475] * cRelp52IkBdNIK * p[477](t) - cRelp52IkBdNIK * p[379] - cRelp52IkBdNIK * p[378]
	#RelAp52IkBdNIK
	dy[130]= + RelAp52IkBd * NIK * p[471] - RelAp52IkBdNIK * p[472] - RelAp52IkBdNIK * p[474] - p[475] * RelAp52IkBdNIK * p[477](t) - RelAp52IkBdNIK * p[379] - RelAp52IkBdNIK * p[378]
end
