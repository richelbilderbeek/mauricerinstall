#' Install a BEAST2 package
#'
#' Install a BEAST2 package. If the package is already installed,
#' (see \link{is_beast2_pkg_installed}), this function \link{stop}s.
#'
#' @note Installing or uninstalling a BEAST2 package for a
#' (singular) BEAST2 installation, does so for all BEAST2
#' installations
#' @inheritParams default_params_doc
#' @return nothing. It does install the BEAST2 package
#' @author Richèl J.C. Bilderbeek
#' @examples
#' \dontrun{
#'   install_beast2_pkg("NS")
#' }
#' @export
install_beast2_pkg <- function(
  name,
  beast2_folder = beastier::get_default_beast2_folder(),
  verbose = FALSE,
  has_internet = curl::has_internet()
) {
  if (!name %in% mauricer::get_beast2_pkg_names(
      beast2_folder = beast2_folder,
      has_internet = has_internet
    )$name
  ) {
    stop(
      "Invalid package name '", name, "'. \n",
      "Tip: use 'get_beast2_pkg_names' to see all BEAST2 package names"
    )
  }
  if (mauricer::is_beast2_pkg_installed(
    name = name,
    beast2_folder = beast2_folder)
  ) {
    stop(
      "Cannot install installed package '", name, "'at '", beast2_folder, "'.",
      "Tip: this means the package is already installed :-)"
    )
  }
  if (isTRUE(verbose)) {
    message(
      paste0(
        "Installing BEAST2 package '", name, "' from '", beast2_folder, "'"
      )
    )
  }
  # java -cp beast.jar beast.util.PackageManager -add bacter
  cmds <- c(
    beastier::get_default_java_path(),
    "-cp",
    shQuote(
      beastier::get_default_beast2_jar_path(beast2_folder = beast2_folder)
    ),
    "beast.util.PackageManager",
    "-add",
    name
  )
  if (isTRUE(verbose)) {
    message(paste0("Running commmand '", paste0(cmds, collapse = " "), "'"))
  }
  system2(
    command = normalizePath(cmds[1]),
    args = cmds[-1],
    stdout = FALSE
  )
}
