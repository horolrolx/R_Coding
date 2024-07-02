# 언어 소개
# - R : 데이터 분석(통계) 전용
# - Python : 데이터 분석

# 통계, 분석 : R(100점), Python(98점)
# 확장성(머신ㄴ러닝, 인공지능) : R(70), Python(100)
# 언어 접근성 난이도 R(80), Python(60)

# - R(언어), RStudio(IDE : 통합개발환경)
# 변수 선언 및 초기화
num <- 4 # 하나의 값을 변수 : 스카라(원소값)

# 벡터, 매트릭스는 동일한 자료형만 저장 가능
c(1, 2, 3) # 벡터 : 벡터(1차원)
matrix()   # 매트릭스 : 매트릭스(2차원)

# 다양한 자료형 사용하고 싶을 때는
list() # 1차원
data.frame() # 2차원

# 변수의 자료형
#  - 숫자형(정수, 실수)
#  - 문자형('', "")
#  - 논리형(TRUE, FALSE)
#  - 특수값(NULL, NA, NaN)
#   * NA(결측치) : 값이 누락 된 것 !
#   * NaN(수학적으로 저으이가 불가능한 값)
#   * NULL(정의되어 있지 않음을 의미)

# 분석할 때 가장 많이 사용하는 데이터 포맷은
# → CSV, excel, JSON : 2차원
# → 데이터분석시 가장 많이 사용하는 건
#   ' 데이터 프레임 '

city <- c("Seoul", "Tokyo")
rank <- c(1, 2)
city.info <- data.frame(city, rank)
city.info

# 조건문, 반복문, 함수
# if~else if~else
# 기본문법
# if(조건) {
#   실행문
# } else if(조건) {
#   실행문
# } else if(조건) {
#   실행문
# } else {
#   실행문
# }

# 성적을 반환하는 코드 작성
#   91 ~ 100 : A
#   81 ~ 90 : B
#   71 ~ 80 : C
#   61 ~ 70 : D
#   0 ~ 60 : F
# 예시 : grade <- "A"
score <- 91
# 조건문으로 score에 맞는 grade 출력
# 출력예 : print(grade)

if(score > 90){
  grade <- "A"
} else if(score > 80){
  grade <- "B"
} else if(score > 70){
  grade <- "C"
} else if(score > 60){
  grade <- "D"
} else {
  grade <- "F"
}
print(grade)

# BMI 계산기
# 1. 입력부
height <- 170
weight <- 72.3

# 2. BMI 계산
bmi <- round(weight / (height^2) * 10000, 2)

grade <- ""
# 3. 체중 등급 찾기
if(bmi >= 30){
  grade <- "고도비만"
} else if(bmi >= 25){
  grade <- "비만"
} else if(bmi >= 23){
  grade <- "과체중"
} else if(bmi >= 18.5){
  grade <- "정상"
} else {
  grade <- "저체중"
}

# 4. 출력부
#   - print() : 1건 출력
#   - cat() : 여러건 출력
cat("나의 신체질량지수(BMI) :", bmi, grade)
