; 练习3
; 
; 1. 改进[代码3]中的宏for，使得它可以接受一个参数作为步长。如果省略了步长，则默认为1。

; 1
; (for (i 0 10)
;   (display i)
;   (display #\Space))
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