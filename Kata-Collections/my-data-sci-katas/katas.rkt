#lang racket

;=== NOTES ===
;Work for github issue #342 needs to be completed on this document.
;About half the katas from my-data-sci-lang/examples.rkt have been put in here. The rest still need to be added.
;Follow the format that has been used so far. For help, reference my-game-katas/katas.rkt which is the same kind
;of document as this one but it has been finished.
;Some of the stimuli in my-data-sci-lang/examples.rkt don't have stimuli, go ahead and make your own.

(provide katas)

(require ts-kata-util/katas/main)

(define katas
  (fill-in-stimuli
    (lang->kata-collection 'Summer2019/Languages/my-data-sci-lang)

    ;To add a new kata, add two new lines of code in this block
    ; 1) 'the-name-of-your-kata
    ; 2) (read "your kata's stimuli. ex: "Create a circle...")

    'discrete-histogram-001
    (read "Plot a discrete histogram with 3 horizontal bars.")

    'discrete-histogram-002
    (read "Plot two discrete histograms with 4 horizontal bars with varying amounts for each histogram.")

    'discrete-histogram-003
    (read "Plot two discrete histograms with 4 horizontal bars with varying amounts and labels for each histogram.")


    'area-histogram-001
    (read "Plot an area histogram  for the function y=x.")

    'area-histogram-002
    (read "Plot an area histogram for an inverted parabola. Adjust the color, transparency, and style of the graph.")

    'area-histogram-003
    (read "Plot an area histogram for the function describing the behavior of Euler's number raised to the power of
;the square of x halved and negated. Adjust the color, transparency, style, sample size, line style,
;and dimensions of the graph.")


    'scatter-plot-001
    (read "Plot a scatterplot with 5 points that go diagonally across the graph (hint: start with (1, 1)).")

    'scatter-plot-002
    (read "Plot a scatterplot with 50 random points (numbers should be between 0 and 100). Make sure the scatterplot axes go from 0 to 100.")

    'scatter-plot-003
    (read "Plot a scatterplot with 1000 points, gathered in a square around the origin (0, 0) (hint: use x-jitter and y-jitter). Make the points red, slightly transparent circles.")


    'candlesticks-graph-001
    (read "Plot a candlesticks graph with 2 candlesticks.")

    'candlesticks-graph-002
    (read "Plot a candlesticks graph with 2 candlesticks and scale the graph so that
the minimum x value is 0 and the max x value is 50,
and the minimum y value is 0 and the max y value is 100")

    'candlesticks-graph-003
    (read "Plot a candlesticks graph with 3 candlesticks. Scale the graph so that the minimum x value
is -50, the maximum x value is 50, the minimum y value is -50, and the maximum y value is 50. Customize
your line styles and colors")


    'error-bar-graph-001
    (read "Plot an error bar graph with two error bars.")

    'error-bar-graph-002
    (read "Plot an error bar graph with two error bars. Scale the graph so that the minimum value of x is -5,
the maximum value of x is 5, the minimum y value is -5 and the maximum y value is 25.")

    'error-bar-graph-003
    (read "Plot a an error bar graph with three error bars. The function should be x cubed.
Scale the graph so that the minimum value of x is 0,
the maximum value of x is 20, the minimum value of y is 0, and the maximum value of y is 300. Customize the
color and line style.")


    'exponential-graph-001
    (read "Plot an exponential graph.")

    'exponential-graph-002
    (read "Plot a dotted exponential graph.")

    'exponential-graph-003
    (read "Plot two exponential graphs with proper labels and differing styles on the same plane.")

    'exponential-graph-004
    (read "Plot two graphs (y = sin(x) and y = cos(x) ) with proper labels and with a domain between -pi and pi on the same plane.")


    'square-arrow-001
    (read "Make a list of 10 squares that rotate at an increasing degree with each iteration.")

    'square-arrow-002
    (read "Make a list of 10 arrows that rotate at an increasing radian with each iteration.")

    'square-arrow-003
    (read " Make a COLUMN of 10 squares that rotate at an increasing degree with each iteration
and a COLUMN of 10 arrows that rotate at an increasing radian with each iteration. Then, append the two columns to be side-by-side.")
    
    'katas-b-change-size-001
    (read "Make a row of jack-o-lanterns, with each subsequent jack-o-lantern becoming larger than the previous.")

    'katas-b-change-size-002
    (read "Make a row of increasing in size file icons, with each subsequent icon being a different color..")

    'katas-b-colors-rotation-superimpose-001
    (read "Make a column of 6 circles with each circle alternating color in rainbow order.")

    'katas-b-colors-rotation-superimpose-002
    (read "Make a column of 10 purple squares with each subsequent square rotating 30 degrees with each iteration.")

    'katas-b-colors-rotation-superimpose-003
    (read  "Make 5 circles, with each circle being within each other. In the center, create 7 squares of 100 x 100 dimensions
    with each square being rotated an equal distance around each other.")

    'katas-b-colors-rotation-superimpose-004
    (read "Create 100 rectangles of 100 x 200 dimensions, with each rectangle being rotated around a center point an equal distance
    away from each other.")
    ))

(define-sub-collections katas
			discrete-histogram
                        area-histogram
                        exponential-graph
                        square-arrow
                        error-bar-graph
                        scatter-plot
                        candlesticks
  )
