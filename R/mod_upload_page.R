#' upload_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_upload_page_ui <- function(id) {
    ns <- NS(id)
    tagList(

    )
}

#' upload_page Server Functions
#'
#' @noRd
mod_upload_page_server <- function(id) {
    moduleServer(id, function(input, output, session) {
        ns <- session$ns

        # - allow user to upload file
        # - need to check incoming file against existing records in order to not duplicate them.

    })
}

## To be copied in the UI
# mod_upload_page_ui("upload_page_1")

## To be copied in the server
# mod_upload_page_server("upload_page_1")
