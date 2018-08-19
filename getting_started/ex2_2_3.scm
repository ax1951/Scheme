;a
(cons 'car 'cdr)
;'('car 'cdr)

;b
(list 'this '(is silly))
;(cons 'this '(is silly))

;c
(cons 'is '(this silly?))

;d
(quote (+ 2 3))

;e
(cons '+ '(2 3))

;f
(car '(+ 2 3))

;g
(cdr '(+ 2 3))

;h
cons

;i
(quote cons)

;j
(quote (quote cons))

;k
(car (quote (quote cons)))

;l
(+ 2 3)

;m
(+ '2 '3)

;n
(+ (car '(2 3)) (car (cdr '(2 3))))

;o
((car (list + - * /)) 2 3)
