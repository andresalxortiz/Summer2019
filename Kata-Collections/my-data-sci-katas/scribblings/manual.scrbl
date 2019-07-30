#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Data Science Katas}

Below are katas related to data science, with a current emphasis on data visualization.

@table-of-contents[]

@section{Addition}
@(render addition)

@section{Discrete Histograms}
@(render discrete-histogram)

@section{Area Hisograms}
@(render area-histogram)

@section{Expontential Graphs}
@(render exponential-graph)

@section{Square Arrows}
@(render square-arrow)

@section{Error Bar Graphs}
@(render error-bar-graph)

@section{Scatter Plots}
@(render scatter-plot)

@section{Candlesticks}
@(render candlesticks)

@section{Group A}
@(render grpa)

@section{Group B}
@(render katas-b)

@section{Group C}
@(render grpC)

@section{Superset Lang}
@(render superset-lang)