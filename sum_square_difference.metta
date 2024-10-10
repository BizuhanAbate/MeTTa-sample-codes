;Find the difference between the square of the sum And
;  the sum of the squares of the given intervals

;a function for square of the sum of numbers between the given intervals
(= (square_of_the_sum $start $end)
    (if (> $start $end)   
         0
        (+ $start (square_of_the_sum (+ $start 1) $end))
    ))
 
!( The sum of the squares  (* (square_of_the_sum 1 10)(square_of_the_sum 1 10)))

;a function for the sum of the squares of numbers between the given intervals
(= (sum_of_the_squares $start $end)

    (if (> $start $end)
        0  
        (+ (* $start $start) (sum_of_the_squares (+ $start 1) $end))
))
!(The square of the sum (sum_of_the_squares 1 10))

;the difference between the two
!(The difference between the two (- (* (square_of_the_sum 1 10)(square_of_the_sum 1 10)) (sum_of_the_squares 1 10)))
