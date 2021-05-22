test_that("install new package at non-standard location", {

  if (!beastier::is_on_ci()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- tempfile()
  beastierinstall::install_beast2(folder_name = beast2_folder)

  df <- mauricer::get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]

  mauricerinstall::install_beast2_pkg(
    name = name, beast2_folder = beast2_folder
  )
  expect_true(
    mauricer::is_beast2_pkg_installed(
      name = name, 
      beast2_folder = beast2_folder
    )
  )
})

