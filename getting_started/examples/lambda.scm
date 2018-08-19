((lambda (x) (* x x)) (* 3 4))

(let ((double (lambda (x) (+ x x))))
  (list (double (* 3 4))
		(double (/ 99 11))
		(double (- 2 7))))

(let ((double-any (lambda (f x) (f x x))))
  (list (double-any + 13)
        (double-any cons 'a)))

(let ((f (let ((x 'sam)) (lambda (y z) (list x y z)))))
	(f 'i 'am)) 


(let ((f (let ((x 'sam)) (lambda (y z) (list x y z)))))
	(let ((x 'not-sam))
		(f 'i 'am)))

(let ((f (lambda x x))) 
    (f 1 2 3 4))

(let ((f (lambda x x))) 
    (f))

(let ((g (lambda (x . y) (list x y)))) 
    (g 1 2 3 4))

(let ((h (lambda (x y . z) (list x y z)))) 
    (h 'a 'b 'c 'd))

