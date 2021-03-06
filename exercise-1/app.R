# Exercise 1: Building a user interface

# Load the `shiny` package (install it in the R terminal if you haven't already)
library(shiny)

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` 
# layout, which should be passed the following:
ui <- fluidPage(
  
  # A top level header: "First Shiny Website"
  h1("My First Website"),
  
  # A Paragraph, describing your excitement: include some `strong` text
  p(
    "This is my", strong("shiny project"), "and I feel so excited!"
  ),
  
  # An image with this `src`
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  img(
    "",
    src = "https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif"
  ),
  
  # Another paragraph about a slider: include some `em` text
  p("I can't get this", em("slider"), "to work."),
  
  # A slider with an appropriate label, min of 10, max of 100, value of 50  
  sliderInput(
    "slider",
    "My First Slider", min = 0, max = 100, value = 50, step = 10
  )
)


# Define a `server` function that accepts an input and an output
# At this point, don't do anything in the function
# This function should perform the following:
server <- function(input, output) {
}


# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)