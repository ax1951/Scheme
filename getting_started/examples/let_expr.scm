(let ((x 2)) 
  (+ x 10))

(let ((y 3)) 
  (+ y 2))

(let ((x 2) (y 3))
  (+ x y))

(let ((a (* 4 4))) (+ a a))

(let ((list1 '(a b c)) (list2 '(d e f)))
  (list list1 list2))

(list '(a b) '(c d))

#|
(let ([list1 '(a b c)] [list2 '(d e f)])
	(cons (cons (car list1)  (car list2))
		  (cons (car (cdr list1))
			    (car (cdr list2)))))
|#

(let ((f +)) (f 2 3))
(let ((f +) (x 2)) (f x 3))
(let ((f +) (x 2) (y 3)) 
    (f x y))

(let ((a 4) (b -3))
    (let ((a-squared (* a a)) (b-squared (* b b)))
		 (+ a-squared b-squared)))


