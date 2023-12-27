; 练习2
; 
; 编写下面的函数。
; 
; 一个接受三个实数作为参数的函数，若参数皆为正数则返回它们的乘积。
; 一个接受三个实数作为参数的函数，若参数至少一个为负数则返回它们的乘积。

(define (product a b c)
    (and (positive? a) (positive? b) (positive? c) (* a b c)))

(define (product2 a b c)
    (if (or (negative? a) (negative? b) (negative? c))
        (* a b c)
        #f))

; (define (pro3or a b c)
;   (if (or (negative? a)
;       (negative? b)
;       (negative? c))
;       (* a b c)))
; 原答案报错：
; string:2:2: if: missing an "else" expression
;   in: (if (or (negative? a) (negative? b) (negative? c)) (* a b c))
;  [,bt for context]