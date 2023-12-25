; 练习1
; 
; 编写一个宏，其语义为：当谓词求值为假时执行相应的表达式。（语义与when相反。）

(define-syntax when-not
    (syntax-rules ()
        ((_ pred b1 ...)
        (if (not pred)
            (begin b1 ...)))))