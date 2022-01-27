#' Create some random scatter plots
#' Reminder: ggplot2 need to be installed and loaded before using this function
#' @export
#' @param seed numeric variable
make_art <- function(seed){
  if(missing(seed)){
    x <- c(rnorm(500, 0, 1))
    y <- c(rnorm(500, 2, 3))
    z <- c(rep("a", 150), rep("b", 150), rep("c", 200))
    df <- data.frame(x, y, z)
    ggplot(data = df, aes(x, y)) + geom_point(aes(color = z)) +
      theme_bw()+ scale_color_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))
  }else{
    set.seed(seed)
    x <- c(rnorm(500, 0, 1))
    y <- c(rnorm(500, 2, 3))
    z <- c(rep("a", 150), rep("b", 150), rep("c", 200))
    df <- data.frame(x, y, z)
    ggplot(data = df, aes(x, y)) + geom_point(aes(color = z)) +
      theme_bw()+ scale_color_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))
  }
}

