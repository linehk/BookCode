; 练习1
; 
; 按照下面的要求编写函数。这些都非常简单但实用。
; 
; 将参数加1的函数。
; 将参数减1的函数。

(define (incr x)
    (+ x 1))

; (define incr (lambda (x)
;     (+ x 1)))

; (define (1+ x)
;   (+ x 1))

(define (decr x)
    (- x 1))

; (define decr (lambda (x)
;     (- x 1)))

; (define (1- x)
;   (- x 1))