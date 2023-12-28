; 练习2
; 
; 编写下列函数：
; 
; 1. 滤取（Filtering Out）出一个表中的偶数；
; 2. 滤取出不满足10 ≤ x ≤ 100的数；

; 1
(define (filter-even ls)
    (filter even? ls))

; 2
; x 就是列表中的每个元素
(define (filter-number ls)
    (filter (lambda (x) (not (<= 10 x 100))) ls))