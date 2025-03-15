#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @import bslib
#' @import duckdb
#' @importFrom tools R_user_dir
#' @noRd
app_server <- function(input, output, session) {
    # In order to install duckdb with renv:
    # options(repos = c(P3M = "https://packagemanager.posit.co/cran/latest"))
    # https://github.com/posit-dev/positron/discussions/4214

    # check that the data folder exists. if not, create it.
    if (!dir.exists(tools::R_user_dir("financedashboard", "data"))) {
        dir.create(tools::R_user_dir("financedashboard", "data"), F, T)
    }

    # create DuckDB connection
    duck_con <- dbConnect(
        drv   = duckdb(),
        dbdir = file.path(
            tools::R_user_dir("financedashboard", "data"),
            "data.duckdb"
        )
    )

    mod_home_page_server("home_page_1")
}
