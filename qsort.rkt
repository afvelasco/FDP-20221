;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname qsort) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (menores lis val)
  (cond
    [(empty? lis) empty]
    [(<= (first lis) val) (cons (first lis) (menores (rest lis) val))]
    [else (menores (rest lis) val)]))
(define (mayores lis val)
  (cond
    [(empty? lis) empty]
    [(> (first lis) val) (cons (first lis) (mayores (rest lis) val))]
    [else (mayores (rest lis) val)]))
(define (qsort lis)
  (cond
    [(empty? lis) empty]
    [else (append (qsort (menores (rest lis) (first lis)))
                  (list(first lis))
                  (qsort (mayores (rest lis) (first lis))))]))
(qsort (list 7 3 6 5 4 6 8 1 2 6 ))