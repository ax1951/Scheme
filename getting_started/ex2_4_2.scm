#|
Determine the value of the following expression. Explain how you derived this value.
(let ([x 9])
  (* x
     (let ([x (/ x 3)])
       (+ x x))))
|#
;54
(let ((x 9))
  (* x
     (let ((x (/ x 3)))
       (+ x x))))
