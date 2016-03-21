library(UsingR)
x=c(132.0, 129.0, 120.0, 113.2, 105.0,  92.0,  84.0,  83.2,  88.4,  59.0,  80.0,  81.5,  71.0,  69.2)
y=c(46.0, 48.0, 51.0, 52.1, 54.0, 52.0, 59.0, 58.7, 61.6, 64.0, 61.4, 54.6, 58.8, 58.0)
shinyServer(
  function(input, output) {
    output$nplot <- renderPlot({
      plot(x,y,cex=1.6,lwd=4,col="red",xlim = c(50,140),ylim = c(40,70),main = "Least square experiment",cex.axis=2,cex.lab=2,cex.main=2)
      #plot(x,y)
      #range(x), 59,132
      t=lm(y~x);yy=t$coefficients[2]*x+t$coefficients[1]
      sse1<-sum((y-yy)*(y-yy))
      par(new = TRUE)
      plot(x,yy,type = 'l',lwd=4,col="blue",axes = F, xlab = "", ylab = "")
      legend("bottomleft", legend = c("Your straight line", "Least square line", "Data points"), bty = "n",
             lwd = 2, cex = 1.2, col = c("black", "blue", "red"), lty = c(1, 1, NA), pch = c(NA, NA, 1))
      intercept=input$b0
      slope=input$b1
      abline(intercept,slope,lwd=4)
      y1<-slope*x+intercept
      sse2<-sum((y-y1)*(y-y1))
      text(120, 60, paste("SSE (Least Square)= ", round(sse1,2)))
      text(120, 59, paste("SSE (Given Line)= ", round(sse2,2)))
    })
  }
)