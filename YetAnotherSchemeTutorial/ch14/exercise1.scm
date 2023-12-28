; 练习1
; 
; 1. 编写一个用于计算两向量内积的函数。

; 1
; (define (inner-product vec1 vec2)
;   (let ((len1 (vector-length vec1))
;           (len2 (vector-length vec2)))
;     (if (= len1 len2)
;         (let loop ((i 0) (pro 0))
;           (if (= i len1)
;               pro
;               (loop (+ 1 i)
;                   (+ pro (* (vector-ref vec1 i) (vector-ref vec2 i))))))
;         (error "different dimensions."))))`