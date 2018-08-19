#|
(define former-list
	(lambda (ls)
		(if (null? ls)
			'()
			(cons (car (car ls)) (former-list (cdr ls)))
		)
	)
)

(define latter-list
	(lambda (ls)
		(if (null? ls)
			'()
			(cons (cdar ls) (latter-list (cdr ls)))
		)
	)
)

(define transpose
	(lambda (ls)
		(cons (former-list ls) (latter-list ls))
	)
)
|#

(define transpose
	(lambda (ls)
		(cons
			(map car ls)
			(map cdr ls)
		)
	)
)

;(former-list '((a . 1) (b . 2) (c . 3)))
;(latter-list '((a . 1) (b . 2) (c . 3)))
(transpose '((a . 1) (b . 2) (c . 3)))
