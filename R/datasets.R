#' Table with Trade States and sample of actual policy for those states
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with 2 columns:
#' \describe{
#'   \item{TradeState}{Current trade state status}
#'   \item{Policy}{Policy choice}
#' }
"TradeStatePolicy"

#' Table with Market Types and sample of actual policy for those states
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with 2 columns:
#' \describe{
#'   \item{MarketType}{Current Market Type status}
#'   \item{Policy}{Policy choice}
#' }
"policy_tr_systDF"

#' Table with Trade results samples
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with several columns
#' \describe{
#'   \item{MagicNumber}{Unique identifiers of the Trading Robots}
#'   \item{TicketNumber}{Ticket Number of closed position}
#'   \item{OrderStartTime}{Date and Time when order started}
#'   \item{OrderCloseTime}{Date and Time when order closed}
#'   \item{Profit}{Monetary result of the trade}
#'   \item{Symbol}{Symbol of the Asset e.g. EURUSD}
#'   \item{OrderType}{Order Type 0 - buy, 1 - sell}
#' }
"profit_factorDF"

#' Table with Trade results samples
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with several columns
#' \describe{
#'   \item{X1}{Unique identifiers of the Trading Robots}
#'   \item{X2}{Ticket Number of closed position}
#'   \item{X3}{Date and Time when order started}
#'   \item{X4}{Date and Time when order closed}
#'   \item{X5}{Monetary result of the trade}
#'   \item{X6}{Symbol of the Asset e.g. EURUSD}
#'   \item{X7}{Order Type 0 - buy, 1 - sell}
#' }
"profit_factor_data"

#' Table with Trade results samples
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with several columns
#' \describe{
#'   \item{MagicNumber}{Unique identifiers of the Trading Robots}
#'   \item{TicketNumber}{Ticket Number of closed position}
#'   \item{OrderStartTime}{Date and Time when order started}
#'   \item{OrderCloseTime}{Date and Time when order closed}
#'   \item{Profit}{Monetary result of the trade}
#'   \item{Symbol}{Symbol of the Asset e.g. EURUSD}
#'   \item{OrderType}{Order Type 0 - buy, 1 - sell}
#' }
"data_trades"

#' Table with price dataset
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with several columns
#' \describe{
#'   \item{X1}{Date and time of the price sample}
#'   \item{X2-X29}{Values of the assets}
#' }
"price_dataset"

#' Table with indicator dataset
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with several columns
#' \describe{
#'   \item{X1}{Date and time of the indicator sample}
#'   \item{X2-X29}{Values of the assets}
#' }
"indicator_dataset"


#' Table with one column indicator dataset
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with one column
#' \describe{
#'   \item{CADCHF}{Indicator values of the asset}
#' }
"macd_df"

#' Table with trade data and joined market type info
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with several columns
#' \describe{
#'   \item{"MagicNumber.x}{Unique identifiers of the Trading Robots from Trade Log}
#'   \item{TicketNumber}{Ticket Number of closed position}
#'   \item{OrderStartTime}{Date and Time when order started}
#'   \item{OrderCloseTime}{Date and Time when order closed}
#'   \item{Profit}{Monetary result of the trade}
#'   \item{Symbol}{Symbol of the Asset e.g. EURUSD}
#'   \item{OrderType}{Order Type 0 - buy, 1 - sell}
#'   \item{"MagicNumber.y}{Unique identifiers of the Trading Robots from Ticket Opening Log}
#'   \item{"MarketType}{Logged Market Type of the asset at the moment of Ticket Opening}
#' }
"trading_systemDF"

#' Table with several columns containing indicator values and Label values
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with several columns
#' \describe{
#'   \item{LABEL}{Asset values as were recorded in the future}
#'   \item{V1-V49}{Transposed values of the indicator}
#' }
"test_data_pattern"

#' Table with one column as result from the model prediction
#'
#' @docType data
#' @keywords datasets
#'
#' @format A dataframe with one column
#' \describe{
#'   \item{predict}{Predicted values from the model}
#' }
"result_prev"
