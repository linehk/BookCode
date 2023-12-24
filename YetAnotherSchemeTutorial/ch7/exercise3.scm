; 练习3
; 
; 用命名let编写下面的函数。
; 
; 练习1的问题3和问题4；
; 练习2中的函数；
; range函数：返回一个从0到n的表（但不包含n）。

(define (remove x ls)
    (let loop((ls0 ls) (ls1 '()))
        (if (null? ls0) 
            ; 如果为空就逆转
            (reverse ls1)
            ; 重用 loop
            (loop
                (cdr ls0) ; 传入参数
                (if (eqv? x (car ls0))
                    ls1
                    (cons (car ls0) ls1))))))

; 实际上就是用 let 构造的 loop 来编写尾递归代码
(define (position x ls)
    (let loop( (ls0 ls) (i 0) )
        (cond ((null? ls0) #f)
            ((eqv? x (car ls0)) i)
            (else (loop (cdr ls0) (1+ i))))))

(define (my-reverse ls)
    (let loop((ls0 ls) (ls1 '()))
        (if (null? ls0)
            ls1
            (loop (cdr ls0) (cons (car ls0) ls1)))))

(define (my-sum ls)
    (let loop((ls0 ls) (n 0))
        (if (null? ls0)
            n
            (loop (cdr ls0) (+ n (car ls0))))))

(define (my-string->integer str)
    (let loop((ls (string->list str)) (n 0))
        (if (null? ls)
            n
            (loop (cdr ls) (+ (- (char->integer (car ls)) 48) (* n 10) )))))

(define (range n)
    (let loop((ls '()) (n1 0))
        (if (= n n1)
            ls ; 使用 reverse 能让 '((((((((((() . 0) . 1) . 2) . 3) . 4) . 5) . 6) . 7) . 8) . 9) 变成 '(0 1 2 3 4 5 6 7 8 9)
            (loop (cons ls n1) (1+ n1) ))))

; (define (range n)
;   (let loop((i 0) (ls1 '()))
;     (if (= i n)
;         (reverse ls1)
;       (loop (1+ i) (cons i ls1)))))