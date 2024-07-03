# 탐색적 데이터 분석 (EDA)
season <- c("winter", "summer", "winter", "fall", "summer", "spring", "spring", "fall", "winter", "summer", "summer")
season

# 도수분포표 만들기
table(season)
table(season)/length(season)

# 막대그래프 그리기
ds <- table(season)
barplot(ds, main = "favorite season")

ds.new <- ds[c(2, 3, 1, 4)]
ds.new

# 원 그래프 그리기
pie(ds.new, main="favorite season")

# 초록(1), 빨강(2), 파랑(3)
# 15명
like.color <- c(1, 3, 2, 1, 3, 1, 2, 3, 1, 1, 2, 3, 1, 3, 1)
table(like.color)
table(like.color)/length(like.color)

ds <- table(like.color)
barplot(ds, main = "colors", col = colors)
colors <- c("green", "red", "blue")
names(ds) <- colors
ds

pie(ds, main = "colors", col = colors)
