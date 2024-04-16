# Load required libraries for data manipulation and visualization
library(dplyr)
library(ggpubr)
library(multcomp)
library(pastecs)
library(Rmisc)
library(psych)
library(pacman)

# Use 'pacman' to automatically load additional libraries. This is useful for ensuring all required packages are installed and loaded.
p_load(char=c("geoR", "moments", "scatterplot3d", "tcltk2",
              "sp", "rgdal", "raster", "dplyr", "DescTools",
              "psych", "spatstat", "maptools",
              "diffeR", "randomForest"))

# Set the path where the data files are located and set it as the working directory
PATH <- "C:\\Users\\leand\\OneDrive\\Projetos Private\\Doutorado - Engenharia Biomédica\\4_Tese\\3_CodigoFonte\\Data-Analyser-R\\artigo"
setwd(PATH)
getwd()

# Read the data from 'Todas.txt', which is tab-separated and uses a dot as the decimal separator
dados = read.csv("Todas.txt", sep="\t", dec=".")

# Display the loaded data
dados

# Randomly select 10 samples from the data for quick inspection
set.seed(1234)
dplyr::sample_n(dados, 10)

# Describe the data grouped by 'Sites' using type 3 description
describeBy(dados, group="Sites", type=3)

# Define a custom color palette for the plots
cores_personalizadas <- c("#6a3d9a", "#e31a1c", "#ff7f00", "#1f78b4", "#33a02c")

# Set up parallel processing to speed up computational analyses
cl <- makePSOCKcluster(4); registerDoParallel(cl)

# Create pair plots with ggplot2, showing relationships between variables, grouped by 'Sites'
ggpairs(dados, title = 'Relationships Between Variables', 
        upper = list(continuous = "points", mapping = aes(color = factor(Sites)))) +
  theme(plot.title = element_text(hjust = 0.5, size = 15)) +
  scale_color_manual(values = cores_personalizadas) +
  scale_fill_manual(values = cores_personalizadas)

# Stop the parallel processing cluster after analyses are completed
stopCluster(cl)

# Create error bar graphs for the variable 'SB'
SB <- summarySE(dados, measurevar="SB", groupvars=c("Sites"))
a <- ggplot(SB, aes(x=Sites, y=SB, fill=Sites)) + 
  geom_bar(position=position_dodge(), stat="identity", width=.7) +
  geom_errorbar(aes(ymin=SB-sd, ymax=SB+sd),
                width=.25, position=position_dodge(.3)) + 
  theme(text = element_text(size = 15),
        legend.position = "none",
        axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5, size = 8)) +
  scale_fill_manual(values = cores_personalizadas) +
  labs(subtitle="", y="Bulk Density", x="") 
a

# Similar plots are created for other variables like 'SOC', 'Stock', 'Biomass', and 'Credits'
# ... code for other plots ...

# Organize multiple plots into a single layout
figure <- ggarrange(a, b, c, d, e, ncol = 3, nrow = 2)
figure

# Add titles and labels to the complete layout
figure_annotated <- annotate_figure(figure,
                                    top = text_grob("Descriptive Statistics (mean and standard deviation) among soil attributes", size = 15, face = "bold"),
                                    bottom = text_grob("Sites", size = 15),
                                    left = text_grob("Value", size = 15, rot = 90))
figure_annotated
