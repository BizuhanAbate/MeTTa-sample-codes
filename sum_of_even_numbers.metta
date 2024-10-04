;The sum of even numbers between two given numbers
(= (sum_of_even_numbers $start $end)

    (if (> $start $end)
        0  
        (if (== (% $start 2) 0)  
          
              (+ $start (sum_of_even_numbers (+ $start 1) $end))
            (sum_of_even_numbers (+ $start 1) $end))) 
)


!(sum_of_even_numbers 1 10)
