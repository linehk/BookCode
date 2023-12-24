; 练习1
; 
; 使用cons来构建在前端表现为如下形式的数据结构。
; 
; ("hi" . "everybody")
; (0)
; (1 10 . 100)
; (1 10 100)
; (#\I "saw" 3 "girls")
; ("Sum of" (1 2 3 4) "is" 10)

(cons "hi" "everybody") ; '("hi" . "everybody")

(cons 0 '()) ; '(0)

(cons 1 (cons 10 100)) ; '(1 10 . 100)

(cons 1 (cons 10 (cons 100 '()))) ; '(1 10 100)

(cons #\I (cons "saw" (cons 3 (cons "girl" '())))) ; '(#\I "saw" 3 "girl")

(cons "Sum of" (cons (cons 1 (cons 2 (cons 3 (cons 4 '())))) (cons "is" (cons 10 '())))) ; '("Sum of" (1 2 3 4) "is" 10)
; 诀窍在于 cons 只能有两个参数，从最底层，也就是最右边的开始构造