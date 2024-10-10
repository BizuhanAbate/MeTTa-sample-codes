;largest prime factor of a number
(= ($i 2))
(= ($lp -1))
(= (largest_prime $x $i $lp)
(if (<= (* $i $i)($x)) 
(if (== (% $x $i)(0))
((= ($lp $i)) (= ($x) (/ $x $i)))
((= (i) (+ i 1)) (largest_prime $x $i $lp) ))
($lp)
))

(= (lpf $x $i $lp)
(if (== $x 1)
-1
(if ( or (== $x 2) (== $x 3))
$x 
!(largest_prime $x $i $lp)
)
))
!(lpf 6 2 -1)
