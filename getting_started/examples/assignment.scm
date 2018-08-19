(define abcde '(a b c d e))
abcde

(set! abcde (cdr abcde))
abcde

(let ((abcde '(a b c d e)))
	(set! abcde (reverse abcde))
	abcde
)

(define quadratic-formula
  (lambda (a b c)
    (let ((root1 0) (root2 0) (minusb 0) (radical 0) (divisor 0))
      (set! minusb (- 0 b))
      (set! radical (sqrt (- (* b b) (* 4 (* a c)))))
      (set! divisor (* 2 a))
      (set! root1 (/ (+ minusb radical) divisor))
      (set! root2 (/ (- minusb radical) divisor))
      (cons root1 root2))))

(quadratic-formula 1 3 2)

(define quadratic-formula2
	(lambda (a b c)
		(let ( (minusb (- 0 b)) 
			(radical (sqrt (- (* b b) (* 4 (* a c))))) 
			(divisor (* 2 a)))
			(let ((root1 (/ (+ minusb radical) divisor))
				(root2 (/ (- minusb radical) divisor)))
				(cons root1 root2)))))

(quadratic-formula2 1 3 2)

(define kons-count 0)

(define kons
  (lambda (x y)
    (set! kons-count (+ kons-count 1))
    (cons x y)))

(kons 'a '(b c))
kons-count
(kons 'a (kons 'b (kons 'c '())))
kons-count

#|
(define next 0)

(define count
  (lambda ()
    (let ((v next))
      (set! next (+ next 1))
      v)))

(count)
(count)
(count)
|#

#|
(define count
  (let ((next 0))
    (lambda ()
      (let ((v next))
        (set! next (+ next 1))
        v))))

(count)
(count)
(count)
|#

(define make-counter
  (lambda ()
    (let ((next 0))
      (lambda ()
        (let ((v next))
          (set! next (+ next 1))
          v)))))

(define counter1 (make-counter))
(define counter2 (make-counter))

(counter1)
(counter2)

(counter1)
(counter2)
(counter2)

(define shhh #f)
(define tell #f)

(let ((secret 0))
  (set! shhh
    (lambda (message)
      (set! secret message)))
  (set! tell
    (lambda ()
      secret)))

(shhh "hello world")
(tell)

(define lazy
	(lambda (t)
		(let ((val #f) (flag #f))
			(lambda ()
				(if (not flag)
					(begin (set! val (t))
						   (set! flag #t)
					)
				)
				val
			)
		)
	)
)

(define p
	(lazy (lambda ()
			  (display "Ouch!")
			  (newline)
			  "got me"
		  )
	)
)

(p)
(p)


(define make-stack
	(lambda ()
		(let ((ls '()))
			(lambda (msg . args)
				(cond
					((eqv? msg 'empty?) (null? ls))
					((eqv? msg 'push!) (set! ls (cons (car args) ls)))
					((eqv? msg 'top) (car ls))
					((eqv? msg 'pop!) (set! ls (cdr ls)))
					(else "oops")
				)
			)
		)
	)
)

(define stack1 (make-stack))
(define stack2 (make-stack))

(list (stack1 'empty?) (stack2 'empty?))

(stack1 'push! 'a)

(list (stack1 'empty?) (stack2 'empty?))

(stack1 'push! 'b) 
(stack2 'push! 'c) 

(stack1 'top)
(stack2 'top)

(stack1 'pop!)
(stack1 'top)

(list (stack1 'empty?) (stack2 'empty?))

(stack1 'pop!)

(define p (list 1 2 3)) 
(set-car! (cdr p) 'two) 
p
(set-cdr! p '())
p

;queue
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

(define myq (make-queue))
myq
(putq! myq 'a)
(putq! myq 'b)

(getq myq)

(delq! myq)
(getq myq)

(delq! myq)
(putq! myq 'c)
(putq! myq 'd)
(getq myq)

(delq! myq)
(getq myq)
