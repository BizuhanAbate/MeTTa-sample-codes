;The basic logic operations
!(and True True)
!(and True False)
!(and False True)
!(and False False)

!(or True True)
!(or True False)
!(or False True)
!(or False False)

!(not True)
!(not False)

;Boolean algebra laws 
(= (annulment_law $x)
((and $x False) (or $x True)))
!(annulment_law True)

(= (identity_law $x)
((and $x True) (or $x False)))
!(identity_law True)

(= (idempotent_law $x)
((and $x $x) (or $x $x)))
!(idempotent_law False)

(= (complement_law $x)
((and $x (not $x)) (or $x (not $x))))
!(complement_law False)

(= (commutative_law $x $y)
((== (and $x $y) (and $y $x)) (== (or $x $y)(or $y $x))))
!(commutative_law True False)
