(* ::Package:: *)

(*
	Description	-> "str", has been previously defined or how we will call it.
	Real 		-> "Bool", ¿Real or complex? Complex by default.
	OutputName 	-> "str" for outputs
	LaTeX 		-> "str" How is shown in LATEX
	LesHouches 	-> Position in a  LesHouches file
	Dependence	-> replace the parameter by a particular
	expression in all analytical calculations
	DependenceNum	-> replacement only in numerical calculations								
*)

ParameterDefinitions = { 
	
{g1,		{Description -> "Hypercharge-Coupling"}},
{g2,		{Description -> "Left-Coupling"}},
{g3,		{Description -> "Strong-Coupling"}},


{AlphaS,	{Description -> "Alpha Strong"}},
{e,		{Description -> "electric charge"}},
{Gf,		{Description -> "Fermi's constant"}},
{aEWinv,	{Description -> "inverse weak coupling constant at mZ"}},

{Yu,		{Description -> "Up-Yukawa-Coupling",
		 DependenceNum -> Sqrt[2]/v* {{Mass[Fu,1],0,0},
					      {0,Mass[Fu,2],0},
					      {0,0,Mass[Fu,3]}}}},
		
{Yd,		{ Description -> "Down-Yukawa-Coupling",
		  DependenceNum -> Sqrt[2]/v*   {{Mass[Fd,1],0,0},
					        {0,Mass[Fd,2],0},
						{0,0,Mass[Fd,3]}}}},

{Ye,		{ Description -> "Lepton-Yukawa-Coupling",
		  DependenceNum -> Sqrt[2]/v*   {{Mass[Fe,1],0,0},
					        {0,Mass[Fe,2],0},
						{0,0,Mass[Fe,3]}}}},		
(**)
{ThetaW,	{ Description -> "Weinberg-Angle",
		  DependenceNum -> ArcSin[Sqr[1 - Mass[VWp]^2/Mass[VZ]^2]]}},

{ZZ,		{Description -> "Photon-Z Mixing Matrix"}},
{ZW,		{Description -> "W Mixing Matrix", Dependence -> 1/Sqrt[2] {{1, 1},{I,-I}} }},

(* Scalar sector *)

{v,		{Description -> "EW-VEV",
                 DependenceNum -> Sqrt[4*Mass[VWp]^2/(g2^2)],
                 DependenceSPheno -> None,
                 OutputName -> vvSM}},

{muH2,		{ Description -> "SM Higgs Mass Parameter"}},	           

{muEta2,	{LaTeX -> "\\mu_\\eta^2",
	        LesHouches -> {HDM,1},
	        OutputName -> "mEt2" }},

{muSig2,	{LaTeX -> "\\mu_\\sigma^2",
	        LesHouches -> {HDM,2},
	        OutputName -> "mSig2" }},

{lambdaEta,	{LaTeX -> "\\lambda_\\eta",
		LesHouches -> {HDM,3},
		OutputName -> "lamEta" }},

{lambdaH,	{LaTeX -> "\\lambda_H",
		LesHouches -> {HDM,4},
		OutputName -> "lamH" }},

{lambdaSig,	{LaTeX -> "\\lambda_\\sigma",
		LesHouches -> {HDM,5},
		OutputName -> "lamSig" }},


{lambda1,	{LaTeX -> "\\lambda_1",
		LesHouches -> {HDM,6},
		OutputName -> "lam1" }},

{lambda2,	{LaTeX -> "\\lambda_2",
		LesHouches -> {HDM,7},
		OutputName -> "lam2" }},

{lambda3,	{LaTeX -> "\\lambda_3",
		LesHouches -> {HDM,8},
		OutputName -> "lam3" }},
			           
{lambda4,	{LaTeX -> "\\lambda_4",
		LesHouches -> {HDM,9},
		OutputName -> "lam4" }},           
	           
{lambda5,	{LaTeX -> "\\lambda_5",
		LesHouches -> {HDM,10},
		OutputName -> "lam5" }}, 
		    
{lambda6,	{LaTeX -> "\\lambda_6",
		LesHouches -> {HDM,11},
		OutputName -> "lam6" }},

	
(* Fermion Sector *)	

{Yn,		{LaTeX -> "Y_N",
		LesHouches -> YN,
		OutputName -> "Yn" }},	

{Mn,	{LaTeX -> "M_N",
	LesHouches -> MN,
	OutputName -> "Mn" }},

{ZZ, {Description 	->  "Photon-Z Mixing Matrix"}},

{ZW, {Description 	->  "W Mixing Matrix",
       Dependence 	->   1/Sqrt[2] {{1, 1},{I,-I}} }},               
 
{ZX,	{LaTeX -> "Z^{\\chi^0}",
	LesHouches -> ZXMIX,
	OutputName -> "ZX" }},	

{Vu,		{Description -> "Left-Up-Mixing-Matrix"}},
{Vd,		{Description -> "Left-Down-Mixing-Matrix"}},
{Uu,		{Description -> "Right-Up-Mixing-Matrix"}},
{Ud,		{Description -> "Right-Down-Mixing-Matrix"}},
{Ve,		{Description -> "Left-Lepton-Mixing-Matrix"}},
{Ue,		{Description -> "Right-Lepton-Mixing-Matrix"}},
{Vv,		{Description -> "Neutrino-Mixing-Matrix"}}
		  		                                 
 }; 
