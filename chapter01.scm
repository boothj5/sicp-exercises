;; Exercise 1.2

(/ (+ 5
      4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))
      
;; Exercise 1.3
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-squares-largest x y z)
    (cond ((and (< x y) (< x z)) (sum-of-squares y z))
          ((and (< y x) (< y z)) (sum-of-squares x z))
          (else (sum-of-squares x y))))

;; Exercise 1.7
(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (abs (/ guess 1000))))

;; Exercise 1.8
(define (square x) (* x x))

(define (cube x) (* x x x))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (abs (/ guess 1000))))

(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))
