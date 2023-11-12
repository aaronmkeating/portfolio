#Day 6
#Project: Build a basic recommendation system in R

#Will be using the recommenderlab library
library(recommenderlab)

# Need to create a sample user-item matrix
user_item_matrix <- matrix(c(sample(1:5, 16, replace = TRUE)), nrow = 4, byrow = TRUE)
#want to create a random sampling just for this example
rownames(user_item_matrix) <- c("User1", "User2", "User3", "User4")
colnames(user_item_matrix) <- c("Item1", "Item2", "Item3", "Item4")

# Convert the matrix to a recommender sparse matrix
user_item_sparse <- as(user_item_matrix, "realRatingMatrix")

# Build the recommendation model using user-based collaborative filtering
recommender_model <- Recommender(user_item_sparse, method = "UBCF")

# Generate recommendations for a user
user_to_recommend <- rownames(user_item_sparse)[1]

# Create a new user-item matrix for the user you want recommendations for
new_user_item_matrix <- matrix(0, nrow = 1, ncol = ncol(user_item_sparse))
colnames(new_user_item_matrix) <- colnames(user_item_sparse)
rownames(new_user_item_matrix) <- user_to_recommend

# Convert the new matrix to a recommender sparse matrix
new_user_item_sparse <- as(new_user_item_matrix, "realRatingMatrix")

# Generate recommendations for the new user
recommendations <- predict(recommender_model, new_user_item_sparse, n = 2)

# Print the recommendations
print(recommendations)

