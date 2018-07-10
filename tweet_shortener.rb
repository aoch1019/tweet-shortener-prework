# Write your code here.

def dictionary
  dictionary_hash = {"hello" => "hi", 
  "to" => '2',
  "two" => "2",
  "too" => "2",
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@", 
  "and" => "&"}
  
  return dictionary_hash
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  new_array = []
  
  dictionary.each do |word, substitute|
    if word = word
      word
    end
  end
end