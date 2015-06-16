comb=: 4 : 0
  if. x e. 0 1 do. z=.<((x!y),x)$ i.y
  else. t=. |.(<.@-:)^:(i.<. 2^.x)x
    z=.({.t) ([:(,.&.><@;\.)/ >:@-~[\i.@]) ({.t)+y-x
    for_j. 2[\t do.
      z=.([ ;@:(<"1@[ (,"1 ({.j)+])&.> ])&.> <@;\.({&.><)~ (1+({.j)-~{:"1)&.>) z
      if. 2|{:j do. z=.(i.1+y-x)(,.>:)&.> <@;\.z end.
    end.
  end.
  ;z
)

faces=:'23456789TJQKA'
suits=:'cdhs'
deck=: , |: s: { faces;suits
NB. rank=: faces&i.  NB. rank 'A'
face=: {&faces   NB. face 12

suit=: ({&'cdhs')@{.@(13 13&#:)"0
rank=: (2&+)@{:@(13 13&#:) "0
T=:10
J=:11
Q=:12
K=:13
A=:14
rank2face=: ({&'23456789TJQKA')@(-&2) "0

boxtb=: |:@:(<"_1&>)

combos=: ([ (\:"1) rank) 2 comb 52
'r1 r2'=: |: rank combos
s=: suit combos
's1 s2'=: |: s
f1=: rank2face r1
f2=: rank2face r2
c1=: f1,.s1
c2=: f2,.s2
handrank=: f1,.f2
hand=: c1,.c2
suited=: s1 = s2
hdr=: cut 'f1 s1 f2 s2 c1 c2 handrank'
tb=: boxtb ".each hdr

where=:#~
in=: e. 
notin=: -.@e.

expandplus=: 3 : '>:^:({. < 12"_)^:(<_) y'
NB. >:^:({. < 14"_)^:(<_) "."0 [ 2 {. '22+'

NB. deck {~ (({~"1) 2: comb #) (#~ 4 = rank) (i.52) -. 17
