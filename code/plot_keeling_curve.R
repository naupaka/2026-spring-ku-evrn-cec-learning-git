# A script to read in and plot the MLO Keeling Curve CO2
# data using some good R practices

# Naupaka Zimmerman
# nbzimmerman@ku.edu
# February 18, 2026

# load in the csv data
mlo_data <- read.csv("data/monthly_in_situ_co2_mlo_cleaned.csv")

# make a scatterplot of the CO2 concentrations
png("output/keeling_curve.png")
plot(mlo_data$CO2[mlo_data$CO2 > 0],
     type = "l",
     ylab = "CO2 concentration in ppm",
     main = "CO2 concentration at Mauna Loa")
dev.off()
