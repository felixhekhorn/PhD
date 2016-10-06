<<tracer11.m
AntiCommute[off];
VectorDimension[n];

l0 = ContractEpsGamma[Eps[{mu}, {nu}, {rho}, {sig}]*Eps[{mu}, {nu}, {rho}, {sig}]];
l1 = ContractEpsGamma[Eps[p@1, {nu}, {rho}, {sig}]*Eps[k@1, {nu}, {rho}, {sig}]];
l2 = ContractEpsGamma[Eps[p@1, p@2, {rho}, {sig}]*Eps[k@1, k@2, {rho}, {sig}]];
l3 = ContractEpsGamma[Eps[p@1, p@2, p@3, {sig}]*Eps[k@1, k@2, k@3, {sig}]];
l4 = ContractEpsGamma[Eps[p@1, p@2, p@3, p@4]*Eps[k@1, k@2, k@3, k@4]];

Save["~/Physik/PhD/Marco/Eps-out.m",{l0,l1,l2,l3,l4}]
