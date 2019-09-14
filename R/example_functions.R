#' Survival function percentile
#' Estimative of Kaplan-Meyer survival function percentile by linear interpolation
#' @param fit survfit object.
#' @param p numeric vector with percentiles.
#' @return vector with aproximation of the time.
#' @examples
#' data('leucemia')
#' fitl = survfit(Surv(tempos, cens) ~ 1, data = leucemia)
#' tp(fitl, p = c(0.5, 0.6))
#' @author Pedro Araujo
#' @export
#'
tp = Vectorize(function(fit, p=0.5) {
  app = approx(x=fit$surv, y=fit$time, xout = p)$y
  return(app)
}, vectorize.args = "p")





