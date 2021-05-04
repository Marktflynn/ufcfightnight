# Create function

ufcfightnight = function(x){
  
  # Search tweets for UFC Fight Night
  
  data = rtweet::search_tweets(q = "ufcfightnight", n = x)
  
  # Arrange data by retweet count and favorite count, descending
  
  data_arranged = data %>% arrange(desc(retweet_count), desc(favorite_count))
  
  # Narrow data to include only useful variables
  
  data_minimal = data_arranged %>% select(screen_name, text, retweet_count, favorite_count)
  
  # Put data in environment
  
  assign("ufc_data", data_minimal, envir = .GlobalEnv)
  
  # Create ggplot of data
  
  p <- ggplot(ufc_data) +
    aes(x = favorite_count, y = retweet_count) +
    geom_point(shape = "circle", size = 2.1, colour = "#112446") +
    labs(
      x = "Favourite Count",
      y = "Retweet Count",
      title = "Scatter-plot",
      subtitle = "Favourite Count vs Retweet Count"
    ) +
    theme_bw()
  
  print(p)
  
}
ufcfightnight(100)