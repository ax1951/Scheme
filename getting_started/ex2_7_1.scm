(define atom
	(lambda (arg)
		(not (pair? arg))))

(atom '(a b))
(atom '(a . b))
(atom 'a)
(atom 2)
(atom "hi")
