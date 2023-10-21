function [cA,cH,cV,cD]=w(I,LoD,HiD)
LL=conv2(LoD,LoD',I);
cA_l=(downsample(LL',2,1))';
cA=downsample(cA_l,2,1);
LH=conv2(LoD,HiD',I);
cH_l=(downsample(LH',2,1))';
cH=downsample(cH_l,2,1);
HL=conv2(HiD,LoD',I);
cV_H=(downsample(HL',2,1))';
cV=downsample(cV_H,2,1);
HH=conv2(HiD,HiD',I);
cD_H=(downsample(HH',2,1))';
cD=downsample(cD_H,2,1);
end