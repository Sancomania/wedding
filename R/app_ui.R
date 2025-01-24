#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    
    # Your application UI logic 
    navbarPage(title = NULL,
               
               tabPanel(
                 title = 'Inicio',
                 mod_tab_couple_ui("tab_couple_ui_1")
               ),
               
               tabPanel(
                 title = "Confirmar", 
                 mod_tab_confirmation_ui("tab_confirmation_ui_1")
               ),
               
               tabPanel(
                 title = "Programa",
                 mod_tab_schedule_ui("tab_schedule_ui_1")
               ),
               
               tabPanel(
                 title = "Lugar y Hospedaje",
                 mod_tab_place_ui("tab_place_ui_1")
               ),
               
               # tabPanel(
               #   title = "Hospedaje",
               #   mod_tab_accommodation_ui("tab_accommodation_ui_1")
               # ),
               
               # tabPanel(
               #   title = "Testigos",
               #   mod_tab_witnesses_ui("tab_witnesses_ui_1")
               # ),
               # 
               
               tabPanel(
                 title = "Información",
                 mod_tab_covid_ui("tab_covid_ui_1")
               ),
               
               tabPanel(
                 title = "Espacio de novios",
                 mod_hidden_tab_preparations_ui("hidden_tab_preparations_ui_1")
               )
               
               )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @importFrom shinymanager set_labels
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
  
  set_labels(
    language = "en",
    "Please authenticate" = "Fernanda & Santiago",
    "Username:" = "Usuario :",
    "Password:" = "Contraseña :",
    "Login" = "Entrar",
    "Username or password are incorrect" = "Credenciales incorrectas"
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'wedding',
    ),
    tags$link(href = "www/custom_app_style.css", rel = "stylesheet", type = "text/css"),
    tags$link(href = "www/custom_logging_style.css", rel = "stylesheet", type = "text/css")
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

