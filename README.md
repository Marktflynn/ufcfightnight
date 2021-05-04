# Project ufcfightnight

A package that uses Twitter API and creates a scatter plot using ggplot

## Description

This code will allow you to pull information from the key term "ufcfightnight" from Twitter. This will show how people on the platform 
are engaging with the event and what commom themes are being discussed. I will be incorporating the ggplot package 
that will create visual data that will show a certain topic being compared to other time periods. I believe you can 
only go back and dig up data from a max point of 6-7 days before. 

### How to use

Make sure you are logged into a Twitter account and connect to the API 

https://developer.twitter.com/en/docs/twitter-api

After that, you'll search tweets involving "ufcfightnight" and arrange the data by retweet count and favorite count. 

#### What to expect/how to interpret

Once you're ready to graph your data, use ggplot and create a scatterplot.

Example: 

p <- ggplot(ufc_data) +
    aes(x = favorite_count, y = retweet_count) +
    geom_point(shape = "circle", size = 2.1, colour = "#112446") +
    labs(
      x = "Favorite Count",
      y = "Retweet Count",
      title = "Scatter-plot",
      subtitle = "Favorite Count vs Retweet Count"
    ) +
    theme_bw()

  print(p)

The code will produce a scatter plot that compares favorites versus retweets linked with the key term "ufcfightnight".

It will show results pulled from 100 tweets.

This function is helpful because it gives users insight on how people on Twitter are interacting with the ufc and its fight night events. 
