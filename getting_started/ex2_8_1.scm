(define tree-copy
	(lambda (ls)
		(if (not (pair? ls))
			ls
			(cons
				(tree-copy (cdr ls))
				(tree-copy (car ls))
			)
		)
	)
)

(tree-copy '(a b . c))
(tree-copy '((a . b) . c))
(tree-copy '((a . b) . (c . d)))
(tree-copy '((a . b)  (c . d)))

#|
The structure of the output would be the mirror image of the structure of the input.
For example, (a . b) would become(b . a) and ((a . b) . (c . d)) would become ((d . c) . (b . a)).
|#
