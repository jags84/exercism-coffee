class Bob
  yelling: (phrase) =>
    return (phrase == phrase.toUpperCase()) && phrase.match(/[a-z]/i)
  question: (phrase) =>
    return phrase[phrase.length-1]== '?'
  silence: (phrase) =>
    return phrase.trim() == ""

  hey: (phrase) ->
    if @yelling(phrase)
      return 'Whoa, chill out!'
    else if @question(phrase)
      return 'Sure.'
    else if @silence(phrase)
      return 'Fine. Be that way!'
    else
      'Whatever.'

module.exports = Bob
