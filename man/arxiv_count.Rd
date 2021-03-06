% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arxiv_count.R
\name{arxiv_count}
\alias{arxiv_count}
\title{Count number of results for a given search}
\usage{
arxiv_count(query = NULL, id_list = NULL)
}
\arguments{
\item{query}{Search pattern as a string; a vector of such strings is
also allowed, in which case the elements are combined with \code{AND}.}

\item{id_list}{arXiv doc IDs, as comma-delimited string or a vector
of such strings}
}
\value{
Number of results (integer). An attribute
\code{"search_info"} contains information about the search
parameters and the time at which it was performed.
}
\description{
Count the number of results for a given search. Useful to check
before attempting to pull down a very large number of records.
}
\examples{
\dontshow{old_delay <- getOption("aRxiv_delay")
          options(aRxiv_delay=1)}
\donttest{
# count papers in category stat.AP (applied statistics)
arxiv_count(query = "cat:stat.AP")

# count papers by Peter Hall in any stat category
arxiv_count(query = 'au:"Peter Hall" AND cat:stat*')

# count papers for a range of dates
#    here, everything in 2013
arxiv_count("submittedDate:[2013 TO 2014]")
}
\dontshow{options(aRxiv_delay=old_delay)}

}
\seealso{
\code{\link[=arxiv_search]{arxiv_search()}}, \code{\link[=query_terms]{query_terms()}},
\code{\link[=arxiv_cats]{arxiv_cats()}}
}
