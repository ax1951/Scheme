;a. (lambda (f x) (f x))
;no free variables

;b. (lambda (x) (+ x x))
;+

;c. (lambda (x y) (f x y))
;f

;d. (lambda (x) (cons x (f x y)))
;cons f y

;e. (lambda (x) (let ((z (cons x y))) (x y z)))
;cons y 

;f. (lambda (x) (let ((y (cons x y))) (x y z)))
;cons y z
