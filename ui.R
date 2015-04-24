shinyUI(pageWithSidebar(
  headerPanel("Simple Calculator"),
  sidebarPanel(
    
    selectInput("id1", "First Number:",
                c( "One" = "1",
                  "Two" = "2",
                  "Three" = "3")),
    
    radioButtons("id2", "Operation:",
                 c("Plus" = "+",
                   "Minus" = "-" )),

    selectInput("id3", "Second Number:",
                c("Four" = "4" ,
                  "Five" = "5" ,
                  "Six" = "6"))    
  ),
  mainPanel(    
    h3('Documentation'),
    h6('Step 1: Select one number for First Number'),
    h6('Step 2: Select Operation'),
    h6('Step 3: Select one number for Second Number'),
    h6('Result will be automatically udpated below'),
    h4('Your Input is'),
    verbatimTextOutput("oid1"),
    h4('Operation Result is'),
    verbatimTextOutput("oid2")
    
  )
))
