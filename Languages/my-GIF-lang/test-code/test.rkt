#lang fundamentals
(require 2htdp/universe)
(require "./../../../Languages/my-fundamentals-lang/lang/main.rkt")

#|#This is a function that takes a number input, modulos it with 44 (because there are 44
image files that this references), then converts the number to a string with the function '~a',
then appends the appropriate strings to the front and back of the number string to make the full
file path name from a number. This function can be split up into several pieces to make it more
understandable if need be.|#
(define directory-const "../assets/world/")

(define num-images-const 44)

(define type-const ".png")

#|# This function makes a picture from the file path string that the other function outputs.|#
(define (make-images-from-multiple-paths number-paths)
  (bitmap/file (make-file-path directory-const
                               number-paths
                               num-images-const
                               type-const)))
 
#|#This creates the scene and adds a tick for every frame. This number will approach infinity,
and is modulo-ed by 44 in the first function so that it cycles through the 44 pictures even though
the number 'tick' increases indefinitely. This can be coded in different ways, such as resetting the
tick once it reaches 44, but this is the way that this particular code functions.|#
(define (run-gif gif)
  (big-bang 0
    (on-tick add1)
    (to-draw gif)))

(run-gif make-images-from-multiple-paths)