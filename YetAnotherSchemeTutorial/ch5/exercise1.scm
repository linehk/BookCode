; 练习1
; 
; 编写下面的函数。阅读第五节了解如何编写谓词。
; 
; 1. 返回一个实数绝对值的函数。
; 2. 返回一个实数的倒数的函数。如果参数为0，则返回#f。
; 3. 将一个整数转化为ASCII码字符的函数。只有在33~126之间的ASCII码才能转换为可见的字符。使用integer->char可以将整数转化为字符。如果给定的整数不能够转化为字符，那么就返回#f。

; 1
(define (abs x)
    (if (< x 0)
        (- 0 x)
        x))
; (define (my-abs n)
;   (* n
;      (if (positive? n) 1 -1)))

; 2
(define (reciprocal x)
    (if (= x 0)
        #f
        (/ 1 x)))
; (define (inv n)
;   (if (not (zero? n))
;       (/ n)
;       #f))

; 3
(define (itoc x)
    (if (> x 33)
        (if (< x 126)
            (integer->char x)
            #f)
        #f))
; (define (i2a n)
;   (if (<= 33 n 126)
;       (integer->char n)
;       #f))