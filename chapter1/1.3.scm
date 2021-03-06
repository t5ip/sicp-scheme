Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
PURPOSE.

Image saved on Thursday October 27, 2011 at 7:44:21 PM
  Release 9.1 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/i386 4.118
  Edwin 3.116
;You are in an interaction window of the Edwin editor.
;Type `C-h' for help, or `C-h t' for a tutorial.
;`C-h m' will describe some commands.
;`C-h' means: hold down the Ctrl key and type `h'.
;Package: (user)

(define (min a b)
  (if (< a b)
      a
      b))

(define (max a b)
  (if (> a b)
      a
      b))

(define (max3 a b c)
  (max a (max b c)))

(define (min3 a b c)
  (min a (min b c)))

(define (middle3 a b c)
  (cond ((and (= a (min3 a b c)) (= b (max3 a b c))) c)
        ((and (= a (min3 a b c)) (= c (max3 a b c))) b)
        ((and (= b (min3 a b c)) (= a (max3 a b c))) c)
        ((and (= b (min3 a b c)) (= c (max3 a b c))) a)
        ((and (= c (min3 a b c)) (= a (max3 a b c))) b)
        ((and (= c (min3 a b c)) (= b (max3 a b c))) a)))
 
(define (square x)
  (* x x))

(define (sum_of_squares_two_largest a b c)
  (+ (square (max3 a b c)) (square (middle3 a b c))))

(sum_of_squares_two_largest 4 1 3)












