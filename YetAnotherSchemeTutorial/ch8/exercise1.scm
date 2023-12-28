; 练习1
; 
; 用map编写下面的函数：
; 
; 1. 一个将表中所有元素翻倍的函数；
; 2. 一个将两个表中对应位置元素相减的函数；

; 1
(define (double ls)
    (map (lambda (x) (* 2 x)) ls ))

; 2
(define (minus ls0 ls1)
    (map (lambda (x0 x1) (- x0 x1)) ls0 ls1))
; (define (sub ls1 ls2)
;   (map - ls1 ls2))