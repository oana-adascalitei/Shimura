Rx<x>:=PolynomialRing(Rationals());
RF := recformat< n : Integers(), ShimLabel, ShimDiscriminant, ShimLevel,  
ShimAtkinLehner,
      ShimGenus, ShimModel >;
s := rec< RF | >;

s`ShimLabel := "6.19-[1,57]";

s`ShimDiscriminant :=  6;
s`ShimLevel :=  19;
s`ShimAtkinLehner :=  [ 1, 57 ];
s`ShimGenus :=  1;

PX<[X]>:=ProjectiveSpace(Rationals(),3);
s`ShimModel := Curve(PX,[
X[2]^2 - X[1]*X[3],
19*X[1]^2 - 134*X[2]^2 + 243*X[3]^2 + X[4]^2
]);

return s;
