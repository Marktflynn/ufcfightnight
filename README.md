# Project ufcfightnight

A package that uses Twitter API and creates a scatter plot using ggplot

### Description

This code will allow you to pull information from the key words "ufcfightnight" from twitter. This will show how people on the platform 
are engaging with the event and what commom themes are being discussed. I will be incorporating the ggplot package 
that will create visual data that will show a certain topic being compared to other time periods. I believe you can 
only go back and dig up data from a max point of 6-7 days before. 

#### How to use

# Create function

ufcfightnight = function(x){
  
  # Search tweets for UFC Fight Night
  
  data = rtweet::search_tweets(q = "ufcfightnight", n = x)
  
  # Arrange data by retweet count and favorite count, descending
  
  data_arranged = data %>% arrange(desc(retweet_count), desc(favorite_count))
  
  # Narrow data to include only useful variables
  
  data_minimal = data_arranged %>% select(screen_name, text, retweet_count, favorite_count)
}

##### What to expect/how to interpret

The code will produce a scatter plot that compares favorites versus retweets linked with the keyword "ufcfightnight".
It will show results pulled from 100 tweets.
