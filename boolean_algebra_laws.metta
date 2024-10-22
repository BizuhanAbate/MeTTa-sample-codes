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
;Annulment law
(= (Annulment_law $x $y $z)
(if (and (== $z and)(or (== $x 0)(== $y 0)))
(0)
(if (and (== $z or)(or (== $x 1)(== $y 1)))
(1)
(is Not annulment_law)
)))
!(Annulment_law 0 0 or)

;Identity law
(= (Identity_law $x $y $z)
(if (and (== $z and) (== $x 1))
($y)
(if (and (== $z or)(== $x 0))
($y)
($x))))
!(Identity_law 0 0 or)

;Idempotent law
(= (Idempotent_law $x $y $z)
(if (== $x $y)
($x)
(if (== $z and)
(0)
(1)
)))
!(Idempotent_law 1 1 or)


;Complement law
;True refers to 1
;False refers to 0
(= (Complement_law $x $y $z)
(if (and (== $z and) (== (not $x) $y))
(0)
(if (and (== $z or)(== (not $x) $y))
(1)
(is Not Complement law)
)))
!(Complement_law True False and)


;Involution law
;True refers to 1
;False refers to 0
(= (Involution_law $x)
(not (not $x))
)
!(Involution_law True)
