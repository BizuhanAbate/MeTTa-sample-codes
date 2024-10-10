;Find the difference between the sum of the squares of 
;the first one hundred natural numbers and the square of the sum

;a function for the sum of the squares of numbers between two intervals
(= (sum_of_the_squares $start $end)

    (if (> $start $end)
        0  
        (+ (* $start $start) (sum_of_the_squares (+ $start 1) $end))
))
!(sum_of_the_squares 1 10)

;a function for square of the sum of numbers between two intervals
(= (square_of_the_sum $start $end)
    (if (> $start $end)   
         0
        (+ $start (square_of_the_sum (+ $start 1) $end))
    ))
!(square_of_the_sum 1 10)
