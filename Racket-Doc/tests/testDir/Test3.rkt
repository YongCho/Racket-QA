#lang racket

(include "fileIO.rkt")
(include racket/filesystem)

(require "testing.rkt")

#||
 | This proc concatinates two strings
 | together.
 | @param substr1 The first string
 | @param substr2 The second string         
 | @return the square of the numbers
 |#
(define (printStrings3 substr1 substr2)
  (display "Answer:\n")
  (display (string-append substr1 substr2)
)

#||
 | This variable stores the status of something.
 |#
(define status3
  'null)


