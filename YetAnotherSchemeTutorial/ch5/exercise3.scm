; 练习 3
; 
; 编写下列函数。
; 
; 成绩（A-D）是由分数决定的。编写一个将分数映射为成绩的函数，映射规则如下：
; 
; A 如果 score ≥ 80
; B 如果 60 ≤ score ≤ 79
; C 如果 40 ≤ score ≤ 59
; D 如果 score < 40

(define (grade score)
    (cond
        ((>= score 80) "A")
        ((<= 60 score 79) "B")
        ((<= 40 score 59) "C")
        ((< score 40) "D")))

; (define (score n)
;   (cond
;    ((>= n 80) 'A)
;    ((<= 60 n 79) 'B)
;    ((<= 40 n 59) 'C)
;    (else 'D)))