; 练习 1
; 
; 1. 修改make-bank-account函数，使得如果取款超过余额则报错。提示：如果你的代码体中有多条 S-表达式，那么可以使用 begin 语句让它们成组。

; 1
; (define (make-bank-account amount)
;   (lambda (n)
;     (let ((m (+ amount n)))
;       (if (negative? m)
;       'error
;       (begin
;         (set! amount m)
;         amount)))))