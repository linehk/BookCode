; 练习3
; 
; 1. 编写一个将表中所有元素平方的函数，然后求取它们的和，最后求和的平方根。

; 1
(define (list-sqrt ls)
    (sqrt (reduce + 0 (map (lambda (x) (* x x)) ls))))