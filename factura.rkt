;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname factura) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; El ejercicio a desarrollar trata de una papelería:
; Defina una estructura articulo (codigo nombre vrUnitario), cree 7
; variables art1, art2, ...., art7 y con ellas defina una variable con
; un árbol binario de búsqueda (ordenado por el código) balanceado
;
; Defina una estructura elemento (codigo cantidad), cree 5 variables
; ele1, ele2, ...., ele5 y con ellas cree una lista que representará
; la compra de un cliente
;
; Desarrolle un programa (funciones auxiliares deberán estar inaccesibles
; para el usuario) que reciba el árbol de artículos y la lista de compras
; y retorne el valor de la compra
;
; Definición de datos:
;;;;;;;;;;;
(define-struct articulo (codigo nombre vrUnitario))
(define a1 (make-articulo 201 'cartulina 2000))
(define a2 (make-articulo 202 'cuaderno 2500))
(define a3 (make-articulo 203 'block 1500))
(define a4 (make-articulo 204 'resmaCarta 20000))
(define a5 (make-articulo 205 'lapicero 2800))
(define a6 (make-articulo 206 'lapiz 1800))
(define a7 (make-articulo 207 'portaminas 3000))
(define catalogo (list a4
                       (list a2
                             (list a1 empty empty)
                             (list a3 empty empty))
                       (list a6
                             (list a5 empty empty)
                             (list a7 empty empty))))
;;;;;;;;;;;
(define-struct elemento (codigo cantidad))
(define e1 (make-elemento 206 2))
(define e2 (make-elemento 202 8))
(define e3 (make-elemento 204 1))
(define e4 (make-elemento 203 3))
(define e5 (make-elemento 207 2))
(define compra (list e1 e2 e3 e4 e5))
;;;;;;;;;;; Programa principal
(define (factura cata comp)
  (local
    (
;;;;;;;;;;; Funciones básicas para el árbol
; Contrato
     (define (izq a)
       (second a))
     (define (der a)
       (third a))
;;;;;;;;;;; Funciones auxiliares
(define (consultaPrecio cata cod)
  (cond
    [(empty? cata) 0]
    [(= cod (articulo-codigo (first cata))) (articulo-vrUnitario
                                              (first cata))]
    [(< cod (articulo-codigo (first cata))) (consultaPrecio
                                             (izq cata) cod)]
    [else (consultaPrecio (der cata) cod)]))
;;;;;;;;;;;
(define (calValor ele cat)
  (* (elemento-cantidad ele) (consultaPrecio cat (elemento-codigo ele))))
     
     )
    (cond
      [(empty? comp) 0]
      [else (+ (calValor (first comp) cata) (factura cata (rest comp)))]
     )
   
  ))

(factura catalogo compra)