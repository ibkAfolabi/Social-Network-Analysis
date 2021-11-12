


customer <- read.csv("ng.csv")
plot(customer$lng,customer$lat)
map(database="world",regions = 'Nigeria')
symbols(customer$lng, customer$lat, squares =rep(1, length(customer$lng)), inches=0.03, add=TRUE)

