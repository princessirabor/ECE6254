function [ ATEv  OrgIndex  RegEv] = comput_ATEv( RR )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%Compute dRR intervals series 
dRR=comp_dRR(RR);

%Compute metrics
[OriginCount,IrrEv,PACEv,AnisEv,DensEv]=metrics(dRR);
RegEv = compute_RegEv(RR)

%Compute AFEvidence
ATEv=IrrEv+AnisEv+DensEv+RegEv-4*PACEv;
OrgIndex = OriginCount+AnisEv+DensEv+RegEv - 2*IrrEv

end

