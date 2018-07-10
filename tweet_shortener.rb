# Write your code here.

def dictionary
  dictionary_hash = {"hello" => "hi", 
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@", 
  "and" => "&"}
  
  return dictionary_hash
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  new_array = []
  
  tweet_array.collect do |word|
    if dictionary.keys.include?(word)
      new_array.push(dictionary[word])
    elsif dictionary.keys.include?(word.downcase)
      new_array.push(dictionary[word.downcase])
    else
      new_array.push(word)
    end
  end
  return new_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
      puts word_substituter(tweet)
    else
      puts tweet
    end
end