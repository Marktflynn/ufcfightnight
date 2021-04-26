# Project

Project name: ufcfightnight

Using R Studio

## API Reference

Twitter API

### How to use

# Create function

ufcfightnight = function(x){
  
  # Search tweets for UFC Fight Night
  
  data = rtweet::search_tweets(q = "ufcfightnight", n = x)
  
  # Arrange data by retweet count and favorite count, descending
  
  data_arranged = data %>% arrange(desc(retweet_count), desc(favorite_count))
  
  # Narrow data to include only useful variables
  
  data_minimal = data_arranged %>% select(screen_name, text, retweet_count, favorite_count)
}
