# Functions

# ---- Dates and times ---- 

# Convert date values from Excel (ISO strings or numeric serials) to Date
convert_date <- function(x) {
  suppressWarnings({out <- rep(as.Date(NA), length(x))
  
  # Case 1: strings with a proper ISO-like date (YYYY-MM-DD)
  has_date <- grepl("\\d{4}-\\d{2}-\\d{2}", x)
  if (any(has_date)) {
    extracted <- sub(".*?(\\d{4}-\\d{2}-\\d{2}).*", "\\1", x[has_date])
    out[has_date] <- as.Date(extracted, format = "%Y-%m-%d")}
  
  # Case 2: plain Excel serials (numeric or numeric-looking text)
  still_na <- is.na(out) & grepl("^[0-9.]+$", x)
  if (any(still_na)) {
    out[still_na] <- as.Date(
      as.numeric(x[still_na]), origin = "1899-12-30")}
  
  out})
}

# Convert time values from Excel (POSIXct, fractions, serials, or strings)
convert_time <- function(x) {
  
  # Handle POSIXct times directly
  if (inherits(x, "POSIXt")) {
    return(hms::as_hms(x))}
  
  # Trim whitespace
  x <- trimws(x)
  out <- rep(NA, length(x))
  
  # Try numeric interpretation
  num <- suppressWarnings(as.numeric(x))
  
  # Fractions of a day (0-1)
  is_frac <- !is.na(num) & num >= 0 & num < 1
  out[is_frac] <- hms::as_hms(round(num[is_frac] * 86400))
  
  # Excel serials (>=1, keep fractional part only)
  is_serial <- !is.na(num) & num >= 1
  frac_day <- num[is_serial] %% 1
  out[is_serial] <- hms::as_hms(round(frac_day * 86400))
  
  # String times
  is_str <- is.na(num) & nzchar(x)
  if (any(is_str)) {
    parsed <- suppressWarnings(lubridate::hms(x[is_str]))
    out[is_str] <- hms::as_hms(as.numeric(lubridate::hms(x[is_str])))}
  hms::as_hms(out)
}