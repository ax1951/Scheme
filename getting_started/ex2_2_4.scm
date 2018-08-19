;((a b) (c d)))

;b
(car (cdr (car '((a b) (c d)))))

;c
(car (car (cdr '((a b) (c d)))))

;d
(car (cdr (car (cdr '((a b) (c d))))))
