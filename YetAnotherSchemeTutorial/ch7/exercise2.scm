; 练习2
; 
; 用尾递归编写下面的函数
; 
; 1. 用于翻转表元素顺序的my-reverse函数。（reverse函数是预定义函数）
; 2. 求和由数构成的表。
; 3. 将一个代表正整数的字符串转化为对应整数。例如，"1232"会被转化为1232。不需要检查不合法的输入。提示，字符到整数的转化是通过将字符#\0……#\9的ASCII减去48，可以使用函数char->integer来获得字符的ASCII码。函数string->list可以将字符串转化为由字符构成的表。

; 1
; 相当于把 ls0 当作输入，ls1 当作结果保存。
(define (my-reverse ls)
    (my-reverse-inside ls '()))

(define (my-reverse-inside ls0 ls1)
    (if (null? ls0)
        ls1
        (my-reverse-inside (cdr ls0) (cons (car ls0) ls1)))) ; 构造当前结果，然后传入递归

; 非尾递归版本
; (define (my-reverse ls)
;     (if (null? ls)
;         '()
;         (cons (my-reverse (cdr ls)) (car ls))))

; 2
(define (my-sum ls)
    (my-sum-inside ls 0))

(define (my-sum-inside ls n)
    (if (null? ls)
        n
        (my-sum (cdr ls) (+ n (car ls)))))

; 非尾递归版本
; (define (my-sum ls)
;     (if (null? ls)
;         0
;         (+ (car ls) (my-sum (cdr ls)))))

; 3
(define (my-string->integer str)
  (char2int (string->list str) 0))

(define (char2int ls n)
  (if (null? ls)
      n
      (char2int (cdr ls) 
        (+ (- (char->integer (car ls)) 48)
           (* n 10)))))