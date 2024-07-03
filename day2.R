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


# 연속형 자료의 탐색
#   - 대표값 : 평균, 중앙값, 최빈값
# 결측치 : 값이 없음(누락)
# 이상치 : 값이 있음
#             ㄴ 극단적인 값(평균에서 많이 떨어진 값)
#             ㄴ 오류 ! (남 : 1, 여 : 2, 5 ?)

weight <- c(62, 82, 79, 92, 74, 73)

mean(weight)
median(weight)

# 사분위수 !
mydata <- c(62, 82, 79, 92, 74, 73, 120)
quantile(mydata)

# 10% 단위로 구간을 나누어 계산
quantile(mydata, (0:10)/10)
summary(mydata)