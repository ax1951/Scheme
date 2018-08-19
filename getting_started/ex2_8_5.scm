(define shorter
	(lambda (ls1 ls2)
		(if (shorter? ls1 ls2)
			ls1
			ls2
		)
	)
)

(define shorter?
	(lambda (ls1 ls2)
		(cond
			((and (null? ls1) (not (null? ls2))) #t)
			((and (not (null? ls1)) (null? ls2)) #f)
			((and (null? ls1) (null? ls2)) #t)
			(else (shorter? (cdr ls1) (cdr ls2)))
		)
	)
)

(shorter '(a b) '(c d e))
(shorter '(a b) '(c d))
(shorter '(a b) '(c))

