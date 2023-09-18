lib_summary <- function() {
  pkgs <- utils::installed.packages() # returns a character matrix of the installed packages and some information and where it is stored
  pkg_tbl <- table(pkgs[, "LibPath"]) # Making a table and extracting the LibPath
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) # turn it into a df
  names(pkg_df) <- c("Library", "n_packages") # change the names
  pkg_df # return the df
}
