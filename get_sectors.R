
## Path to change
filepath <- "sirketyilliklaricleaning/Sirketler.xlsx"


## Run the rest without a change
library(readxl)
library(writexl)
library(tidyverse)

df <- read_xlsx(filepath)

df <- df %>% filter(!str_detect(OTHER, "company found")) %>% mutate(sector = NA) %>%
  mutate(sector = ifelse(is.na(...2) & is.na(...3), OTHER, sector)) %>% 
  filter(! OTHER == "Order") %>% fill(sector,.direction = "down")

colnames(df)[2:4] <- c("Symbol", "Firm","Sector")

df <- df %>% select("Symbol", "Firm","Sector") %>% filter(!is.na(Symbol)) %>% 
  group_by(Symbol) %>% mutate(
  SectorType = c("MainSector","SubSector")[1:n()]
) %>% pivot_wider(id_cols = c(Symbol, Firm), values_from = Sector, names_from = SectorType)

write_xlsx(df, paste0(dirname(filepath),"/sectorinformation.xlsx"))