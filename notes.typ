// == Preamble ==
#import "@preview/ctheorems:1.1.0": *
#show: thmrules
#import "@preview/gentle-clues:0.4.0": abstract, question, info, example, error, warning, success, idea, memo, quote

#set page(margin: 1in, paper: "us-letter")
#set text(font: "Open Sans")
#show raw: set text(font: "New Computer Modern Mono")
#show heading: set block(above: 1.4em, below: 1em)
#show link: underline
#set page(
  header: [
  #h(1fr)
  #counter(page).display(
    "1/1",
    both: true,
  )
  ],
  footer: [
  #link("https://www.mueezkhan.com")[Mueez Khan] #h(0.4cm) #link("https://www.github.com/rzmk/various-dsat-math-notes")[_Various Digital SAT Math Notes_] #h(0.4cm)
  #h(1fr)
  v0.1.0 Released: 2023-11-22
  ]
)

// ctheorems setup
#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong
)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmplain(
  "proof",
  "Proof",
  base: "theorem",
  bodyfmt: body => [#body #h(1fr) $square$]
).with(numbering: none)

// == Document ==

= Various Digital SAT Math Notes

Various notes based on various resources (refer to #link(label("bibliography"))[bibliography]). Authored by #link("https://www.mueezkhan.com")[Mueez Khan].

#info(title: "What is the Digital SAT?")[
  - An exam taken on a laptop or tablet, using #link("https://bluebook.app.collegeboard.org/")[Bluebook]
  - About 2 hours long
  - Allows the use of a calculator on the entire math section
  You may learn more about the Digital SAT from College Board and Khan Academy.
]

#idea(title: "Tip!")[Two methods you may prep for the Digital SAT are:
- Taking *full-length practice tests* (for example using College Board's #link("https://bluebook.app.collegeboard.org/")[Bluebook app])
- *Practicing skills* (for example by using #link("https://www.khanacademy.org/test-prep/v2-sat-math")[Khan Academy] to read articles, watch videos, and do exercises)
I also suggest watching *online videos* of instructors going through practice problems. You can pause videos and try to solve the problem yourself before continuing the video to learn the instructor's solution. This way you can get instant feedback on your work, and you'll be able to learn from the instructor's explanation.
]

#warning(title: "Important Message!")[
  This document is intended as a *supplemental resource* for individuals preparing for the SAT. *The notes are not intended to be a comprehensive guide to the SAT nor as a sole resource used for preparing for the SAT.*
  
  The notes are not endorsed by the College Board, Khan Academy, and any other organization mentioned in this document. Nor do I endorse any of the resources/organizations mentioned in this document.

  If there are any errors, please open an #link("https://github.com/rzmk/various-dsat-math-notes/issues")[issue] or #link("https://github.com/rzmk/various-dsat-math-notes/pulls")[pull request] on #link("https://github.com/rzmk/various-dsat-math-notes")[GitHub].
]

#success(title: "One More Thing!")[
  Believe in yourself! 🙌
]

#pagebreak()
#outline(title: "Table of Contents")

#pagebreak()

== "Essential SAT Math Formulas"

This section is primarily based on an SAT Math YouTube video by Scalar Learning @sl-math-full-review.

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Name & Description*], [*Formula*], [*Example*],
  [*Slope of a Line*: Finds the slope $m$ of a line passing through the points $(x_1, y_1)$ and $(x_2, y_2)$], [$ m = frac((y_1 - y_2), (x_1 - x_2)) $], [
    Find the slope of the line that passes through the points $(7, 2)$ and $(5, 1)$.

    $ m = frac((2 - 1), (7 - 5)) = frac(1, 2) $
  ],
  [*Slope-Intercept Form*: Finds the equation of a line in the form $y = m x + b$ given the slope $m$ and $y$-intercept $b$], [$ y = m x + b $], [
    Find the slope $m$ and $y$-intercept $b$ of the line $2x + 7y = 49$.

    $ 2x + 7y = 49 $

    $ 7y = -2x + 49 $

    $ y = -frac(2, 7) x + 7 $

    $ m = -frac(2, 7) $

    $ b = 7 $
  ],
  [*Point-Slope Form*: Finds the equation of a line in the form $y - y_1 = m (x - x_1)$ given the slope $m$ and a point $(x_1, y_1)$ on the line], [$ y - y_1 = m (x - x_1) $], [
    Find the equation of the line that passes through the point $(3, 4)$ and has a slope of $frac(1, 2)$.

    $ y - 4 = frac(1, 2) (x - 3) $

    $ y - 4 = frac(1, 2) x - frac(3, 2) $

    $ y = frac(1, 2) x + frac(5, 2) $
  ],
  [*Midpoint Formula*: Finds the midpoint of the line segment with endpoints $(x_1, y_1)$ and $(x_2, y_2)$], [$ ((x_1 + x_2) / 2, (y_1 + y_2) / 2) $], [
    Find the midpoint of the line segment with endpoints $(1, 2)$ and $(5, 6)$.

    $ ((1 + 5) / 2, (2 + 6) / 2) = (3, 4) $
  ],
  [*Distance Formula*: Finds the distance between the points $(x_1, y_1)$ and $(x_2, y_2)$], [$ sqrt((x_1 - x_2)^2 + (y_1 - y_2)^2) $], [
    Find the distance between the points $(1, 2)$ and $(5, 6)$.

    $ sqrt((1 - 5)^2 + (2 - 6)^2) $
    $ sqrt(16 + 16) $
    $ sqrt(32) $
  ],
  [*Length of an Arc*: Finds the length of an arc with radius $r$ and central angle $theta$], [$ frac(theta, 360) (2 pi r) $], [
    Find the length of an arc with radius $r = 5$ and central angle $theta = 60$.

    $ frac(60, 360) (2 pi 5) = frac(1, 6) (10 pi) = frac(5 pi, 3) $
  ],
  [*Area of a Sector*: Finds the area of a sector with radius $r$ and central angle $theta$], [$ frac(theta, 360) (pi r^2) $], [
    Find the area of a sector with radius $r = 5$ and central angle $theta = 60$.

    $ frac(60, 360) (pi 5^2) = frac(1, 6) (25 pi) = frac(25 pi, 6) $
  ],
  [*Quadratic Formula*: Finds the roots ($x$-intercepts) of a quadratic equation $a x^2 + b x + c = 0$], [$ x = frac(-b plus.minus sqrt(b^2 - 4a c), 2a) $], [
    Solve $x^2 + 3x - 4 = 0$.

    $ x = frac(-3 +- sqrt(3^2 - 4(1)(-4)), 2(1)) $

    $ x = frac(-3 +- sqrt(25), 2) $

    $ x = frac(-3 +- 5, 2) $

    $ x = -4, 1 $
  ],
  [*SOHCAHTOA*: Finds the sine, cosine, and tangent of an angle $theta$ in a right triangle with hypotenuse $h$, adjacent side $a$, and opposite side $o$], [$ sin(theta) = frac(o, h) $ \ $ cos(theta) = frac(a, h) $ \ $ tan(theta) = frac(o, a) $], [
    Find the sine, cosine, and tangent of an angle $theta$ in a right triangle with hypotenuse $h = 5$, adjacent side $a = 3$, and opposite side $o = 4$.

    $ sin(theta) = frac(4, 5) $

    $ cos(theta) = frac(3, 5) $

    $ tan(theta) = frac(4, 3) $
  ],
  [*Probability*: "How likely you're gonna win"], [$ frac("Number of Favorable Outcomes", "Total Number of Outcomes") $], [
    Find the probability of rolling a 6 on a fair die.

    $ frac(1, 6) $
  ],
  [*Circle Equation*: $(h, k)$ is the center coordinate of the circle, and $r$ is the radius of the circle], [$ (x - h)^2 + (y - k)^2 = r^2 $], [
    Find the equation of a circle with center $(h, k) = (3, 4)$ and radius $r = 5$.

    $ (x - 3)^2 + (y - 4)^2 = 5^2 $

    $ (x - 3)^2 + (y - 4)^2 = 25 $

    \

    Given the equation of a circle $x^2 + 4x + y^2 + 6y = 3$, find the center and radius.

    $ x^2 + 4x + y^2 + 6y = 3 $

    $ x^2 + 4x + 4 + y^2 + 6y + 9 \ = 3 + 4 + 9 $

    $ (x + 2)^2 + (y + 3)^2 = 16 $

    $ (x + 2)^2 + (y + 3)^2 = 4^2 $

    $ (x + 2, y + 3) = (h, k) $

    $ (h, k) = (-2, -3) $

    $ r = 4 $
  ],
  [*Exponential Growth/Decay*: When you increase/decrease in value. $y$ is the final amount, $a$ is the initial amount, $r$ is the rate of growth/decay, and $t$ is the time], [$ y = a (1 + r)^t $], [
    Exponential Growth: Initial value of 200, growth rate of 13% per year, and time of 3 years.

    $ y = 200 (1 + 0.13)^3 $

    \

    Exponential Decay: Initial value of 150, decay rate of 9% per year, and time of 2 years.

    $ y = 150 (1 - 0.09)^2 $
  ],
  [*Vertex of a Parabola*: When you have a quadratic in standard form ($y = a x^2 + b x + c$), you can get the $x$ value of the vertex. You may then plug the $x$ value back into the equation to get the $y$ value if required], [$ x = frac(-b, 2a) $], [
    Find the vertex of the parabola $y = x^2 + 4x + 3$.

    $ x = frac(-4, 2(1)) = -2 $

    $ y = (-2)^2 + 4(-2) + 3 = -1 $
  ],
  [*Vertex Form*: When you have a quadratic in vertex form ($y = a (x - h)^2 + k$), you can get the vertex $(h, k)$], [$ y = a (x - h)^2 + k $], [
    Find the vertex of the parabola $y = 2x^2 + 4x + 3$.

    $ y = 2(x^2 + 2x) + 3 $

    $ y = 2(x^2 + 2x + 1 - 1) + 3 $

    $ y = 2((x + 1)^2 - 1) + 3 $

    $ y = 2(x + 1)^2 - 2 + 3 $

    $ y = 2(x + 1)^2 + 1 $

    $ (h, k) = (-1, 1) $
  ],
  [*Pythagorean Theorem*: Finds the length of the hypotenuse $c$ of a right triangle with sides $a$ and $b$], [$ c^2 = a^2 + b^2 $], [
    Find the length of the hypotenuse $c$ of a right triangle with sides $a = 3$ and $b = 4$.

    $ c^2 = 3^2 + 4^2 $

    $ c^2 = 9 + 16 $

    $ c^2 = 25 $

    $ c = 5 $
  ],
  [*Distance = Rate $times$ Time*: Finds the distance $d$ traveled given the rate $r$ and time $t$], [$ d = r t $], [
    Find the distance $d$ traveled given the rate $r = 5$ and time $t = 3$.

    $ d = 5 * 3 = 15 $

    \

    If we're going 50 miles per hour and we've traveled 250 miles, how long have we been traveling?

    $ d = r t $

    $ 250 = 50 t $

    $ t = frac(250, 50) = 5 $

    We've been traveling for 5 hours.
  ],
  [*Sine and Cosine*], [$ sin(x) = cos(90 - x) $], [
    Find $sin(30)$.

    $ sin(30) = cos(90 - 30) $

    $ sin(30) = cos(60) $
  ],
  [*Sum of Solutions of a Quadratic*: When you have a quadratic in standard form, you can get the sum of the solutions $x_1$ and $x_2$], [$ x_1 + x_2 = frac(-b, a) $], [
    Find the sum of the solutions $x_1$ and $x_2$ of the quadratic $x^2 + 4x + 3 = 0$.

    $ x_1 + x_2 = frac(-4, 1) = -4 $
  ],
  [*The Discriminant of a Quadratic*: The number of real solutions _for a quadratic_ ($0 = a x^2 + b x + c$) \
  
  - If $b^2 - 4a c > 0$, there are 2 real solutions
  - If $b^2 - 4a c = 0$, there is 1 real solution
  - If $b^2 - 4a c < 0$, there are 0 real solutions

  ], [$ b^2 - 4a c $], [
    Find the number of real solutions for the quadratic $x^2 + 4x + 3 = 0$.

    $ b^2 - 4a c $
    $ = 4^2 - 4(1)(3) $
    $ 16 - 12 = 4 > 0 $

    There are 2 real solutions.
  ],
  [*Area of an Equilateral Triangle*: Finds the area of an equilateral triangle with side length $s$. You may also draw an altitude to form a 30-60-90 right triangle and use the Pythagorean Theorem to find the height $h$], [$ frac(s^2 sqrt(3), 4) $], [
    Find the area of an equilateral triangle with side length $s = 5$.

    $ frac(5^2 sqrt(3), 4) = frac(25 sqrt(3), 4) $
  ],
  [*30-60-90 Triangle*: When you have a 30-60-90 triangle with hypotenuse $h$, small leg length $a$, and the height $o$, you can find the side lengths using the following formulas], [
    $ h = 2a $
    $ a = a $
    $ o = a sqrt(3) $
    ], [
    Find the side lengths of a 30-60-90 triangle with hypotenuse $h = 10$.

    $ a = frac(10, 2) = 5 $

    $ o = 5 sqrt(3) $
  ],
  [*Common Pythagorean Triples*], [
    $ 3, 4, 5 $
    $ 5, 12, 13 $
    $ 7, 24, 25 $
    $ 8, 15, 17 $
  ], [],
  [*Perpendicular Slope*: the negative reciprocal of a slope $m = frac(a, b)$], [$ m = -frac(b, a) $], [
    Find the perpendicular slope of $m = frac(3, 4)$.

    $ m = -frac(4, 3) $
  ],
  [*Parallel Slope*: the same slope as $m = frac(a, b)$ \ \ Also if two lines are parallel with a different $y$-intercept, then they have no solution. Otherwise if they're the same equation then they have infinitely many solutions.], [$ m = frac(a, b) $], [
    Find the parallel slope of $m = frac(3, 4)$.

    $ m = frac(3, 4) $
  ],
  [*Sum of Angles (of any Polygon)*: Finds the sum of the interior angles of a polygon with $n$ sides], [$ "Sum" = (n - 2) 180 $], [
    Find the sum of the interior angles of a pentagon.

    $ (5 - 2) 180 = 3 * 180 = 540 $
  ]
)

#pagebreak()

#bibliography("bibliography.yml") #label("bibliography")
