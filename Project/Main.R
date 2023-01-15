# Load libraries
library(tidyverse)
library(ggplot2)
library(gridExtra)

data = read.csv("insurance.csv")
data <- data %>% distinct()


# Create an empty list to store the plots
plots_list <- list()

# Loop through the columns
for (col in c('age', 'sex', 'region', 'children', 'smoker')) {
  
  # Create the plot
  plot = ggplot(data = data,
                aes_string(x = col, y = 'charges', group = col, fill = col,colour=col)) + 
    geom_jitter(show.legend = FALSE) + 
    ggtitle(glue::glue("Medical Charges per {col}"))
  
  # Add the plot to the list
  plots_list[[col]] <- plot
  
}

# Use grid.arrange to combine the plots into one pdf file
pdf("output/plots.pdf")
grid.arrange(grobs = plots_list, ncol = 2)
dev.off()