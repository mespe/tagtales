% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bard_query.R
\name{bard_query}
\alias{bard_query}
\title{Execute a BARD query (http://cftc.metro.ucdavis.edu/biotelemetry-autonomous-real-time-database/fishtrack)}
\usage{
bard_query(
  tagIDs,
  dateStart = "2012-01-01",
  dateEnd = Sys.Date(),
  baseurl = "http://sandbox5.metro.ucdavis.edu/memo/getTagCSV/",
  curlH = getCurlHandle(useragent =
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36",
    followlocation = TRUE),
  ...
)
}
\arguments{
\item{tagIDs}{formatted like those returned from `prep_bardtags()`}

\item{dateStart}{start date of query, in YYYY-MM-DD format}

\item{dateEnd}{end date of query, in YYYY-MM-DD format; defaults to today}

\item{baseurl}{BARD query homepage}

\item{curlH}{curl handle; defaults to curl, which if you've run setup.R is in the global environment; running the following code will recreate it: \code{curl = getCurlHandle(useragent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36", followlocation = TRUE)}}
}
\value{
a data frame of BARD detections; note that these detections are in a summarized format.
}
\description{
Execute a BARD query (http://cftc.metro.ucdavis.edu/biotelemetry-autonomous-real-time-database/fishtrack)
}
\examples{
\dontrun{
bard_query(tagIDS = bard_tags(c(2841, 2842)), curlH = getCurlHandle(useragent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36", followlocation = TRUE) )
}
}
\author{
Matthew Espe
}
