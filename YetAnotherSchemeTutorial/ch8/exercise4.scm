; 练习4
; 
; 编写下列函数
; 
; 以sin(x)的大小升序排序；
; 以表长度降序排序；

(define (sort-sin ls)
    (sort ls (lambda (x y) (< (sin x) (sin y)))))

(define (sort-length ls)
  (sort ls (lambda (x y) (> (length x) (length y)))))