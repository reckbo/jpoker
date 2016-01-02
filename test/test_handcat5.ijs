load'handcat5.ijs'

assert 'Pair' -: 'chscd' handCat 'AAK42'
assert 'Flush' -: 'ccccc' handCat 'AK742'
assert 'Royal Flush' -: 'sssss' handCat 'AKQJT'
assert '2 Pair' -: 'csdsh' handCat '22Q77'
assert 'High Card' -: 'cdhss' handCat '98762'
assert 'Straight' -: 'cssss' handCat '98765'
assert '4 of a Kind' -: 'cdhss' handCat '99995'
