(define make-stack
	(lambda (n)
		(let ((vec (make-vector n)) (size 0))
			(lambda (msg . args)
				(case msg
					((empty? mt?) (= size 0))
					((push!) (vector-set! vec size (car args)) (set! size (+ size 1)))
					((top) (vector-ref vec (- size 1)))
					((pop!) (set! size (- size 1)))
					((ref) (vector-ref vec (- (- size 1) (car args))))
					((set!) (vector-set! vec (- (- size 1) (car args)) (cadr args)))
					(else "oops!")
				)
			)
		)
	)
)

(define stack (make-stack 10))
(stack 'push! 'a)
(stack 'push! 'b)
(stack 'push! 'c)

(stack 'ref 0)
(stack 'ref 2)

(stack 'set! 1 'd)

(stack 'ref 1)
(stack 'top)

(stack 'pop!)
(stack 'top)
