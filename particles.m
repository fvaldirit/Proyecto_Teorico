(* ::Package:: *)
(* 	
	Description	-> Names to eigensates
	PDG		-> id for MadGraph (can be {#} or {#,#,#} depends of the generations)
	ElectricCharge  -> eq
	LaTeX
	OutputName
	Mass		-> LesHouches (MadGraph will find here the mass)
	Goldstone	-> For masive gauge bosons! Where to find the goldstone boson
*)
ParticleDefinitions[GaugeES] =
{
    {H0,   {PDG 	 ->	{0},
           Width 	 ->	0,
           Mass 	 ->	Automatic,
           FeynArtsNr 	 ->	1,
           LaTeX 	 -> 	"H^0",
           OutputName 	 -> 	"H0"}},
           
    {Hp,  {PDG 		 -> 	{0},
           Width 	 -> 	0,
           Mass 	 -> 	Automatic,
           FeynArtsNr	 -> 	2,
           LaTeX 	 -> 	"H^+",
           OutputName	 -> 	"Hp"}},
           
    {etap, {Description ->	"interaction eigenstates charged scalars", 
    	   PDG	       ->	{1004},
	   PDG . IX    ->	{1004},
	   Mass        ->	LesHouches,
	   ElectricCharge -> 	1,
	   LaTeX       ->	{"\\eta_{+}","\\eta_{-}"},
	   OutputName  ->	{"Etap","Etam"} }},
                 
    {eta0, {Description ->	"interaction eigenstates neutral scalar", 
	   PDG	       ->	{1005},
	   PDG . IX    ->	{1005},
	   Mass	       ->	LesHouches,
	   ElectricCharge ->	1,
	   LaTeX       ->	{"\\eta_0"},
	   OutputName  ->	"Eta0" }},
           
    {sig0,{PDG 		 -> 	{0},
           Width 	 -> 	0,
           Mass 	 -> 	Automatic,
           LaTeX 	 -> 	"\\sigma",
           OutputName 	 -> 	"sig0"}},
           
    {n0,  {PDG 		 -> 	{0},
           Width 	 -> 	0,
           Mass 	 -> 	Automatic,
           LaTeX 	 -> 	"n0",
           OutputName 	 -> 	"n0"}},
               
    {VB,  {Description	 -> 	"B-Boson"}},
    {VG,  {Description	 -> 	"Gluon"}},
    {VWB, {Description	 -> 	"W-Bosons"}},
    {gB,  {Description	 -> 	"B-Boson Ghost"}},
    {gG,  {Description	 -> 	"Gluon Ghost"}},
    {gWB, {Description 	 -> 	"W-Boson Ghost"}}
    
};

ParticleDefinitions[EWSB] = {



    {hh,   {Description	     ->  "Higgs",
            PDG		     ->  {25,1111},
            PDG.IX	     ->  {101000001,0}, 
            FeynArtsNr       ->  900000010,
            ElectricCharge   ->  0 }},
            
    {Ah,   {Description      -> "Pseudo-Scalar Higgs",
            PDG 	     -> {0,200002},
            Mass 	     -> Automatic,
            Width 	     -> Automatic,
            ElectricCharge   -> 0,
            FeynArtsNr 	     -> 900000011,
            LaTeX 	     -> "Ah",
            OutputName 	     -> "Ah" }}, 
                     
        
    {Hp,   {Description      ->  "Charged Higgs", 
            PDG              ->  {0},
            PDG . IX 	     ->  {0},
            Width 	     ->  {0}, 
            Mass 	     ->  {0},
            LaTeX 	     ->  {"H^+","H^-"},
            OutputName 	     ->  {"Hp","Hm"},
            ElectricCharge   ->  1}},
            
    
    {etaR,   {Description     ->  "CP-even eta scalar",
             PDG 	     ->  {1001},
             Mass	     ->  LesHouches,
             ElectricCharge  ->  0,
             LaTeX 	     ->  "\\eta_R",
             OutputName      ->  "etR"}},
    {etaI,   {Description    -> "CP-odd eta scalar",
             PDG 	     ->  {1002},
             Mass 	     ->  LesHouches,
             ElectricCharge  ->  0,
             LaTeX 	     ->  "\\eta_I",
             OutputName      ->  "etI"}},
    {etap,   {Description     ->  "Charged eta scalar",
             PDG 	     ->  {1003},
             Mass 	     ->  LesHouches,
             ElectricCharge  ->  1,
             LaTeX 	     ->  "\\eta^+",
             OutputName      ->  "etp"}},
                                    
    {sig0,   { Description     ->  "Sigma scalar",
    	     PDG 	     ->  {1004},
             Mass 	     ->  LesHouches,
             ElectricCharge  ->  0,
             LaTeX 	     ->  "\\sigma",
             OutputName      ->  "sig0"}},   
    
    {VP,    {Description     ->  "Photon"}},
    {VZ,    {Description     ->  "Z-Boson",
    	     Goldstone       ->   Ah[{1}] }},
    {VWp,   {Description     ->  "W+ - Boson",
    	     Goldstone	     ->   Hp}},
    {VG,    {Description     ->  "Gluon"}},
    
    {gP,    {Description     ->  "Photon Ghost"}},
    {gWp,  { Description     ->  "Positive W+ - Boson Ghost"}}, 
    {gWpC, { Description     ->  "Negative W+ - Boson Ghost" }}, 
    {gZ,   { Description     ->  "Z-Boson Ghost" }},
    {gG,   { Description     ->  "Gluon Ghost" }},
    
    {Fd,    {Description     ->  "Down-Quarks"}},
    {Fu,    {Description     ->  "Up-Quarks"}},
    {Fe,    {Description     ->  "Leptons"}},
    {Fv,    {Description     ->  "Neutrinos"}},
    {Chi,   {Description     ->  "Singlet Fermions",
             PDG 	     ->  {1012, 1014, 1016},
             Mass 	     ->  LesHouches,
             ElectricCharge  ->  0,
             LaTeX 	     ->  "N",
             OutputName	     ->  "N"}}
};

 WeylFermionAndIndermediate = {
    {H,      {   PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "H",
                 OutputName -> "" }},
    
    {Eta,  {LaTeX -> "\\eta"}},
    {Sig,  {LaTeX -> "\\sigma"}},
    
    {dR,  {LaTeX -> "d_R"}},
    {eR,  {LaTeX -> "e_R"}},
    {lep, {LaTeX -> "l"}},
    {uR,  {LaTeX -> "u_R"}},
    {q,   {LaTeX -> "q"}},
    {eL,  {LaTeX -> "e_L"}},
    {dL,  {LaTeX -> "d_L"}},
    {uL,  {LaTeX -> "u_L"}},
    {vL,  {LaTeX -> "\\nu_L"}},
    
    {DR,  {LaTeX -> "D_R"}},
    {ER,  {LaTeX -> "E_R"}},
    {UR,  {LaTeX -> "U_R"}},
    {EL,  {LaTeX -> "E_L"}},
    {DL,  {LaTeX -> "D_L"}},
    {UL,  {LaTeX -> "U_L"}},
    {X0,  {LaTeX -> "x0"}},
    {VL,  {LaTeX -> "\\nu_{LL}"}},
	
    {n,   {LaTeX -> "N"}}(*,
    {n0,   {LaTeX -> "N_R"} }*)

};

