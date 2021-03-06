context('Use of regexes in sentences')

f = function(k) gsub('COUNTRY', k, 'The governement of COUNTRY was reelected.')
origin = countrycode::countrycode_data$country.name.en
sentence = sapply(origin, f)
target = countrycode(sentence, 'country.name', 'country.name')
problems = origin[is.na(target)]

test_that('countrycode can catch countries in the middle of a sentence', {
    expect_equal(length(problems), 0)
})

test_that('sentence with two matches returns NA',{
    expect_equal(countrycode('report from Canada and the United States.', 'country.name', 'country.name'), NA_character_)
})

test_that('sentence with a single match',{
    expect_equal(countrycode('report from Canada.', 'country.name', 'country.name'), 'Canada')
})
