packages = c("shiny", "ggplot2", "hexbin", "dplyr", "httr", "jsonlite")
install.packages(packages, repos = "https://cran.rstudio.com/")
library(shiny)
runGitHub("ballr", "toddwschneider")
shot.data <- fetch_shots_by_player_id_and_season(find_player_id_by_name("Kawhi Leonard"), 
                                                 "2018-19", 
                                                 season_type = "playoffs" )
game.7 <- filter(shot.data$player, game_date == "2019-05-12")
