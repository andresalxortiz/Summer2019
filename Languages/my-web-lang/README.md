# Web Katas - Individual training exercises for web development

## Summary

Katas with the intent of teaching users basic web design using HTML and CSS in Racket.

## Structure

The canonical structure of this ThoughtSTEM Language is as follows:

```
my-web-katas/
  - assets/
  - compiled/
  - doc/
  - lang/
  - testing/
  - assets.rkt
  - examples.rkt
  - lang.rkt
  - main.rkt
  - README.md
  - web-katas.scrbl

```

## Kata Development

When you are developing new katas, place the files in the 'testing' folder

A few helpful resources for learning how to use this language are:

https://download.racket-lang.org/docs/5.1.1/html/web-server/index.html
https://docs.racket-lang.org/continue/index.html

When you have developed a new kata, place it in the examples.rkt file with the following format:

```
; [Difficulty]: [Kata prompt]

(define-example-code Summer2019/Languages/my-web-lang/main [kata-number]-[descriptive-tags-separated-by-dashes]

  [Your Kata Code]
)
```
