% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/countrycode.R
\name{countrycode}
\alias{countrycode}
\title{Convert Country Codes}
\usage{
countrycode(sourcevar, origin, destination, warn = TRUE, custom_dict = NULL,
  custom_match = NULL, origin_regex = FALSE)
}
\arguments{
\item{sourcevar}{Vector which contains the codes or country names to be
converted (character or factor)}

\item{origin}{Coding scheme of origin (string enclosed in quotes ""):
"cowc", "cown", "eurostat", "fao", "fips105", "imf", "ioc", "iso2c", "iso3c",
"iso3n", "p4_ccode", "p4_scode", "un", "wb", "wb_api2c", "wb_api3c", "wvs",
"country.name", "country.name.de".}

\item{destination}{Coding scheme of destination (string enclosed in quotes ""):
"ar5", "continent", "cowc", "cown", "eurostat", "eu28", "eurocontrol_pru",
"eurocontrol_statfor", "fao", "fips105", "icao", "icao_region", "imf",
"ioc", "iso2c", "iso3c", "iso3n", "p4_ccode", "p4_scode", "region", "un",
"wb", "wb_api2c", "wb_api3c", "wvs", "country.name", "country.name.ar",
"country.name.de", "country.name.en", "country.name.es", "country.name.fr",
"country.name.ru", "country.name.zh".}

\item{warn}{Prints unique elements from sourcevar for which no match was found}

\item{custom_dict}{A data frame which supplies custom country codes.
Variables correspond to country codes, observations must refer to unique
countries.  When countrycode uses a user-supplied dictionary, no sanity
checks are conducted. The data frame format must resemble
countrycode::countrycode_data.}

\item{custom_match}{A named vector which supplies custom origin and
destination matches that will supercede any matching default result. The name
of each element will be used as the origin code, and the value of each
element will be used as the destination code.}

\item{origin_regex}{Logical: When using a custom dictionary, if TRUE then the
origin codes will be matched as regex, if FALSE they will be matched exactly.
When using the default dictionary (dictionary = NULL), origin_regex will be ignored.}
}
\description{
Converts long country names into one of many different coding schemes.
Translates from one scheme to another. Converts country name or coding
scheme to the official short English country name. Creates a new variable
with the name of the continent or region to which each country belongs.
}
\note{
For a complete description of available country codes and languages,
please read the documentation for the \code{countrycode_data} conversion
dictionary.  Type: \code{?countrycode_data}.
}
\examples{
# ISO to Correlates of War
countrycode(c('USA', 'DZA'), 'iso3c', 'cown')
# English to ISO
countrycode('Albania', 'country.name', 'iso3c')
# German to French
countrycode('Albanien', 'country.name.de', 'country.name.fr')
}
\keyword{countrycode}

