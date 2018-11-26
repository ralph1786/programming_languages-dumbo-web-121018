def reformat_languages(languages)
  new_hash = {}
  languages.each { |type, hash|
    hash.each { |name, attributes|
      new_hash[name] ||= attributes
      new_hash[name][:style] ||= []
      new_hash[name][:style] << type
    }
  }
  new_hash
end
