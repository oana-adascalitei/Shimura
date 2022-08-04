Rx<x>:=PolynomialRing(Rationals());
RF := recformat< 
 ShimLabel,
 ShimDiscriminant,
 ShimLevel,
 ShimAtkinLehner,
 ShimGenus,
 ShimModel,
 ShimTopCurve,
 ShimProjectionEquations
>;
s := rec< RF | >;

s`ShimLabel := "10.11-[1,110]";

s`ShimDiscriminant :=  10;
s`ShimLevel :=  11;
s`ShimAtkinLehner :=  [ 1, 110 ];
s`ShimGenus :=  0;

P2<X,Y,T>:=ProjectiveSpace(Rationals(),2);
s`ShimModel := Conic(P2,Y^2 - X*T); 

s`ShimTopCurve := HyperellipticCurve([Polynomial([RationalField() | -512, 0, -560, 0, 120, 0, 277, 0, 30, 0, -35, 0, -8]), Polynomial([RationalField() |])]);
P2<[x]>:=Ambient(s`ShimTopCurve);
s`ShimProjectionEquations := map< s`ShimTopCurve -> s`ShimModel | [
x[1]^2,
x[1]*x[3],
x[3]^2
] >;
return s;
