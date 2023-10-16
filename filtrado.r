# Generate csv with filtered observations.

library(tidyverse)
df <- read.csv("coc_clans.csv")
filtered_df <- df %>% filter(num_members >= 5)
filtered_df <- subset(filtered_df, select = -c(clan_description, clan_tag, clan_name, clan_badge_url))
write.csv(filtered_df, "coc_filtrado.csv")
