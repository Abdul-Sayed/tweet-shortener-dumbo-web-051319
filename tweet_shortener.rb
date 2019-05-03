def word_substituter(tweet_string, dictionary)

  # convert tweet string to array with .split
  tweet_array = tweet_string.split(" ")

  # compare words in keys array to tweet array
  for key in dictionary.keys
    tweet_array.map { |word|
      # replace matching words in tweet_array with the key's value from the dictionary.
      if (word == key)
        word.replace dictionary[key]
      end
    }
  end

  #convert the modified tweet array to string with .join and return it
  return tweet_array.join(" ")
end