def reformat_languages(languages)
  new_hash = {}
  languages.map { |type, hash|
    hash.map { |name, attributes|
      new_hash[name] ||= attributes
      new_hash[name][:style] ||= []
      new_hash[name][:style] << type
    }
  }
  new_hash
end
