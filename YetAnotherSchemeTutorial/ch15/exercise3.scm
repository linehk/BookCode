; 练习4
; 
; 请自己实现let*。
; 
; (define-syntax my-let*
;   (syntax-rules ()
;     ((_ ((p v)) b ...)
;      (let ((p v)) b ...))
;     ((_ ((p1 v1) (p2 v2) ...) b ...)
;      (let ((p1 v1))
;        (my-let* ((p2 v2) ...)
;         b ...)))))