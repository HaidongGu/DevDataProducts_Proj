library(shiny)
shinyServer(
  function(input, output) {
    
    output$oid1 <- renderPrint(paste({input$id1}, {input$id2}, {input$id3}) )
    
    oper <- reactive({
      operation <- input$id2;
    })
    
  output$oid2 <- renderPrint( 
    if (oper() == "+") {
      strtoi({input$id1})  + strtoi({input$id3}  )  
    } else {
      strtoi({input$id1})  - strtoi({input$id3})  
    }
  )
  }
)
