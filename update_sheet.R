# Load required libraries
library(ffanalytics)
library(googlesheets4)
library(dplyr)
library(tidyverse)

# Authenticate using service account JSON
gs4_auth(path = "service-account.json")

# 1. Get the data
player_info <- ffanalytics::espn_draft()

# 2. Specify the Google Sheet ID
sheet_id <- "1Ap4NUbXeXl17W5-8jQj-smPQ1DYOUiRNlMyc3KWKbgA"

# 3. Create a name for the new sheet/tab
new_tab_name <- format(Sys.Date(), "%m-%d")

# 4. Write the data to the new sheet
sheet_write(player_info, ss = sheet_id, sheet = new_tab_name)
