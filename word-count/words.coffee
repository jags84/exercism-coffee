class Words
  constructor: (phrase) ->
    @phrase = phrase.toLowerCase().match(/\b[\w\d]+\b/g)
    @counts = {}
  count: () ->
    words = @phrase
    for word in words
      @counts[word] = @counts[word] + 1 || 1
    return @counts

module.exports = Words
