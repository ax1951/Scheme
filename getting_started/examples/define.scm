(define double-any
  (lambda (f x)
	(f x x)))

(double-any + 10)
(double-any cons 10)
(double-any cons '(a b))

(define hello "hello world")
hello

(define xyz '(x y z))

(let ((xyz '(z y x))) xyz)

(define cadr
    (lambda (x)
        (car (cdr x))))

(cadr '(a b c))

(define cddr
    (lambda (x)
        (cdr (cdr x))))

(cddr '(a b c))

(define doubler
    (lambda (f)
        (lambda (x) (f x x))))

(define double (doubler +)) 
(double 13/2) ; => 13

(define double-cons (doubler cons))
(double-cons 'a) ; => (a . a)

(define proc1
    (lambda (x y)
        (proc2 y x)))
(define proc2 cons)

(proc1 'a 'b)
