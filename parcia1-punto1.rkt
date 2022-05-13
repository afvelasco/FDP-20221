;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname parcia1-punto1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;La organización de la Feria de Tuluá,buscando una mayor participación del público
;tanto a nivel local como nacional, actualmenteestá adelantando la preventa de las manillas, la
;cual tiene un costo de $50.000 tipo plata (soloacceso a áreas de exposición), $80.000 tipo oro(acceso además al área de espectáculos) $100.000
;tipo platino (acceso además a espectáculos
;externos al coliseo).  Para incentivar la venta seha ofrecido los siguientes descuentos paracompras en la misma localidad:  de 2 a 4 manillasun descuento de 5%, de 5 a 8 manillas descuento
;del 10% y para compras de 9 o más manillasdescuento del 15%.  Adicionalmente, si secompran más de 15 manillas se agrega un
;descuento de $5.000 por manilla.  Elabore unafunción que reciba el número de manillas y el
;tipo y retorne el valor a pagar luego dedescuentos.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Contrato: cobroManillas: numero simbolo -> numero
; Proposito: resolver el enunciado
; Plantilla: (define (cobroManillas num tipo) ...)
; Ejemplos:
; (cobroManillas 1 'oro) debe retornar 80000
; (cobroManillas 3 'plata) debe retornar 142500
; (cobroManillas 8 'platino) debe retornar 720000
; (cobroManillas 10 'oro) debe retornr 680000
; (cobroManillas 20 'plata) debe pagar 750000
; Programa:
(define (cobroManillas num tipo)
  (- (* (* num (cond
                 [(symbol=? tipo 'plata) 50000]
                 [(symbol=? tipo 'oro) 80000]
                 [else 100000])) (cond
                                   [(> num 8) 0.85]
                                   [(> num 4) 0.90]
                                   [(> num 1) 0.95]
                                   [else 1.00])) (if (> num 15)
                                                     (* num 5000)
                                                     0)))
;Pruebas:
(check-expect (cobroManillas 1 'oro) 80000)
(check-expect (cobroManillas 3 'plata) 142500)
(check-expect (cobroManillas 8 'platino) 720000)
(check-expect (cobroManillas 10 'oro) 680000)
(check-expect (cobroManillas 20 'plata) 750000)
