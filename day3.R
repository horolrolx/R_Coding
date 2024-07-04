z <- c(1, 2, 3, NA, 5, NA, 8)
mean(z)
is.na(z) # TRUE = 결측치
sum(is.na(z))
sum(z)
sum(z, na.rm=TRUE) # 결측치 제거

# 결측치 대체
#   - 결측치를 0으로 대체 !
#   - 다양한 방법으로 대체 할 수 있음 !
z[is.na(z)] <- 0
z

# 결측치 제거 후 새로운 값 만들기
nz = as.vector(na.omit(z)) # z 값에서 결측치가 아닌 값만 뽑아서 다시 vector로 만듦
nz

# 특이값(이상치)
# boxplot 사용하면 분포 표기, 이상치 데이터 확인
st <- data.frame(state.x77)
boxplot(st$Income)
boxplot.stats(st$Income)$out

out.val <- boxplot.stats(st$Income)$out

# 이상치를 찾아서 → 결측치로 바꾸기
st$Income[st$Income %in% out.val] <- NA
newdata <- st[complete.cases(st),]

# 결측치 → 처리가능
# 이상치 → 결측치 → 처리

# 데이터 정렬
#   - 기본적으로 오름차순
#   - decreasing = T, 내림차순

v1 <- c(1, 7, 6, 8, 4, 2, 3)
order(v1)
v1 <- sort(v1)
v1
v2 <- sort(v1, decreasing = T)
v2

# 데이터 샘플링
#   - 데이터 원본(1,000개)
#   - TRAIN / VALID / TEST
#   - 800   / 100   / 100

x <- 1:100
x
# size = 1, 한번에 10개씩 뽑기 !
# replace = FALSE, 비복원 추출
y <- sample(x, size = 10, replace = FALSE)
y

# set.seed() 함수 !
#   - 랜덤 확률 고정 !
set.seed(100)

# 랜덤 샘플링을 비추천 !
#   - 랜덤이지만 그래도 불구하고
#     샘플링 편향 문제 생길 수 있음

# 랜덤 샘플링
# → 분리 된 데이터 분포 검증 !