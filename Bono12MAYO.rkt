;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Bono12MAYO) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Definición de datos
(define-struct articulo (codigo nombre valorUnitario))
(define art1 (make-articulo 2345 'Cuaderno 4300))
(define art2 (make-articulo 5432 'Legajador 3450))
(define art3 (make-articulo 6789 'Cartuchera 13500))
(define art4 (make-articulo 9876 'Boligrafo 1800))
(define art5 (make-articulo 4598 'Regla 2100))
(define listado (list art1 art2 art3 art4 art5))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-struct item (codigo cantidad))
(define item1 (make-item 5432 2))
(define item2 (make-item 2345 6))
(define item3 (make-item 9876 3))
(define pedido (list item1 item2 item3))
; 1. Hacer una función que dado un codigo, retorne el valor unitario de ese
;    codigo
; 2. Hacer una función que dado un item, retorne el valor de ese item (según
;    la cantidad del artículo)
; 3. Hacer una función que reciba una lista de artículos y una lista de
;    compras o items y retorne el valor de la compra


