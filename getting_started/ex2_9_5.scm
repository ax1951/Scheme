(define make-queue
    (lambda ()
        (let ((end (cons 'ignored '())))
            (cons end end)
        )
    )
)

(define putq!
    (lambda (q v)
        (let ((end (cons 'ignored '())))
            (set-car! (cdr q) v)
            (set-cdr! (cdr q) end)
            (set-cdr! q end)
        )
    )
)

(define getq
    (lambda (q)
        (car (car q))
    )
)

(define delq!
    (lambda (q)
        (set-car! q (cdr (car q)))
    )
)

(define emptyq?
	(lambda (q)
		(eqv? (car q) (cdr q))
	)
)


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
