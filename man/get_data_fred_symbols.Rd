% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fred_api.R
\name{get_data_fred_symbols}
\alias{get_data_fred_symbols}
\title{Federal Reserve Economic Data time series data_frame}
\usage{
get_data_fred_symbols(symbols = c("DGS2", "DGS10", "DGS30"),
  transformations = c("default"), convert_date_time = TRUE,
  nest_data = TRUE, return_wide = FALSE, return_message = TRUE)
}
\arguments{
\item{symbols}{fred symbols to search, see \href{https://fred.stlouisfed.org/tags/series}{FRED symbols} for options}

\item{convert_date_time}{converts date from datetime to date form}

\item{nest_data}{\code{TRUE} return nested data frame}

\item{return_wide}{\code{TRUE} return data in wide form}

\item{transformation}{a transformation on the index values \itemize{
\item \code{default}
\item \code{change}
\item \code{change prior year}
\item \code{percent change}
\item \code{percent change prior year}
\item \code{compounded rate of change}
\item \code{continiously compounded rate of change}
\item \code{continiously compounded annual rate of change}
\item \code{natural log}
\item \code{index}
}}
}
\value{
a \code{data_frame}
}
\description{
This function returns a data for specified series from
 \href{https://fred.stlouisfed.org/}{FRED}.
}
\examples{
get_data_fred_symbols(symbols = c('DGS30','DGS10','DGS2'),
return_wide = TRUE, nest_data = FALSE)

get_data_fred_symbols(
symbols = c("CPIAUCSL", "A191RL1Q225SBEA", "UNRATE"),
return_wide = FALSE,
convert_date_time = TRUE,
nest_data = TRUE
)

}
\seealso{
Other index values: \code{\link{get_data_crsp_indicies_returns}},
  \code{\link{get_data_msci_realtime_index_values}},
  \code{\link{get_data_nareit_annual_subsector_returns}},
  \code{\link{get_data_nareit_monthly_returns}}
}
\concept{index values}
