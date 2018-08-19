;a. (let ((f (lambda (x) x))) (f 'a))
(let ((f (lambda (x) x))) (f 'a)) ; a proper list of variables

;b. (let ((f (lambda x x))) (f 'a))
(let ((f (lambda x x))) (f 'a)) ; a single variable

;c. (let ((f (lambda (x . y) x))) (f 'a)) ; an improperty list of variables
(let ((f (lambda (x . y) x))) (f 'a))

;d. (let ((f (lambda (x . y) y))) (f 'a)) 
(let ((f (lambda (x . y) y))) (f 'a)) ; an improperty list of variables

