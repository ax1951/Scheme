;(a b)
(car '((a b) (c d)))

;((c d))
(cdr '((a b) (c d)))

;a
(car (car '((a b) (c d))))

;()
(cdr (cdr '((a b) (c d))))

;(c d)
(car (cdr '((a b) (c d))))

;c
(car (car (cdr '((a b) (c d)))))

;(d)
(cdr (car (cdr '((a b) (c d)))))

;d
(car (cdr (car (cdr '((a b) (c d))))))

;()
(cdr (cdr (car (cdr '((a b) (c d))))))

;(b)
(cdr (car '((a b) (c d))))

;b
(car (cdr (car '((a b) (c d)))))

;()
(cdr (cdr (car '((a b) (c d)))))
