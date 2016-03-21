shinyUI(pageWithSidebar(
  headerPanel("Exploring the linear least square technique"),
  sidebarPanel(
    sliderInput('b0', 'Guess the intercept',value = 75, min = 70, max = 80, step = 0.5),
    sliderInput('b1', 'Guess the slope',value = -0.20, min = -0.25, max = -0.15, step = 0.01),
    #numericInput('b1', 'slope', -0.20, min = -0.25, max = -0.15, step = 0.01),
    submitButton('Submit')
      ),
  mainPanel(
    h4("This application demonstrate that sum of squares due to error(SSE) or the residual sum of
squares is minimized for the least square line. Given a set of x,y data (in https://github.com/mhakanda), we 
       have drawn the least square line and it is comparing with other lines as choosen by the left hand side slidebar."),
    plotOutput('nplot')
  )
))