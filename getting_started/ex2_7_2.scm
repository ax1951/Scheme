(define shorter
	(lambda (x y)
		(let ((lx (length x)) (ly (length y)))
			(cond
			  ((> lx ly) y)
			  (else x)))))

(shorter '(a b) '(c d e))
(shorter '(a b) '(c d))
(shorter '(a b) '(c))

