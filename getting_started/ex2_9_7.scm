(let ((ls (cons 'a '())))
	(set-cdr! ls ls)
	ls
	(length ls)
)

#|
When asked to print a cyclic structure, some implementations print a representation of the output that reflects its cyclic structure.
Other implementations do not detect the cycle and produce either no output or an infinite stream of output.
When length is passed a cyclic list, an exception is raised, likely with a message indicating that the list is not proper.
The definition of length on page 42 will, however, simply loop indefinitely.
|#
