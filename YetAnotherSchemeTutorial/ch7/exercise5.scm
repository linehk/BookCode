; 练习5
; 
; 1. 用do表达式重写练习2。

; 1
; do 就像普通的 for 循环，分成变量、初始化、步进条件，然后是判断、结果
(define (my-reverse-do ls)
    (do ( (ls0 ls (cdr ls0)) (ls1 '() (cons (car ls0) ls1) ) ) ((null? ls0) ls1 ) ))

(define (my-sum-do ls)
    (do ((ls0 ls (cdr ls0)) (n 0 (+ n (car ls0)))) ((null? ls0) n)))

(define (my-string->integer-do str)
    (do ((ls0 (string->list str) (cdr ls0)) (n 0 (+ (- (char->integer (car ls0)) 48)
           (* n 10)))) ((null? ls0) n)))