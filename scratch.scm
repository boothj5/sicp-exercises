(define (square x) (* x x))

(define (sum-of-squares  x y)
    (+ (square x) (square y)))

(define coin-values '(1 5 10 25 50))


(define (ways-to-change amount)
    (define coin-values '(1 2 5 10 20 50))
    (define (change amount coin-values)
        (cond ((= amount 0) 1)
              ((null? coin-values) 0)
              ((< amount 0) 0)
              (else (+ (change amount 
                               (cdr coin-values))
                       (change (- amount 
                                  (car coin-values))
                               coin-values)))))
    (change amount coin-values))




