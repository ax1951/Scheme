#| a.
(let ((x 'a) (y 'b))
	(list (let ((x 'c)) (cons x y))
           (let ((y 'd)) (cons x y))))
|#
(let ((x 'a) (y 'b))
	(list (let ((new_x 'c)) (cons new_x y))
		  (let ((new_y 'd)) (cons x new_y))))

#| b.
(let ((x '((a b) c))) 
	(cons (let ((x (cdr x))) (car x))
		(let ((x (car x)))
			(cons (let ((x (cdr x))) (car x))
				(cons (let ((x (car x))) x)
					(cdr x))))))
|#

(let ((x '((a b) c)))
	(cons (let ((new_x1 (cdr x))) (car new_x1))
		(let ((new_x2 (car x)))
			(cons (let ((new_x3 (cdr new_x2))) (car new_x3))
				(cons (let ((new_x4 (car new_x2))) new_x4)
					  (cdr new_x2)
				)
			)
		)
	)
)
