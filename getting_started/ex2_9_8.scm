(define list?
	(lambda (ls)
		(if (cyclic-list? ls)
			#f
			(simple-list? ls)
		)
	)
)

(define simple-list?
	(lambda (ls)
		(cond 
			((null? ls) #t)
			((not (pair? ls)) #f)
			(else (simple-list? (cdr ls)))
		)
	)
)

(define cyclic-list?
	(lambda (ls)
		(cond
			((or (null? ls)  (null? (cdr ls)) (not (pair? (cdr ls)))) #f)  
			(else (cyclic-list2? (cdr ls) (cddr ls)))
		)
	)
)

(define cyclic-list2?
	(lambda (p1 p2)
		(cond 
			((or (null? p1) (null? p2) (not (pair? p1)) (not (pair? p2)) (null? (cdr p2)) (not (pair? (cdr p2)))) #f)
			((eqv? p1 p2) #t)
			(else (cyclic-list2? (cdr p1) (cddr p2)))
		)
	)
)

(list? '())
(list? '(a))
(list? '(a (b . c) d))
(list? '(a . b))
(list? '(a b . c))
(list? 
	(let ((ls (cons 'a '())))
		(set-cdr! ls ls) 
		ls
	)
)
