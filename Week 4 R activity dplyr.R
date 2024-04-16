#Week 4: dplyr package

titanic_df <- as.data.frame(Titanic)
# TASK: Write the function to see the top rows of the data
head(titanic_df)
# TASK: Write the functions to install and call dplyr
library(dplyr)
# Task: Write the function to 'select' the Survived and Sex columns
selected_data <- select(titanic_df, Survived, Sex)
# TASK: Write the function to save the two columns as one new dataset
# and give it a name
survived_sex_df <- selected_data
# TASK: Write the function that deselects the sex column
no_sex_df <- select(survived_sex_df, -Sex)
# TASK: Write the function that renames 'Sex' to 'Gender'
renamed_df <- rename(survived_sex_df, Gender = Sex)
# TASK: Write the function that names a new dataset that includes the 'gender' column
gender_df <- renamed_df
# TASK: Write the function that includes only rows that are 'male'
males_df <- filter(gender_df, Gender == "Male")
# TASK: Write the function to group the data by gender (hint: arrange())
arranged_df <- arrange(gender_df, Gender)
# TASK: Sum the Freq column
# TASK: After you run it, write the total here:____
total_people <- sum(titanic_df$Freq)
# Replace ____ with the result of total_people after running the code
# TASK: Write the function that includes only rows that are 'female'
females_df <- filter(gender_df, Gender == "Female")
# TASK: Write the function that joins the male and female rows
combined_df <- bind_rows(males_df, females_df)



