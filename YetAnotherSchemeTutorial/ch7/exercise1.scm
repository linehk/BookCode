; 练习1
; 
; 用递归编写下面的函数。
; 
; 用于统计表中元素个数的my-length函数。（length是一个预定义函数）。
; 一个求和表中元素的函数。
; 一个分别接受一个表ls和一个对象x的函数，该函数返回从ls中删除x后得到的表。
; 一个分别接受一个表ls和一个对象x的函数，该函数返回x在ls中首次出现的位置。索引从0开始。如果x不在ls中，函数返回#f。

(define (my-length ls)
    (if (null? ls)
        0
        (+ (my-length (cdr ls)) 1)))
; 关键在于把递归函数的结果也当成一个值

(define (sum ls)
    (if (null? ls)
        0
        (+ (car ls) (sum (cdr ls)))))
; 关键在于使用 car 的值

(define (remove x ls)
  (if (null? ls)
      '()
      (let ((h (car ls)))
        ((if (eqv? x h)
            (lambda (y) y)
            (lambda (y) (cons h y)))
         (remove x (cdr ls))))))
; remove 这行就是传入 lambda 的参数 y
; h 是列表前面的元素，y 是列表后面的元素
; 必定会递归完整个列表，而不是找到了就停止
; 递归完整个列表，然后开始从最后一个开始构建，相同时跳过

(define (find-inside ls x i)
    (if (null? ls)
        #f
        (if (= (car ls) x)
            i
            (find-inside (cdr ls) x (+ i 1)))))

; (define (position x ls)
;   (position-aux x ls 0))
; 
; (define (position-aux x ls i)
;   (cond
;    ((null? ls) #f)
;    ((eqv? x (car ls)) i)
;    (else (position-aux x (cdr ls) (1+ i)))))

; 要把函数分开才能使用
; (define (find ls x)
;     (if (null? ls)
;         #f
;         (if (= (car ls) x)
;             0
;             (+ (find (cdr ls) x) 1))))