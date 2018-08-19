(define list-ref
	(lambda (ls n)
		(if (= n 0)
			(car ls)
			(list-ref (cdr ls) (- n 1))
		)
	)
)

(define list-tail
	(lambda (ls n)
		(if (= n 0)
			ls
			(list-tail (cdr ls) (- n 1))
		)
	)
)

(list-ref '(1 2 3 4) 0)
(list-tail '(1 2 3 4) 0)
(list-ref '(a short (nested) list) 2)
(list-tail '(a short (nested) list) 2)
