; 练习4
; 
; 1. 请自己实现let*。

; 1
; (define-syntax my-let*
;   (syntax-rules ()
;     ((_ ((p v)) b ...)
;      (let ((p v)) b ...))
;     ((_ ((p1 v1) (p2 v2) ...) b ...)
;      (let ((p1 v1))
;        (my-let* ((p2 v2) ...)
;         b ...)))))