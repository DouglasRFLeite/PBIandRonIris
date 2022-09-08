#Power BI and R Integration on Iris Dataset - by Douglas Rocha

#Package installation
install.packages("stringr") #for capitalization
install.packages("ggplot2") #for plotting


#Dataset loading - to be used on Step #1 Get Data
dataset <- iris


#Capitalization - to be used on Step #2 Transforming Data
library(stringr)
dataset$Species <- str_to_title(dataset$Species)


#Creating Area Columns - to be used on Step #3 Creating Calculated Columns
dataset$Sepal.Area <- dataset$Sepal.Length * dataset$Sepal.Width
dataset$Petal.Area <- dataset$Petal.Length * dataset$Petal.Width


#Creating Plots - to be used on Step #4 R Plots on Power BI
library(ggplot2)

#Sepal WxL
ggplot(data = dataset, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Sepal Width x Lenght") +
  labs(x = "Sepal Width", 
       y = "Sepal Lenght") +
  theme(title = element_text(size = 15, color = "turquoise4"))

#Petal WxL
ggplot(data = dataset, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Petal Width x Lenght") +
  labs(x = "Petal Width", 
       y = "Petal Lenght") +
  theme(title = element_text(size = 15, color = "turquoise4"))

#Area PetalxSepal
ggplot(data = dataset, aes(x = Petal.Area, y = Sepal.Area)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Petal Area x Sepal Area") +
  labs(x = "Petal Area", 
       y = "Sepal Area") +
  theme(title = element_text(size = 15, color = "turquoise4"))