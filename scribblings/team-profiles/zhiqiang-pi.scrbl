#lang scribble/manual

@(require "./common.rkt"
          2htdp/image
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-code-no-peeking.rkt"
          "../new-tactics/no-peeking.rkt")

@(bio "Zhiqiang Pi" 
      "Zhiqiang-Pi.jpg"
      "I started coding in 11th grade doing java. I know a little bit of python. I go to UCSD. I'm interested in using video games to motivating learning")

@blog{

 @blog-post["Day 1"]{
@(add-curve
 (underlay/offset (circle 40 "solid" "yellow")
                 0 -10
                 (underlay/offset (circle 10 "solid" "blue")
                                  -30 0
                                  (circle 10 "solid" "blue")))
 60 60 -30 1/6
 30 60 30 1/6
 "black"

 )          
@codeblock{(add-curve
 (underlay/offset (circle 40 "solid" "yellow")
                 0 -10
                 (underlay/offset (circle 10 "solid" "blue")
                                  -30 0
                                  (circle 10 "solid" "blue")))
 60 60 -30 1/6
 30 60 30 1/6
 "black") ; a smily face with blue eyes, a yellow face, and a curved mouth}
 
 @blog-post["Week 1"]{I worked on making games with racket with 2htdp/universe and 2hdtp/image with Titan and Adam.
                     We got close to finishing the plane game but stopped because it won't make a good kata.
                      So we moved on to making simpler games. }
 
 @blog-post["Week 2 day1"]
  {
   Started. Attempted to manage the teams working on my-data-sci. Reorganized the katas into subgroups instead of one big group.
   Also added prompts for the katas missing one.
  }

  @blog-post["Week 2 day2"]
  {
   Learned about how to do coding interviews: asking questions and other habits that might be helpful.
   Kept working on the data-sci katas. Added katas on 3D-plots.
   }


 
  }
 }