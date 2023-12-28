; 练习2
; 
; 1. 编写用于从变量中减去一个数的宏decf。如果减量省略了，则从变量中减1。

; 1
(define-syntax decf
    (syntax-rules ()
        ((_ x) (begin (set! x (- x 1)) x))
        ((_ x i) (begin (set! x (- x i)) x)) ))
; (let ((i 0) (j 0))
;   (decf i)
;   (decf j 3)
;   (display (list 'i '= i))
;   (newline)
;   (display (list 'j '= j)))