#' Create agGrid Table
#'
#' Use this function to create a agGrid Table
#'
#' @import htmlwidgets
#'
#' @export
agGridRViz <- function(message, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'agGridRViz',
    x,
    width = width,
    height = height,
    package = 'agGridRViz',
    elementId = elementId
  )
}

#' Shiny bindings for agGridRViz
#'
#' Output and render functions for using agGridRViz within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a agGridRViz
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name agGridRViz-shiny
#'
#' @export
agGridRVizOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'agGridRViz', width, height, package = 'agGridRViz')
}

#' @rdname agGridRViz-shiny
#' @export
renderAgGridRViz <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, agGridRVizOutput, env, quoted = TRUE)
}
