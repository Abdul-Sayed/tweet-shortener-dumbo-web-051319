def word_substituter(tweet_string)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }

  # convert tweet string to array with .split
  tweet_array = tweet_string.split(" ")

  for word in tweet_array
    dictionary.keys.each { |key|
      # replace matching words in tweet_array with the key's value from the dictionary.
      if (word == key)
        word.replace dictionary[key]
      end
    }
  end

  #convert the modified tweet array to string with .join and return it
  return tweet_array.join(" ")
end

# puts word_substituter(tweet_five)

###########################################################################

def bulk_tweet_shortener(tweet_list)
  tweet_list.map { |tweet|
    puts word_substituter(tweet)
  }
  # puts tweet_list
  # return tweet_list
end

# bulk_tweet_shortener(tweet_list)

###########################################################################

def selective_tweet_shortener(tweet_string)
  # Should only operate on tweets longer than 140 characters
  # Should return the original tweet if the tweet is 140 characters or shorter.
  # Should only operate on tweets 1, 3, 5 and skip tweets 2,4

  if (tweet_string.length > 140)
    return word_substituter(tweet_string)
  else
    return tweet_string
  end
end

# puts selective_tweet_shortener(tweet_five)

###########################################################################

def shortened_tweet_truncator(tweet_string)
  if (tweet_string.length > 140)
    if (word_substituter(tweet_string).length > 140)
      return word_substituter(tweet_string).slice!(0, 137).concat("...")
    else
      return word_substituter(tweet_string)
    end
  else
    return tweet_string
  end
end

# puts tweet_one.length
# puts word_substituter(tweet_one).length
# puts shortened_tweet_truncator(tweet_one)









