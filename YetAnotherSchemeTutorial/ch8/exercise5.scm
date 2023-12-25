; 练习5
; 
; 用apply编写练习3中的函数。

(define (list-sqrt-apply ls)
    (sqrt (apply + (map (lambda (x) (* x x)) ls))))