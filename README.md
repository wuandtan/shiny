#Introduction

This project is to show how to use shiny package to generate interactive applications. We will show two-dimensional Gaussian distributed samples, whose parameters are desinated by a user. We also let the user be able to control the rotation of data samples. An ellipse rotates with the transformed data.

#Inplementation

The project has a side-by-side interface. In the left column, we will see one slideBar and 4 numericInput fields. The first SliderBar decides the number of samples. The 1 to 4-th numericInput fields define the mu, sigma of the first dimension, and the mu and sigma for the second dimension. The last sliderBar controls the angle that the user would like to rotate, from 0 degree to 360 degree.  In the right column, we plot the two dimensional samples, and rotate the samples as required.

# Range of parameters

- Number of samples: min: 10, max: 1000, step: 10
- For the first dimension:
-- Mean: min = -10, max = 10, step = 1
-- Sigma: min = 1, max = 10, step = 1
- For the second dimension:
-- Mean: min = -10, max = 10, step = 1
-- Sigma: min = 1, max = 10, step = 1
- Rotation
-- rotate: min = 0, max = 360, step = 5
