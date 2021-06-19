test_that("cannot uninstall absent package", {
  # Move to test-install_beast2_pkg to limit BEAST2 downloads
})

test_that("abuse", {

  expect_error(
    uninstall_beast2_pkg(
      "irrelevant",
      has_internet = FALSE
    ),
    "No internet connection"
  )
})

test_that("uninstall can be verbose", {
  if (!curl::has_internet()) return()
  beast2_folder <- beastier::get_beastier_tempfilename()
  beastierinstall::install_beast2(folder_name = beast2_folder)
  df <- mauricer::get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]
  install_beast2_pkg(name = name, beast2_folder = beast2_folder)
  expect_message(
    uninstall_beast2_pkg(
      name = name,
      beast2_folder = beast2_folder,
      verbose = TRUE
    ),
    "Uninstalling BEAST2 package"
  )
  unlink(beast2_folder, recursive = TRUE)
})
