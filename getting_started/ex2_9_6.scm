(define make-queue
	(lambda ()
		(cons '() '())
	)
)

(define putq!
	(lambda (q v)
		(let ((v (cons v '())))
			(if (null? (car q))
				(begin 
					(set-car! q v) 
					(set-cdr! q v)
				)
				(begin
					(set-cdr! (cdr q) v)
					(set-cdr! q v)
				)
			)
		)
	)
)

(define getq
	(lambda (q)
		(if (null? (car q))
			"The queue is empty!"
			(caar q)
		)
	)
)

(define delq!
	(lambda (q)
		(if (null? (car q))
			"The queue is empty!"
			(set-car! q (cdar q))
		)
	)
)

(define emptyq?
	(lambda (q)
		(null? (car q))
	)
)

;I prefer the former one that has one wasted pair. Because it doesn't require to distinguish empty queue and non-empty queue

(define myq (make-queue))
myq
(emptyq? myq)

(putq! myq 'a)
(putq! myq 'b)

(getq myq)

(delq! myq)
(emptyq? myq)
(getq myq)

(delq! myq)
(emptyq? myq)

(putq! myq 'c)
(emptyq? myq)

(putq! myq 'd)
(getq myq)

(delq! myq)
(getq myq)

(delq! myq)
(emptyq? myq)
