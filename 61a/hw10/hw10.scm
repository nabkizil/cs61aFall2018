(define (accumulate combiner start n term)
  (if (= n 0)
      start
      (combiner (term n) (accumulate combiner start (- n 1) term))
      ))


(define (accumulate-tail combiner start n term)
  (if (= n 0)
  	start
  	(accumulate-tail combiner (combiner (term n) start)
  		(- n 1) term)))

(define (partial-sums stream)
  (define (helper sum s)
    (if (null? s)
      nil
      (cons-stream (+ sum (car s))
                   (helper (+ sum (car s))
                         (cdr-stream s))))
  )
  (helper 0 stream)
)

(define (rle s)
  (define (track-run elem st len)
    (cond ((null? st) (cons-stream (list elem len) nil))
          ((= elem (car st)) (track-run elem (cdr-stream st) (+ len 1)))
          (else (cons-stream (list elem len) (rle st))))
  )
  (if (null? s)
      nil
      (track-run (car s) (cdr-stream s) 1))
)