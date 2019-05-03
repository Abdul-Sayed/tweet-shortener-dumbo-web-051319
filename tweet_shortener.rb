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

#########################################################################################