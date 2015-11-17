CATEGORY       =: '4 of a Kind';'Straight Flush';'Straight';'Flush';'High Card';'Pair';'2 Pair';'Royal Flush';'3 of a Kind';'Full House'
FACES          =: '23456789TJQKA'
rankFromChar   =: '**23456789TJQKA'&i.
suitFromChar   =: (2&^)@:('cdhs'&i.)
ranksFromHand  =: rankFromChar@:(0 2 4 6 8&{)
suitsFromHand  =: suitFromChar@:(1 3 5 7 9&{)
shift          =: 33 b.
showbin        =: (64#2) #: ]
incNibble      =: 4 : 'y + offset shift >: 15 AND (-offset=.4*x) shift y'
indexFromRanks =: (15&|)@:(incNibble/)@:(,&0x) NB. 15&| sums nibbles
bfFromRanks    =: (OR/)@:(shift&1)  NB. rank bit field

NB. Usage
NB.   'cdhss' handCat 'AQT82'
handCat=: 4 : 0
  Suits=. suitFromChar x
  Ranks=. rankFromChar y
  BfRanks=. bfFromRanks Ranks
  IfStraight=. (BfRanks = 16444) +. (31 = BfRanks % BfRanks AND -BfRanks)
  CatIdx0=.(indexFromRanks Ranks) - 3:^:IfStraight 1
  CatIdx=.(<:`(+&5)@.(BfRanks=31744))^:(* AND/ Suits) CatIdx0
  CATEGORY {::~ CatIdx
)

