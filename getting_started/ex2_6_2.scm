(define compose
	(lambda (p1 p2)
		(lambda (x)
			(p1 (p2 x)))))

(define cadr
	(compose car cdr))

(define cddr
	(compose cdr cdr))

(cadr '(a b c))
(cddr '(a b c))
(cadr '((a b) c d))
(cddr '((a b) (c d)))
