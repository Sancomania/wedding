# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

pkgload::load_all(export_all = FALSE, helpers = FALSE, attach_testthat = FALSE)

Sys.setenv(GOOGLE_MAIL = "sancomania@gmail.com")
Sys.setenv(LOGIN_USER = "welcome")
Sys.setenv(PWD_USER   = "bigday")
Sys.setenv(PWD_COUPLE = "onlyforbride")
Sys.setenv(IMG_BACKGROUND = "RB_1.jpeg")

options(gargle_oauth_cache = ".secrets")
options(gargle_quiet = FALSE)
options( "golem.app.prod" = TRUE)

wedding::run_app()
