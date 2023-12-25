; 练习 6
; 
; 自己实现keep-matching-items。
; 自己实现map。接受不止一个表作为参数可能有点困难。剩余的参数是通过带点得序对(.)来定义的。其cdr部分以表的形式传递给函数。 例: my-list
; (define (my-list . x) x)
; 多说一句，你需要apply函数。

(define (keep-matching-items ls proc)
    (cond
        ((null? ls) '())
        ((proc (car ls)) (cons (car ls) (keep-matching-items (cdr ls) proc)))
        (else (keep-matching-items (cdr ls) proc))))

; (define (my-map fun . lss)
;   (letrec ((iter (lambda (fun lss)
;                (if (null? lss)
;                '()
;                (cons (fun (car lss))
;                  (iter fun (cdr lss))))))
;        (map-rec (lambda (fun lss)
;               (if (memq '() lss)
;               '()
;               (cons (apply fun (iter car lss))
;                 (map-rec fun (iter cdr lss)))))))
;     (map-rec fun lss)))