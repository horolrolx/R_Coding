# 탐색적 데이터 분석 (EDA)
season <- c("winter", "summer", "winter","fall",
            "summer", "spring", "spring", "fall",
            "winter", "summer", "summer")
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

# 산포
mydata <- c(62, 82, 79, 92, 74, 73, 120)
var(mydata) # 분산
sd(mydata) # 표준편차
range(mydata) # 값의 범위

# 히스토그램
# - 막대그래프 비슷함 (빈도수)
# - 연속형 데이터 그리기 ! (종류별로 그리기 가능))
dist <- cars[, 2]
dist

hist(dist,
     main = "제동거리",
     xlab = "제동거리",
     ylab = "빈도수",
     border = "blue", 
     col = "green",
     flas = 2,
     breaks = 5, family="AppleGothic")

# 막대 그래프 막대끼리 안붙어있음
# 막대 그래프 막대의 범위가 의미 없음

# 상자그림(boxplot)
# - 사분위수를 보기 위함
# - 이상치 확인 가능 !
# - 상자그림의 가운데선 중앙값

dist <- cars[, 2]
boxplot(dist,
        main = "제동거리",
        family = "AppleGothic") # boxplot에서 하얀색 원이 이상치

# 다중변수 자료의 탐색
#   1. 산점도
#     - 자동차의 무게와 연비의 관계 (음의 상관관계)
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt,
     mpg,
     main = "무게-연비 그래프",
     xlab="무게",
     ylab="연비",
     col = "red",
     pch = 11,
     family="AppleGothic")

vars <- c("mpg", "disp", "drat", "wt")
target <- mtcars[,vars]
head(target)

pairs(target,
      main = "multi plots")

# 그룹 정보가 있는 두변수의 산점도
iris.2 <- iris[, 3:4]
point <- as.numeric(iris$Species)
point

color <- c("red", "green", "blue")
plot(iris.2,
     main = "Iris Plot",
     pch = c(point),
     col = color[point])

# 상관분석
#   - 2개의 특징의 상관정도를 파악
#   - -1 ~ +1 사이의 값
#   = +1과 -1에 가까울수록 상관 높음
#   - 0에 가까울수록 상관 없음
#   - +1은 양의 상관관계
#   - -1은 음의 상관관계

# 데이터분석
#   상관분석 -> 회귀분석
#   0.4 이하는 상관 없음
#   0.4 ~ 0.7 : 약한 상관관계
#   0.7 ~ 1.0 : 강한 상관관계

# 인공지능
#   차원(특징)의 저주 !
#     - 특징이 너무 많으면 
#       오히려 모델의 성능이 하락하는 현상
#     - 해결책 : 특징의 갯수를 줄이기
#         1. 특징 선택
#           ㄴ 목적과 상관정도가 높은 특징만 선택 !
#           ㄴ 특징값이 변하지 않음
#         2. 특징 추출
#           ㄴ 주성분 분석(PCA)
#           ㄴ 딥러닝 활용(오토 인코더)

# 히트맵(상관분석 그래프)
cor(iris[,1:4])

# 선그래프
month = 1:12
late = c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
late2 = c(4, 6, 5, 8, 7, 8, 10, 11, 6, 5, 7, 3)
plot(month,
     late,
     main = "지각생 통계",
     type = "l", # 그래프 종류(b, s, o, l)
     lty = 1,    # 선 종류
     lwd = 1,    # 선 굵기
     xlab = "월",
     ylab = "지각 빈도수",
     family = "AppleGothic")

lines(month,
      late2,
      type = "b",
      col = "blue")