#### FUNCTIONS ####
#### LOAD OR INSTALL PACKAGES ####
LoadOrInstall <- function(packages.required){
  packages.notinstalled <- packages.required[!packages.required %in% rownames(installed.packages())]
  if(length(packages.notinstalled) > 0){
    cat('Loading not installed packages:\n', packages.notinstalled)
    install.packages(pkgs = packages.notinstalled)
  }
  sapply(packages.required, require, character.only = TRUE)
}
