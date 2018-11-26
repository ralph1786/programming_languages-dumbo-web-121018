def reformat_languages(languages)
  new_hash = {}
  languages.each { |type, hash|
    hash.each { |name, attributes|
      new_languages[name] ||= attributes
      new_languages[name][:style] ||= []
      new_languages[name][:style] << type
    }
  }
  new_hash
end
