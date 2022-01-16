#' tab_covid UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tab_covid_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
 
    tags$div(class="landing-wrapper",
             
             # Image fond d'écran
             tags$div(class = "landing-block background-content",
                      
                      img(src = glue::glue("www/", Sys.getenv("IMG_BACKGROUND")))
                      
             ),
             
             # Texte
             tags$div(class = "landing-block foreground-content",
                      tags$div(class = "foreground-text",
                               tags$p("Retricciones Sanitarias", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:3px; text-align: center"),
                               tags$p("Por el bien tuyo y de nuestros invitados, les solicitamos realizarse una prueba covid antes del evento para disfrutar seguros de nuestro gran día.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                               tags$p("Si tu o alguien cercano a ti presenta algún síntoma o ha estado en contacto con alguien que los tenga, acude a tu médico.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                               tags$p("Cuidémonos todos.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center")
                      ),
                      
                      tags$div(class = "foreground-text",
                               tags$p("Código de Etiqueta", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:3px; text-align: center"),
                               tags$p("Por el bien tuyo y de nuestros invitados, les solicitamos realizarse una prueba covid antes del evento para disfrutar seguros de nuestro gran día.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                               tags$p("Si tu o alguien cercano a ti presenta algún síntoma o ha estado en contacto con alguien que los tenga, acude a tu médico.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                               tags$p("Cuidémonos todos.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center")
                      )
             )
    )
    
    

  )
  
}
    
#' tab_covid Server Functions
#'
#' @noRd 
mod_tab_covid_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_tab_covid_ui("onglet_covid_ui_1")
    
## To be copied in the server
# mod_tab_covid_server("onglet_covid_ui_1")
