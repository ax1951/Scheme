(define compose
	(lambda (p1 p2)
		(lambda (x)
			(p1 (p2 x)))))

; length of chars between 'c' and 'r': 2
(define caar
	(compose car car))
;(caar '((a b) c d))

(define cadr
	(compose car cdr))
;(cadr '((a b) c d))

(define cdar
	(compose cdr car))
;(cdar '((a b) c d))

(define cddr
	(compose cdr cdr))
;(cddr '((a b) c d))

; length of chars between 'c' and 'r': 3
(define caaar
	(compose car caar))
;(caaar '(((a b c)) (d e f)))

(define caadr
	(compose car cadr))
;(caadr '(((a b c)) (d e f)))

(define cadar
	(compose car cdar))
;(cadar '(((a b c) (d e f)) (g h i)))

(define caddr
	(compose car cddr))
;(caddr '(((a b c)) (d e f) g h))

(define cdaar
	(compose cdr caar))
;(cdaar '(((a b c) d) e f))

(define cdadr
	(compose cdr cadr))
;(cdadr '(a (b c) d))

(define cddar
	(compose cdr cdar))
;(cddar '((a b (c d))))

(define cdddr
	(compose cdr cddr))
;(cdddr '(a b c d))

; length of chars between 'c' and 'r': 4
(define caaaar
	(compose car caaar))

(define caaadr
	(compose car caadr))

(define caadar
	(compose car cadar))

(define caaddr
	(compose car caddr))

(define cadaar
	(compose car cdaar))

(define cadadr
	(compose car cdadr))

(define caddar
	(compose car cddar))

(define cadddr
	(compose car cdddr))

(define cdaaar
	(compose cdr caaar))

(define cdaadr
	(compose cdr caadr))

(define cdadar
	(compose cdr cadar))

(define cdaddr
	(compose cdr caddr))

(define cddaar
	(compose cdr cdaar))

(define cddadr
	(compose cdr cdadr))

(define cdddar
	(compose cdr cddar))

(define cddddr
	(compose cdr cdddr))

