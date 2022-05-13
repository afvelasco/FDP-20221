;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname interseccion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Definición de datos
(define conjuntoA (list 2 4 6 8 10))
(define conjuntoB (list 1 2 3 4 5 6 7 8))
(define (buscar lis v)
  (cond
    [(empty? lis) false]
    [(= (first lis) v) true]
    [else (buscar (rest lis) v)]))
; Contrato:
; interseccion: list list -> list
; Proposito: Recibe dos listas que representan conjuntos de enteros y retorna
;            otra lista con la intersección de los conjuntos representados
; Plantilla:
; (define (interseccion a b) ...)
; Ejemplo
; (interseccion conjuntoA conjuntoB) debe retornar (list 2 4 6 8)
; Programa:
(define (interseccion a b)
  (cond
    [(empty? a) empty]
    [(buscar b (first a)) (cons (first a) (interseccion (rest a) b))]
    [else (interseccion (rest a) b)]))
; Prueba
(check-expect (interseccion conjuntoA conjuntoB) (list 2 4 6 8))