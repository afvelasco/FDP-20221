;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname arbolBinarioBusqueda) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Definición de datos
(define arbolito (list 15
                       (list 8
                             (list 3 empty empty)
                             (list 10
                                   empty
                                   (list 13 empty empty)))
                       (list 31
                             (list 29 empty empty)
                             (list 53 empty empty))))
; Se definen las funciones básicas eshoja?, izquierda y derecha
(define (esHoja? arbol)
  (and (empty? (second arbol))
       (empty? (third arbol))))
(define (izquierda arbol)
  (second arbol))
(define (derecha arbol)
  (third arbol))
; Se escribe función para generar lista con recorrido "inorden"
(define (recorreIn arbol)
  (cond
    [(empty? arbol) empty]
    [else (append (recorreIn (izquierda arbol))
                  (list (first arbol))
                  (recorreIn (derecha arbol)))]))
; Se debe escribir una función que reciba un árbol bb de enteros y
; un valor enteror y debe retornar true si el número está en el árbol
; o false si no está
(define (buscaArbol arbol val)
  (cond
    [(empty? arbol) false]
    [(= (first arbol) val) true]
    [(< val (first arbol)) (buscaArbol (izquierda arbol) val)]
    [(> val (first arbol)) (buscaArbol (derecha arbol) val)]))
