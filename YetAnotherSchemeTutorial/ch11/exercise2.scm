; 练习1
; 
; 编写一个函数title-style，该函数用于将每个单词的首字母大写。
; 
; (title-style "the cathedral and the bazaar")
; ;⇒ "The Cathedral And The Bazaar"

(define (identity x) x)

; (define (title-style str)
;   (let loop ((ls (string->list str))
;          (w #t)
;          (acc '()))
;     (if (null? ls)
;     (list->string (reverse acc))
;     (let ((c (car ls)))
;       (loop (cdr ls)
;         (char-whitespace? c)
;         (cons ((if w char-upcase identity) c) acc))))))