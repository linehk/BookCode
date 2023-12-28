; 练习4
; 
; 1. 用letrec重写练习2。

; 1
; 相当于把外层的调用放在 letrec 同级
; (define (fact-letrec n)
;   (letrec ((iter (lambda (n1 p)
;            (if (= n1 1)
;                p
;                (let ((m (- n1 1)))
;              (iter m (* p m)))))))
;     (iter n n))
; )

(define (my-reverse ls)
    (letrec ((iter (lambda (ls0 ls1)
        (if (null? ls0)
            ls1
            (iter (cdr ls0) (cons (car ls0) ls1) ))))) (iter ls '()) ))

(define (my-sum ls)
    (letrec ((iter (lambda (ls0 n)
                        (if (null? ls0)
                            n
                            (iter (cdr ls0) (+ n (car ls0))))))) (iter ls 0) ))

(define (my-string->integer str)
    (letrec ((iter (lambda (ls0 n)
                    (if (null? ls0)
                        n
                        (iter (cdr ls0) (+ (- (char->integer (car ls0)) 48) (* n 10))))))) (iter (string->list str) 0) ))