; 练习2
; 
; 编写用于从变量中减去一个数的宏decf。如果减量省略了，则从变量中减1。
; 
; 练习3
; 
; 改进[代码3]中的宏for，使得它可以接受一个参数作为步长。如果省略了步长，则默认为1。

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

(define-syntax for
    (syntax-rules ()
        ((_ (i from to) b1 ...)
            (let loop((i from))
                (when (< i to)
                    b1 ...
                    (loop (+ 1 i)))))
        ((_ (i from to step) b1 ...)
            (let loop((i from))
                (when (< i to)
                    b1 ...
                    (loop (+ step i)))))))

; (for (i 0 10)
;   (display i)
;   (display #\Space))