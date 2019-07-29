#lang racket

;; Version 2, in 3D
;; Version 3, now with aliens!
;; Version 4, with shooting aliens
;; Version 5, with more interesting paths for aliens

;; What next?
;; Score . Speed controls . more interesting paths for aliens
;; Missiles, visible shooting
;; Move the spaceship around

(require 2htdp/universe 2htdp/image)
(require "util.rkt")
(require "3d.rkt")

;; - to + of this value for new stars
(define MAX-STAR-XY 25000)

(define MAX-STARS 100)
(define MAX-ALIENS 10)
(define ALIEN-SIZE 150)

(define TICK-RATE 1/50)
(define ACCEL 1)
(define START-Z 100)

(define (random-star-xy) (- (random MAX-STAR-XY) (/ MAX-STAR-XY 2)))
(define (random-angle) (* (random) 2 pi))

;; -----------------------------------------------------------
;; The world and init

(struct starfield (stars aliens) #:transparent)
(struct astar (pos) #:transparent)
(struct alien (pos direction dirchange speed colour) #:transparent)

  
(define (start-space)
  (big-bang (init-world)
            (on-tick fly TICK-RATE)
            (on-mouse mouse-event)
            (to-draw render-space)
            (stop-when end-flight)))

(define (init-world)
  (starfield (times-repeat MAX-STARS (new-star))
             (times-repeat MAX-ALIENS (new-alien))))

;; -----------------------------------------------------------
;; Stars and Aliens

(define (new-star)
  (astar (point (random-star-xy)
              (random-star-xy)
              (+ (random START-Z) 10))))

(define (move-star s)
  (define p (astar-pos s))
  (astar (point (point-x p) (point-y p) (- (point-z p) ACCEL))))

(define (stars-in-view stars)
  (define (replace-star s)
    (if (star-out-of-view? s) (new-star) s))
  (map replace-star stars))

(define (star-out-of-view? s)
  (<= (point-z (astar-pos s)) 1))

;; ...........................................................

(define (new-alien)
  (define path (random-choice '(one two)))
  (define adirection
    ;; direction is: inclination, azimuth
    ;; azimuth - 1.570 (pi/2) is left or right, no forward/backwards
    (if (eq? path 'one)
        (direction 0 1.575)
        (direction 1.575 1.571)))
  (define achdirection
    ;; Change in direction angles: inclination, azimuth
    (if (eq? path 'one)
        (direction (random-sign (/ (random) 10)) 0)
        (direction (random-sign 0.09) 0.0002)))
  
  (alien
   (point 0 0 20) adirection achdirection   
   ;; Speed
   (+ 15 (random 15))

   (color (random-range 100 255)
          (random-range 100 255)
          (random-range 100 255))))

(define (move-alien a)
  (alien (move-point (alien-pos a) (alien-direction a) (alien-speed a))
         (change-direction (alien-direction a) (alien-dirchange a))
         (alien-dirchange a)
         (alien-speed a)
         (alien-colour a)))

(define (aliens-in-view aliens)
  ;; Replace any aliens out of view with new ones
  (define (replace-alien s)
    (if (alien-out-of-view? s) (new-alien) s))
  (map replace-alien aliens))

(define (alien-out-of-view? s)
  (or (<= (point-z (alien-pos s)) 1)
      (> (point-z (alien-pos s)) 100)))

(define (fly w)
  (starfield (map move-star (stars-in-view (starfield-stars w)))
             (map move-alien (aliens-in-view (starfield-aliens w)))))

;; -----------------------------------------------------------
;; Input events

(define (mouse-event w x y event)
  (define (kill-alien a)
    ;; If mouse pos x,y is inside the shape of the alien
    ;; then kill it, replacing it with a new one, otherwise leave it as it
    (define pos (alien-pos a))
    (define size (screen-size ALIEN-SIZE pos))
    (if (and (>= x (- (screen-x pos) size))
             (<= x (+ (screen-x pos) size))
             (>= y (- (screen-y pos) size))
             (<= y (+ (screen-y pos) size)))
        (new-alien) a))
  
  (cond [(eq? event "button-down")
         (starfield (starfield-stars w)
                    (map kill-alien (starfield-aliens w)))]
        [else w]))

;; -----------------------------------------------------------
;; Rendering space, stars and aliens

(define (render-space w)
  (aliens+scene (starfield-aliens w) 
                (stars+scene (starfield-stars w)
                             (empty-scene WIDTH HEIGHT "black"))))

(define (stars+scene stars scene)
  ;; Place the stars on the scene
  (foldl (λ (s scene)
           (place-image (circle (star-size s) "solid" (star-colour s))
                        (screen-x (astar-pos s))
                        (screen-y (astar-pos s))
                        scene))
         scene stars))

(define (star-size s)
  (define z (point-z (astar-pos s)))
  (cond [(> z 75) 1]
        [else (+ 1 (/ (- 75 z) 20)) ]))

(define (star-colour s)
  (define z (point-z (astar-pos s)))
  (cond [(> z 90) (color 255 255 255 20)]
        [else (color 255 255 255 (+ 20 (* 2 (- 90 z))))]))

(define (aliens+scene aliens scene)
  ;; Place the aliens on the scene
  (foldl (λ (a scene)
           (place-image (alien-image a)
                        (screen-x (alien-pos a))
                        (screen-y (alien-pos a))
                        scene))
         scene
         ;; Do the closest aliens last
         (sort aliens > #:key (λ (a) (point-z (alien-pos a))))))

(define (alien-image a)
  (radial-star 12 (screen-size ALIEN-SIZE (alien-pos a))
               (screen-size (* ALIEN-SIZE 0.5) (alien-pos a))
               "solid" (alien-colour a)))

;; -----------------------------------------------------------

(define (end-flight w)
  ;; No end!
  #f)

;;(start-space)