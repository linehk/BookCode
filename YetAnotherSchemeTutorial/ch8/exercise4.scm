; 练习4
; 
; 编写下列函数
; 
; 1. 以sin(x)的大小升序排序；
; 2. 以表长度降序排序；

; 1
(define (sort-sin ls)
    (sort ls (lambda (x y) (< (sin x) (sin y)))))

; 2
(define (sort-length ls)
  (sort ls (lambda (x y) (> (length x) (length y)))))