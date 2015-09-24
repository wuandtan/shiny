shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Guassian Samples"),
                sidebarPanel(
                        h3("Class 1"),
                        sliderInput('s', 'Number of samples', value = 10, min = 10, max = 1000, step = 10),
                        h4("dimension 1"),
                        numericInput('mu.1', 'Mu', 0, min = -10, max = 10, step = 1,width=100),
                        numericInput('sigma.1', 'Sigma', 1, min = 1, max = 10, step = 1,width=100),
                        h3("dimension 2"),
                        #sliderInput('s.2', 'Number of samples', value = 10, min = 10, max = 1000, step = 10),
                        numericInput('mu.2', 'Mu', 0, min = -10, max = 10, step = 1,width=100),
                        numericInput('sigma.2', 'Sigma', 1, min = 1, max = 10, step = 1,width=100),
                        #submitButton('Submit'),        
                
                        sliderInput('rotate', 'Rotate angle',value = 0, min = 0, max = 360, step = 5,)
                        
                ),
                
                mainPanel(
#                         h3('Results of prediction'),
#                         h4('You entered'),
#                         verbatimTextOutput("inputValue"),
#                         h4('Which resulted in a prediction of '),
#                         verbatimTextOutput("prediction")
                        plotOutput('newgraph')
                )
        )
)