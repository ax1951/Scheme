(define make-counter
	(lambda (init-value step)
		(let ((start init-value))
			(lambda ()
				(let ((current start))
					(set! start (+ start step))
					current
				)
			)
		)
	)
)

(define counter1 (make-counter 0 1))
(define counter2 (make-counter 0 2))
(define counter3 (make-counter 1 2))

(counter1)
(counter1)
(counter1)

(counter2)
(counter2)
(counter2)

(counter3)
(counter3)
(counter3)
