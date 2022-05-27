;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname raizNewton) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Se trata de elaborar un algoritmo recursivo que, utilizando el método
; de newton, permita calcular la raíz cuadrada de un número x con una
; aproximación e
; Contrato:
; raizNewton: numero numero numero -> numero
; Propósito: resolver el enunciado
; Plantilla:
; (define (raizNewton x y e) ...)
; Ejemplos:
; (raizNewton 16 1 0.0000001) ebe retornar 4.000000....
; (raizNewton 2 1 0.0000001) debe retornar 1.4142....
; Programa:
; Pruebas:
;(raizNewton 16 1 0.0000001)
;(raizNewton 2 1 0.0000001)
(define (raiz x)
  (local
    (
     (define (raizNewton x y e)
       (cond
         [(< (abs (- (/ (+ (/ x y) y) 2) y)) e) (/ (+ (/ x y) y) 2)]
         [else (raizNewton x (/ (+ (/ x y) y) 2) e)]))
     )
    (raizNewton x 1 0.000001)))
