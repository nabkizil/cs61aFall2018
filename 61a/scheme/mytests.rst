This file holds the tests that you create. Remember to import the python file(s)
you wish to test, along with any other modules you may need.
Run your tests with "python3 ok -t --suite SUITE_NAME --case CASE_NAME -v"
--------------------------------------------------------------------------------

Suite 1

    >>> from scheme_reader import *

    Case Example
        >>> scheme_read(Buffer(tokenize_lines(['nil'])))
        nil



(+ 7 8)
; expect 15

(/ 1 1) 
;expect 1

(+ 10 0)
; expect 10

(+ 11 1)
; expect 12

(/ 2 1)
; expect 2

