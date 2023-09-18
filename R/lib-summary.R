#' R Library Summary
#'
#' Provide a brief summary of the package libraries on your machine.
#'
#' @return A `data.frame` containing the count of packages in each of the user's libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
  pkgs <- utils::installed.packages() # returns a character matrix of the installed packages and some information and where it is stored
  pkg_tbl <- table(pkgs[, "LibPath"]) # Making a table and extracting the LibPath
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) # turn it into a df
  names(pkg_df) <- c("Library", "n_packages") # change the names
  pkg_df # return the df
}
