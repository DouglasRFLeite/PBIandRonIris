#Power BI and R Integration on Iris Dataset - by Douglas Rocha

#Package installation
install.packages("stringr")
install.packages("ggplot2")


#Dataset loading - to be used on Step #1 Import the Data
dataset <- iris


#Capitalization - to be used on Step #2 Transforming Data
library(stringr)
dataset_cap <- dataset
dataset_cap$Species <- str_to_title(dataset$Species)


#Creating Area Columns - to be used on Step #3 Creating Calculated Columns
dataset_area <- dataset
dataset_area$Sepal.Area <- dataset$Sepal.Length * dataset$Sepal.Width
dataset_area$Petal.Area <- dataset$Petal.Length * dataset$Petal.Width


#Creating Plots - to be used on Step #4 R Plots on Power BI

#Sepal WxL
library(ggplot2)
ggplot(data = dataset, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Sepal Width x Lenght") +
  labs(x = "Sepal Width", 
       y = "Sepal Lenght") +
  theme(title = element_text(size = 15, color = "turquoise4"))

#Petal WxL
library(ggplot2)
ggplot(data = dataset, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Petal Width x Lenght") +
  labs(x = "Petal Width", 
       y = "Petal Lenght") +
  theme(title = element_text(size = 15, color = "turquoise4"))

#Area PetalxSepal
library(ggplot2)
ggplot(data = dataset, aes(x = Petal.Area, y = Sepal.Area)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Petal Area x Sepal Area") +
  labs(x = "Petal Area", 
       y = "Sepal Area") +
  theme(title = element_text(size = 15, color = "turquoise4"))
