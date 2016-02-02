evidenceHeatmap <- function(x, fill = "d", color = "outside",
                           size = 1.5,
                           xvar = "sample", yvar = "loc", ...) {

    mc = mergeCalls(x)

    p = ggplot(mc) +
        geom_tile(aes_string(x = xvar, y = yvar, fill = fill, color = color),
                  size = size, ...) +
                      theme_bw() + xlab("Sample") + ylab("Variant")
    
    return(p)
}
