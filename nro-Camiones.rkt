;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname nro-Camiones) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Autor: Andres Fernando Velasco
; Fecha: 24 de marzo de 2022
; Contrato:
;  nro-Camiones: numero     -> numero
;                # de cajas    # de camiones
; Proposito: calcular el numero de camiones necesario para llevar N cajas.
; Plantilla:
; (define (nro-Camiones N) ...)
; Pruebas:
; (nro-Camiones 65) debe retornar 3)
; (nro-Camiones 120) debe retornar 4)
; (nro-Camiones 1200) debe retornar 40)
(define (nro-Camiones N)
  (ceiling (/ N 30)))
; Pruebas:
(check-expect (nro-Camiones 65) 3)
(check-expect (nro-Camiones 120) 4)
(check-expect (nro-Camiones 1200) 40)