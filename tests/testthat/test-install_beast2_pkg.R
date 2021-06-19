test_that("use", {
  if (!curl::has_internet()) return()

  # Multiple tests, to limit the number of BEAST2 downloads
  beast2_folder <- beastier::get_beastier_tempfilename()
  beastierinstall::install_beast2(folder_name = beast2_folder)

  expect_error(
    install_beast2_pkg(name = "nonsense", beast2_folder = beast2_folder),
    "Invalid package name 'nonsense'"
  )

  df <- mauricer::get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]

  # Silent install please
  expect_silent(
    install_beast2_pkg(name = name, beast2_folder = beast2_folder)
  )
  expect_true(mauricer::is_beast2_pkg_installed(name = name, beast2_folder = beast2_folder))

  expect_error(
    install_beast2_pkg(name = name, beast2_folder = beast2_folder),
    "Cannot install installed package"
  )


  # Silent install please
  expect_silent(
    uninstall_beast2_pkg(name = name, beast2_folder = beast2_folder)
  )
  expect_false(mauricer::is_beast2_pkg_installed(name = name , beast2_folder = beast2_folder))

  expect_error(
    uninstall_beast2_pkg(name = name, beast2_folder = beast2_folder),
    "Cannot uninstall absent package"
  )

  unlink(beast2_folder, recursive = TRUE)
})

test_that("install can be verbose", {
  if (!curl::has_internet()) return()

  beast2_folder <- beastier::get_beastier_tempfilename()
  beastierinstall::install_beast2(folder_name = beast2_folder)

  df <- mauricer::get_beast2_pkg_names(beast2_folder = beast2_folder)
  name <- df[df$installed_version == "NA", ]$name[1]
  # Silent install please
  expect_message(
    install_beast2_pkg(
      name = name,
      beast2_folder = beast2_folder,
      verbose = TRUE
    ),
    "Installing BEAST2 package"
  )
  unlink(beast2_folder, recursive = TRUE)
})

test_that("install and uninstall happen globally", {

  if (!beastier::is_beast2_installed()) return()
  if (!mauricer::is_beast2_ns_pkg_installed()) return()
  if (!curl::has_internet()) return()

  beast2_folder <- beastier::get_beastier_tempfilename()
  beastierinstall::install_beast2(folder_name = beast2_folder)

  expect_true(mauricer::is_beast2_ns_pkg_installed())

  # Unexpected: there is no NS package installed in the temp beast2_folder
  expect_true(
    mauricer::is_beast2_ns_pkg_installed(beast2_folder = beast2_folder)
  )
  unlink(beast2_folder, recursive = TRUE)
})
