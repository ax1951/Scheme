(define make-list
	(lambda (n obj)
		(if (= n 0)
			'()
			(cons obj (make-list (- n 1) obj))
		)
	)
)

(make-list 7 '())
(make-list 4 '(a))
(make-list 4 'a)

