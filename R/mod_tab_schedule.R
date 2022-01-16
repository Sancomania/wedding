#' tab_schedule UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tab_schedule_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
    tags$div(class = "landing-wrapper",
             tags$div(class = "landing-block background-content",
                      img(src = "www/RB_2.jpeg")
                      ),
             tags$div(class = "landing-block foreground-content",
                      tags$div(class = "foreground-text",
                               # tags$br(style = "line-height: 80px"),
                               tags$p("Ceremonia", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                        tags$p("A las tres de la tarde con treinta minutos", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$p("Capilla San Diego, Rincón del Bosque", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        # tags$p("En petit comit\u00e9 | Seuls les t\u00e9moins, grands-parents, parents, fr\u00e8res & soeurs sont convi\u00e9s", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$br(style = "line-height: 80px"),
                        # tags$p("C\u00e9r\u00e9monie la\u00efque", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                        # tags$p("15 heures", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        # tags$p("Manoir de Belle-No\u00eb - Dol-de-Bretagne", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        # tags$br(style = "line-height: 80px"),
                        tags$p("Cocktail", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                        tags$p("A las cinco de la tarde", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$p("Rincón del Bosque", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$br(style = "line-height: 80px"),
                        tags$p("Cena", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                        tags$p("A las seis de la tarde", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$p("Salón, Rincón del Bosque", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$br(style = "line-height: 80px"),
                        tags$p("Fiesta", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                        tags$p("A las ocho de la noche", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$p("Salón, Rincón del Bosque", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$br(style = "line-height: 80px"),
                        tags$p("Último Transporte", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                        tags$p("A las dos de la mañana", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                        tags$p("Estacionamiento, Rincón del Bosque", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center")
             )
    )
    )
  )
}
    
#' tab_schedule Server Functions
#'
#' @noRd 
mod_tab_schedule_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_tab_schedule_ui("tab_schedule_ui_1")
    
## To be copied in the server
# mod_tab_schedule_server("tab_schedule_ui_1")
