(define length2
	(lambda (x)
		(if (null? x)
			0
			(+ 1 (length2(cdr x))))))

(length2 '())
(length2 '(a b c))
(length2 '(a b c d e f g h i))

(define list-copy
	(lambda (x)
		(if (null? x)
			'()
			(cons (car x) (list-copy (cdr x))))))

(list-copy '())
(list-copy '(a b c))
;(list-copy '(a . b))

#|
(define memv
	(lambda (x ls)
		(if (null? ls)
			#f
			(if (eqv? x (car ls))
				ls
				(memv x (cdr ls))))))
|#
(define memv
	(lambda (x ls)
		(cond
			((null? ls) #f)
			((eqv? x (car ls)) ls)
			(else (memv x (cdr ls)))
		)
	)
)

(memv 'a '(a b b d))
(memv 'b '(a b b d))
(memv 'c '(a b b d))
(if (memv 'b '(a b b d))
	"yes"
	"no")

(define remv
	(lambda (x ls)
		(cond
			((null? ls) '())
			((eqv? (car ls) x) (remv x (cdr ls)))
			(else (cons (car ls) (remv x (cdr ls))))
		)
	)
)

(remv 'a '(a b b d))
(remv 'b '(a b b d))
(remv 'c '(a b b d))
(remv 'd '(a b b d))

(define tree-copy
	(lambda (tr)
		(if (not (pair? tr))
			tr
			(cons (tree-copy (cdr tr))
				  (tree-copy (car tr))
			)
		)
	)
)

(tree-copy '((a . b) . c))

(define abs-all
	(lambda (ls)
		(if (null? ls)
			'()
			(cons 
				(abs (car ls))
				(abs-all (cdr ls))
			)
		)
	)
)

(abs-all '(1 -2 3 -4 5 -6))

(define abs-all2
	(lambda (ls)
		(map abs ls)
	)
)

(abs-all2 '(1 -2 3 -4))

(map abs '(1 -2 3 -4))

(map (lambda (x) (* x x)) '(1 -3 5 -7))

(map cons '(a b c) '(1 2 3))

(define map1
	(lambda (p ls)
		(if (null? ls)
			'()
			(cons (p (car ls))
				  (map1 p (cdr ls))
			)
		)
	)
)

(map1 abs '(1 -2 3 -4 5 -6))

