#' Survival function percentile
#' Estimative of Kaplan-Meier survival function percentile by linear interpolation
#' @param fit survfit object.
#' @param p numeric vector with percentiles.
#' @return numeric vector with aproximation of the time.
#' @examples
#' data('leucemia')
#' fitl = survfit(Surv(tempos, cens) ~ 1, data = leucemia)
#' tp(fitl, p = c(0.5, 0.6))
#' @author Pedro Araujo
#' @export
tp = Vectorize(function(fit, p=0.5) {
  app = approx(x=fit$surv, y=fit$time, xout = p)$y
  return(app)
}, vectorize.args = "p")


#' Mean lifetime
#' Estimative of Kaplan-Meier survival mean lifetime (with standard error)
#' @param fit survfit object.
#' @return numeric vector with mean lifetime and standard error
#' @examples
#' data('leucemia')
#' fitl = survfit(Surv(tempos, cens) ~ 1, data = leucemia)
#' tm(fitl)
#' @author Pedro Araujo
#' @export
tm = function(fit) {
  #meantime

  #### time and survival function ####
  t = fit$time
  s = fit$surv

  #time and survival for distint times
  t_dist = t[!duplicated(t)]
  s_dist = s[!duplicated(t)]

  #calc of mean
  sk = s_dist[-length(s_dist)]
  tk = diff(t_dist)
  m = t[1] + sum(sk*tk)

  #### variance of m ####
  #number of events and individuals in risk
  n = fit$n.risk
  d = fit$n.event

  #s, t, d, n for distints s's
  s_dist = s[!duplicated(s)]
  t_dist = t[!duplicated(s)]
  d_dist = d[!duplicated(s)]
  n_dist = n[!duplicated(s)]
  tj = diff(t_dist)
  sj = s_dist[-length(s_dist)]
  dj = d_dist[-length(d_dist)]
  nj = n_dist[-length(n_dist)]

  A = rev(cumsum(rev(tj*sj)))
  varm = sum((dj*(A^2))/(nj*(nj-dj)))

  #vector return
  rat = c("tm" = m, "var" = varm)

  return(rat)
}

#' Remaining life
#' Remaining life estatimative of Kaplan-Meier survival function
#' @param fit survfit object.
#' @param t numeric vector with times
#' @return numeric vector with remaining life
#' @examples
#' data('leucemia')
#' fitl = survfit(Surv(tempos, cens) ~ 1, data = leucemia)
#' vmr(fitl, t = 4)
#' @author Pedro Araujo
#' @export
vmr = Vectorize(function(fit, t) {
  time = fit$time[fit$time>=t]
  surv = fit$surv[fit$time>=t]

  s_dist = surv[!duplicated(s)]
  t_dist = time[!duplicated(s)]
  d_dist = d[!duplicated(s)]
  n_dist = n[!duplicated(s)]
  tj = diff(t_dist)
  sj = s_dist[-length(s_dist)]
  dj = d_dist[-length(d_dist)]
  nj = n_dist[-length(n_dist)]

  A = sum(tj*sj)
  S = approx(x = fitl$time, y = fitl$surv, xout = t)$y

  vmr = A/S
  vmr
}, vectorize.args = "t")





vmr(fit, t = 2)

library(survival)

tempos = c(3, 4, 5.7, 6.5, 6.5, 8.4, 10, 10, 12, 15)
cens = c(1, 0, 0, 1, 1, 0, 1, 0, 1, 1)
fitl = survfit(Surv(tempos, cens) ~ 1)

























