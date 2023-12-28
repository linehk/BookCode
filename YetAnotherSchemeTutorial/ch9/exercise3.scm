; 练习3
; 
; 1. 编写函数(print-line)，该函数具有任意多的字符作为参数，并将它们输出至标准输出。输出的字符应该用新行分隔。

; 1
; (define (print-lines . lines)
;   (let loop((ls0 lines))
;     (if (pair? ls0)
;         (begin
;          (display (car ls0))
;          (newline)
;          (loop (cdr ls0))))))