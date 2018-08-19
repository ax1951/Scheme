(define make-stack
	(lambda ()
		(let ((ls '()))
			(lambda (msg . args)
				(case msg
					((empty? mt?) (null? ls))
					((push!) (set! ls (cons (car args) ls)))
					((top) (car ls))
					((pop!) (set! ls (cdr ls)))
					(else "oops")
				)
			)
		)
	)
)


(define stack1 (make-stack))
(stack1 'empty?)

(stack1 'push! 'a)
(stack1 'mt?)

(stack1 'push! 'b) 
(stack1 'top)

(stack1 'pop!)
(stack1 'top)
(stack1 'mt?)

(stack1 'pop!)
(stack1 'mt?)
