library(shiny)
library(plotrix)
shinyServer(
        function(input, output) {
                output$newgraph <- renderPlot({
                    #    hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
                        s <- input$s
                        mu.1 <- input$mu.1
                        sigma.1 <- input$sigma.1
                        
                        mu.2 <- input$mu.2
                        sigma.2 <- input$sigma.2
                        
                        data.1 <- rnorm(s,mean=mu.1,sd=sigma.1)
                        data.2 <- rnorm(s,mean=mu.2,sd=sigma.2)
                        
                        angle <- input$rotate
                        
                        newdata.1 <- data.1*cos(3.1415926*2*angle/360)+data.2*sin(3.1415926*2*angle/360)
                        newdata.2 <- -data.1*sin(3.1415926*2*angle/360)+data.2*cos(3.1415926*2*angle/360)
                        
                        if(mean(newdata.2)-3*sd(newdata.2) > mean(newdata.1)-3*sd(newdata.1))
                                range_bottom <- mean(newdata.1)-3*sd(newdata.1)
                        else
                                range_bottom <- mean(newdata.2)-3*sd(newdata.2)
                        
                        if(mean(newdata.2)+3*sd(newdata.2) < mean(newdata.1)+3*sd(newdata.1))
                                range_upper <- mean(newdata.1)+3*sd(newdata.1)
                        else
                                range_upper <- mean(newdata.2)+3*sd(newdata.2)
                        
                        plot(newdata.1,newdata.2,xlim=c(range_bottom,range_upper),
                             ylim=c(range_bottom,range_upper),
                             col="blue")
                        
                        draw.ellipse(mean(newdata.1), mean(newdata.2), 
                                     a = 3*sd(newdata.1), b = 3*sd(newdata.2), angle = 0, deg = TRUE)
                       
                        text((range_bottom+range_upper)/2,range_upper, paste("sd1 = ", sd(newdata.1), "sd2= ",sd(newdata.2), "angle= ",angle))
                        
  
                })
        }
)