(define abs
	(lambda (n)
		(if (< n 0)
			(- 0 n)
			n)))

(abs 10)
(abs -3)

(if #t 'true 'false)
(if #f 'true 'false)
(if '() 'true 'false)
(if 1 'true 'false)
(if '(a b c) 'true 'false)

(not #t)
(not "false")
(not #f)

(or)
(or #f)
(or #f #t)
(or #f 'a #f)

(define reciprocal
	(lambda (n)
		(and (not (= n 0))
			 (/ 1 n))))

(reciprocal 3)
(reciprocal 0.5)
(reciprocal 0)

(null? '())
(null? 'abc)
(null? '(x y z))
(null? (cdddr '(x y z)))

(define lisp-cdr
	(lambda (x)
		(if (null? x)
			'()
			(cdr x))))

(lisp-cdr '(a b c))
(lisp-cdr '(c))
(lisp-cdr '())

;eqv?
(eqv? 'a 'b)
(eqv? 'a 'a)
(eqv? #f #f)
(eqv? #t #f)
(eqv? 3 2)
(eqv? 3 3)
(eqv? (cons 'a 'b) (cons 'a 'b))
(eqv? '(a b) '(a b))

;type predicates
(pair? '(a . c))
(pair? '(a b c))
(pair? '())
(pair? 'abc)
(pair? "Hi Mom")
(pair? 12345)

(define reciprocal2
	(lambda (n)
		(if (and (number? n) (not (= n 0)))
			(/ 1 n)
			"oops!")))

(reciprocal2 2/3)
(reciprocal2 'a)

#|
(define reciprocal3
	(lambda (n)
		(if (and (number? n) (not (= n 0)))
			(/ 1 n)
			(assertion-violation 'reciprocal3
				"improper argument"
				n))))

(reciprocal3 .25)
(reciprocal3 0)
(reciprocal3 'a)
|#

(define sign
	(lambda (n)
	  (if (< n 0)
		  -1
		  (if (> n 0)
			  +1
			  0))))

(sign -3.5)
(sign 0)
(sign 123)
(* (sign -1.2) (abs -12.3))

;cond
(define sign2
	(lambda (n)
	  (cond
		((< n 0) -1)
		((> n 0) +1)
		(else 0))))

(sign2 -3.5)
(sign2 0)
(sign2 123)
(* (sign2 -1.2) (abs -12.3))

(define sign3
	(lambda (n)
		(cond
			((< n 0) -1)
			((> n 0) +1)
			((= n 0) 0))))

(sign3 -3.5)
(sign3 0)
(sign3 123)
(* (sign3 -1.2) (abs -12.3))

