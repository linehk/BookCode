; 练习1
; 
; 1. 编写一个解决第四章练习1的函数，该函数旨在通过一个初始速度v和与水平面所成夹角a来计算飞行距离。

; 1
; (define (throw v a)
;   (let ((r (/ (* 4 a (atan 1.0)) 180)))
;     (/ (* 2 v v (cos r) (sin r)) 9.8)))