(define append2
	(lambda (ls1 ls2)
		(if (null? ls1)
			ls2
			(cons
				(car ls1)
				(append2 (cdr ls1) ls2)
			)
		)
	)
)

(append2 '(a b c) '())
(append2 '() '(a b c))
(append2 '(a b) '(c d))
(append2 '(a b) 'c)
