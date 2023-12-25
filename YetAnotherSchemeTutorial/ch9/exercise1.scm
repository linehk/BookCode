; 练习1
; 
; 编写函数(read-lines)，该函数返回一个由字符串构成的表，分别代表每一行的内容。在Scheme中，换行符是由#\Linefeed表示。下面演示了将该函数用于"hello.txt"的结果。
; 
; (read-lines "hello.txt") ⇒ ("Hello world!" "Scheme is an elegant programming language.")

; (define (group-list ls sep)
;   (letrec ((iter (lambda (ls0 ls1)
;            (cond
;             ((null? ls0) (list ls1))
;             ((eqv? (car ls0) sep) 
;              (cons ls1 (iter (cdr ls0) '())))
;             (else (iter (cdr ls0) (cons (car ls0) ls1)))))))
;     (map reverse (iter ls '()))))
; 
; 
; (define (read-lines file-name)
;   (with-input-from-file file-name
;     (lambda ()
;       (let loop((ls1 '()) (c (read-char)))
;     (if (eof-object? c)
;         (map list->string (group-list (reverse ls1) #\Linefeed))  ; *
;         (loop (cons c ls1) (read-char)))))))