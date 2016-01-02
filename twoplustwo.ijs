coclass'twoplustwo'

HR=: _2 ic fread <'HandRanks.dat'
HANDTYPE=: <;._2 [0 : 0
BAD
High Card
One Pair
Two Pair
Trips
Straight
Flush
Full House
Quads
Straight Flush
)
CARDS=: ' ' splitstring '0 2c 2d 2h 2s 3c 3d 3h 3s 4c 4d 4h 4s 5c 5d 5h 5s 6c 6d 6h 6s 7c 7d 7h 7s 8c 8d 8h 8s 9c 9d 9h 9s tc td th ts jc jd jh js qc qd qh qs kc kd kh ks ac ad ah as' 

hr7=: (HR {~ +)/@:(,&53)
hr5=: HR {~ hr7
hr=: hr5`hr7@.(7=#)
ht=: HANDTYPE {~ _12 (33 b.) ]


hr_z_=: hr_twoplustwo_
ht_z_=: ht_twoplustwo_
s2i_z_=: CARDS_twoplustwo_ i. a: -.~ ' ' splitstring ]
