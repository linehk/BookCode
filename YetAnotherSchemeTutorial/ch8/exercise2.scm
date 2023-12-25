; 练习2
; 
; 编写下列函数：
; 
; 滤取（Filtering Out）出一个表中的偶数；
; 滤取出不满足10 ≤ x ≤ 100的数；

(define (filter-even ls)
    (filter even? ls))

; x 就是列表中的每个元素
(define (filter-number ls)
    (filter (lambda (x) (not (<= 10 x 100))) ls))