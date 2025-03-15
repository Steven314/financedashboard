#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import bslib
#' @noRd
app_ui <- function(request) {
    tagList(
        # Leave this function for adding external resources
        golem_add_external_resources(),
        # Your application UI logic
        page_navbar(
            theme = bs_theme(
                preset = "lux",
                fg = "#18230F",
                bg = "#DCD7C9",
                `enable-rounded` = TRUE
            ),
            navbar_options = navbar_options(class = "bg-primary", theme = "dark"),
            title = tags$span(
                tags$img(
                    src    = "www/hex.png",
                    width  = "64px",
                    height = "auto",
                    alt    = "hex logo"
                ),
                style = "font-size:30px",
                "Personal Finance Dashboard",
            ),
            nav_item(
                tags$a(
                    tags$span(bsicons::bs_icon("github"), "S. L. Carter"),
                    href = "https://github.com/Steven314",
                    target = "_blank"
                )
            ),
            nav_panel(
                title = "Home",
                icon = bsicons::bs_icon("house-door"),
                mod_home_page_ui("home_page_1")
            ),
            nav_panel(
                title = "Database Management",
                icon = bsicons::bs_icon("database-fill"),
                mod_upload_page_ui("upload_1")
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
#' @noRd
golem_add_external_resources <- function() {
    add_resource_path(
        "www",
        app_sys("app/www")
    )

    tags$head(
        favicon(ico = "hex", ext = "png"),
        bundle_resources(
            path = app_sys("app/www"),
            app_title = "financedashboard"
        )
        # Add here other external resources
        # for example, you can add shinyalert::useShinyalert()
    )
}
