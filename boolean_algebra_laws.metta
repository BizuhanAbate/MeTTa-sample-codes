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
(= (annulment_law $x $y $z)
   (if (and (== $z and)(or (== $x 0)(== $y 0)))
       0
       (if (and (== $z or)(or (== $x 1)(== $y 1)))
           1
           (is Not annulment_law)
        )
    )
)
!(annulment_law 0 1 and)


;Identity law
(= (identity_law $x $y $z)
   (if (and (== $z and) (== $x 1))
        $y
       (if (and (== $z or)(== $x 0))
            $y
            $x
        )
    )
)
!(identity_law 0 0 or)


;Idempotent law
(= (idempotent_law $x $y $z)
   (if (== $x $y)
       $x
       (if (== $z and)
           0
           1
        )
    )
)
!(idempotent_law 1 1 or)


;Complement law
;True refers to 1
;False refers to 0

(= (complement_law $x $y $z)
   (if (and (== $z and) (== (not $x) $y))
       0
       (if (and (== $z or)(== (not $x) $y))
           1
           (is Not Complement law)
        )
    )
)
!(complement_law True False and)


;Involution law
(= (involution_law $x)
   (not (not $x))
)
!(involution_law True)
