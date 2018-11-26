def reformat_languages(languages)
  new_hash = {}
  languages.map { |language_type, hash|
    hash.map { |name, attributes|
      new_hash[name] ||= attributes
      new_hash[name][:style] ||= []
      new_hash[name][:style] << language_type
    }
  }
  new_hash
end
