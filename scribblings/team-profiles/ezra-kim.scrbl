#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt"
          2htdp/image
          lang/posn)

@(bio "Ezra Kim"
      "ezra-kim.png"
      "Hello, my name is Ezra Kim. I'm 23 years old and I am in my second
       year at San Diego Mesa College"
      )

@blog{

 @blog-post["MY PROJECT WEEK 1"]{

  @blog-post["16 July 2019"]{
   Today, we introduced ourselves to everyone and then split up into 3 groups;
   A managing group, a research group, and a coder group. I worked with the managing group
   to find issues within the github repository and create tickets for the coder group to
   view and fix. Stephen also had us brainstorm language and kata topics to add to the "Language"
   and "Kata-Collections" folders.
  }

  @blog-post["17 July 2019"]{
   Today, I continued to find more issues and sort through the pull requests that other interns had
   put in. I also brainstormed ideas for new katas, set up an outline for a general standard of how the katas
   should be set up with easy, medium, and hard difficulties, and then pushed out 3 tickets for new katas.
   Each of the tickets had prompts that described what each difficulty should do, and some of them had code that
   I pulled from the research group so that the other interns could break it down or add to it for each difficulty
   level. I ended the day figuring out how to import pictures into racket, then assign them to a constant
   and edit them with 2htdp/image.
  }

  @blog-post["18 July 2019"]{
   Today, I created a couple more tickets to create new katas. With some time and research, I was able to figure out
   the code to create a gif from a set of images that I placed in the assets library. I then took that code and used it
   as an example for another set of katas. Throughout the day, I also reviewed pull requests and accepted the ones that
   had no issues.
  }

  @blog-post["19 July 2019"]{
   Today, I started going through all of the new katas (as well as some of example kata code in the tickets) and looked
   for functions and constants that were being used frequently and made superset functions in lang/main.rkt, then replaced
   the functions with their respective supersets.
  }
 }

 @blog-post["MY PROJECT WEEK 2"]{
                                 
  @blog-post["05 August 2019"]{
   Learned what linked lists were and went over how to deal with coding interviews. Fixed an issue with my-memes-katas/katas.rkt
   and its corresponding example.rkt by moving the Examples/assets folder out of Examples so that the paths that all the katas
   were calling are correct. Closed an issue with repetitive katas for my-web after deciding that the katas were not repetitive
   as they all did something meaningfully different.
  }
 }

 @blog-post["06 August 2019"]{
  Started off the day by continueing to practice coding interviews and writing code for algorithms. Continued to work on learning to
  use linked lists by creating functions to remove duplicates, and find the nth value of a linked list. After lunch, we continued to
  work on the repository. Sophie and I added in a new folder set for my-fractals and standardized the folders so that they would be
  ready to take in new katas. I'm currently working on making fractal katas, using 2htdp/image and universe, that result in either a
  still image, or an animation by using big-bang.
 }

 @blog-post["07 August 2019"]{
  Started the day with more practice for coding interviews. The prompt was to write code that added the numbers that were stored in 2
  lists in reverse order. Afterwards, Stephen showed us how to use "map" and "apply" in racket to achieve the desired result.
  After lunch he assigned us another prompt for mashing together a list of strings using recurrence. The code I came up with was:
  @codeblock{
   (define (mash l)
     (if (empty? l)
     ""
     (string-append (first l)
                    (mash (rest l)))))
  }
  Afterwards, I continued to work on the katas for my-fractals. 
 }

 @blog-post["08 August 2019"]{
  More coding interview practice:
  @blog-post{
   Write code that will find the average of a list of integers:
   @codeblock{
    (define (sum l)
      (if (empty? l)
      0
      (+ (first l)
         (sum (rest l)))))

    (define (average sum num)
      (/ sum num))
   }
  }
  @blog-post{
   Write code that will return "true" if a list contains the a given string
   @codeblock{
    (define list1 '("oranges" "apples" "carrots"))

    (define (has-string l s)
      (if (eqv? (index-of l s) #f)
        #f
        #t))
   }
  }
  Continued to add to the repository. Sophie and I added some example katas to my-fractals
 }
}