#' R Library Summary
#'
#' Provide a brief summary of the package libraries on your machine.
#'
#' @param sizes A logical value indicating whether to calculate sizes. Default `FALSE`
#'
#' @return A `data.frame` containing the count of packages in each of the user's libraries. If `sizes == TRUE`, a column of library sizes will be added
#' @export
#'
#' @examples
#' lib_summary()
#' lib_summary(sizes = TRUE)
lib_summary <- function(sizes = FALSE) {
  if (!is.logical(sizes)){
    stop("sizes must be a logical value (TRUE/FALSE)")
  }

  pkgs <- utils::installed.packages() # returns a character matrix of the installed packages and some information and where it is stored
  pkg_tbl <- table(pkgs[, "LibPath"]) # Making a table and extracting the LibPath
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) # turn it into a df
  names(pkg_df) <- c("Library", "n_packages") # change the names
  if (sizes) {
    pkg_df <- calculate_sizes(pkg_df)
  }
  pkg_df # return the df
}

calculate_sizes <- function(df){
  df$lib_size <- map_dbl(
    df$Library,
    ~ sum(fs::file_size(fs::dir_ls(.x, recurse = TRUE)))
  )
  df
}
