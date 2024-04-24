OnlyLowEnergySPheno = True;

MINPAR={
  {1, muEta2Input},
  {2, muSig2Input},
  {3, lambdaEtaInput},
  {4, lambdaHInput},
  {5, lambdaSigInput},
  {6, lambda1Input},
  {7, lambda2Input},
  {8, lambda3Input},		           
  {9, lambda4Input},          	           
  {10, lambda5Input}, 		    
  {11, lambda6Input}

};

ParametersToSolveTadpoles = {muH2};

BoundaryLowScaleInput={

  {muEta2, muEta2Input},
  {muSig2, muSig2Input},
  {lambdaEta, lambdaEtaInput},
  {lambdaH, lambdaHInput},
  {lambdaSig, lambdaSigInput},
  {lambda1, lambda1Input},
  {lambda2, lambda2Input},
  {lambda3, lambda3Input},		           
  {lambda4, lambda4Input},          	           
  {lambda5, lambda5Input}, 		    
  {lambda6, lambda6Input},
  {Yn, LHInput[Yn]},
  {Mn, LHInput[Mn]}
};

DEFINITION[MatchingConditions]= Default[THDMII];
(*
 {{v, vSM},
  {Ye, YeSM},
  {Yd, YdSM},
  {Yu, YuSM},
  {g1, g1SM},
  {g2, g2SM},
  {g3, g3SM}};
  *)
ListDecayParticles = {Fu,Fe,Fd,Fv,VZ,VWp,H0,etaR,etaI,etap,Chi,sig0,phih};
ListDecayParticles3B = {{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};
