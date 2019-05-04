library("tidyverse")
# install.packages("maps")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

## Example of a geoplot in ggplot
nz  <- map_data("nz")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()

## An example with polar coordinate
bar <- ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, fill = cut), 
    show.legend = FALSE,
    width = 1
  ) + 
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()


seq(1, 10)
