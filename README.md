## Exploring the linear least square technique

In this experiment, we will consider deterministic two variable linear regression in the form of 
$y=\beta_0+\beta_1x$

The least square principle is to find $\beta_0$ and $\beta_1$ such that the following functional is minimized.
$$f(\beta_0,\beta_1)=\sum_{i=1}^{n}[y_i-(\beta_0+\beta_1x_i)]^2$$

The above problem is to solve the following normal equation
$$n\beta_0+(\sum x_i)\beta_1=\sum y_i$$
$$(\sum x_i)\beta_0+(\sum x_i^2)\beta_1=\sum x_i y_i$$

We use the R funciton lm(y~x) to find those coefficients.

We got the data from the article "Relating the cetane number of Biodiesel fuels to their fatty acid composition: A critical study", J. of Automobile Engr.,2009: 565-583. We have $x=$ iodine value(g) and $y=$ cetane number for a sample of 14 biofuels. The authors try to fit simple linear regression model to the data. The data are shown below

$x=(132.0, 129.0, 120.0, 113.2, 105.0,  92.0,  84.0,  83.2,  88.4,  59.0,  80.0,  81.5,  71.0, 69.2)$

$y=(46.0, 48.0, 51.0, 52.1, 54.0, 52.0, 59.0, 58.7, 61.6, 64.0, 61.4, 54.6, 58.8, 58.0)$

A shiny app is constructed (ui.R and server.R are attached) to observe the basic least square principle visually. In the slidebar of shiny app, we have gone from 70 to 80 for intercept and -0.25 to -0.15 for the slope. With applying those various combination of values, we have noticed the change of the given straight lines and the corresponding sum of square errors. With every different combinations, we have found SSE (sum of square error) for the given line is always greater than the SSE for the least square line.