#|(+ (- (* 3 a) b) (+ (* 3 a) b))|#
(let ((a 2) (b 3)) 
	(let ((three-a (* 3 a)))
	(+ (- three-a b) (+ three-a b))))

#|(cons (car (list a b c)) (cdr (list a b c)))|#
(let ((list1 '(a b c)))
	(cons (car list1)
		  (cdr list1)))

