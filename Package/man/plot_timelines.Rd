\name{plot_timelines}
\alias{plot_timelines}
\title{MadingleyR: Create timeline plot}
\usage{
plot_timelines(m_data2, select = 'functional groups')
plot_timelines(m_data2, select = 'feeding guilds')
}

\description{Creates a time series plot of the functional groups or the feeding guilds.}

\arguments{
\strong{Input arguments}
  \item{madingley_data}{madingley output list returned by madingley_run()}
  \item{select}{can be set to: 'functional groups' or 'feeding guilds'}
  \item{plot}{If FALSE it returns a data.frame with the time line data formatted for plotting (default = TRUE).}
  \item{col}{colours used for the time lines, defined as vector, when not specified default colours used.}
}

\examples{
# set model params
spatial_window = c(31,35,-5,-1) # Serengeti

# init model
m_data = madingley_init(spatial_window = spatial_window)

# run model
m_data2 = madingley_run(madingley_data = m_data, years = 3)

# make plots
plot_timelines(m_data2, select = 'functional groups')
plot_timelines(m_data2, select = 'feeding guilds')
}
