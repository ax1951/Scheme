(define make-stack
	(lambda ()
		(let ((ls '()))
			(lambda (msg . args)
				(case msg
					((empty? mt?) (null? ls))
					((push!) (set! ls (cons (car args) ls)))
					((top) (car ls))
					((pop!) (set! ls (cdr ls)))
					((ref) (list-ref ls (car args)))
					;((ref) (list-ref ls (car args))) ; list-ref is a system function
					((set!) (list-set ls (car args) (cadr args)))
					;((set!) (set-car! (list-tail ls (car args)) (cadr args)))
					(else "oops")
				)
			)
		)
	)
)

(define list-ref
	(lambda (ls position)
		(if (and (> position -1) (< position (length ls)))
			(if (= position 0)
				(car ls)
				(list-ref (cdr ls) (- position 1))
			)
			"position out of range!"
		)
	)
)

(define list-set
	(lambda (ls position value)
		(if (and (> position -1) (< position (length ls)))
			(if (= position 0)
				(set-car! ls value)
				(list-set (cdr ls) (- position 1) value)
			)
			"position out of range!"
		)
	)
)

(define stack (make-stack))
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
