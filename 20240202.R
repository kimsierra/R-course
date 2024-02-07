#매개변수가 존재하지 않는 함수를 생성
func_1 <-function(){
  print('hello R')
}
#생성된 함수를 호출
func_1()
func_2<-function(){
  return("hello R")
}
func_2()
result1<-func_1()
result2<-func_2()
print(result1)

#매개변수 존재하는 함수 생성
func_3 <- function(input_x,input_y){
  result = input_x+input_y
  print(result)
}
result3 = func_3(10,3)

#변수의 종류
#전역 변수-함수 내부나 외부 모든 영역에서 사용 가능한 변수
#지역 변수-함수 내부에서 생성된 변수들은 함수 내부에서만 사용이 가능
#  함수의 외부에서 지역 변수를 호출하면 호줄이 된지 않는다.
#  휘발성 변수라고 부르기도 한다.
print(result)
#매개 변수
#  함수를 생성할 때 인자 값(입력값)이 저장되는 공간
#  지역변수와 마찬가지로 함수 내부에서만 사용이 가능

#매개변수의 개수와 인자의 개수를 다르게 호출하는 경우
func_3(10)
func_3(10,3,2)

#인자 개수가 가변인 경우위 함수를 생성
func_4<-function(...){
  print(c(...))
}
func_4()
func_4(1,2,3,4)
func_4(10,20,30,40,50)

#함수를 이용해서 커스텀 연산자 생성(연산자 형태로 함수를 생성할 수 있다.)
"%s%"<- function (input_x,input_y){
  result<-input_x^input_y
  return(result)
}
10 %s% 5

#매개 변수에 기본값을 설정하여 함수를 생성
func_5 <- function(input_x,input_y=2, input_z=3){
  result <-input_x + input_y - input_z
  return(result)
}
func_5(5,10,3)
func_5(5)
#func_5(5,10,3) 호출
#input_x=5,input_y=10, input_z=3
#result=5+10-3
#return(12)
func_5(10, input_z = 1)

#매개변수가 2개인 함수를 생성
#매개변수 사이의 값들을 모두 합하여 되돌려주는 함수 생성
func_6 <- function(start , end){
  #start부터 end까지 합
  #누적합 할 수 있는 데이터의 공간 생성(변수 생성)
  result=0
  #start부터 end까지 반복하는 반복문을 생성
  #i에 대입되는 데이터는?벡터 데이터의 각 원소들이 하나씩 대입하여 반복실행
  #result에 누적합 실행
  for (i in start:end){
    result = result+i
 }
return(result)
}
func_6(1,10)
func_6(1,100)

min(5,3,8,1,10)
max(10,3,6,11,8)

#함수를 생성
#매개변수는 2개 생성
#첫번째 개개변수는 데이터 하나를 저장
#두번째 매개변수는 인자의 개수가 가변인 경우
func_8<-function(val, ...){
  #최소값을 되돌려주는 함수
  result <-val
  #result와 두번때 입력값을 비교하여 작은 값을 result에 담아준다(반복실행)
  for (i in c(...)){
    if (result > i){
      result <- i
  }
  
  }
 return(result)
}
func_8(10,3)
func_8(10,2,5,1,7)
func_8(15,4,6,8,2,9,1,0)

#평균을 구하는 함수 생성
#매개변수가 가변인 함수 생성
 #해당하는 인자값들을 모두 더한다(반복문 사용)
 #합계라는 초기 데이터를 생성하여 0을 대입
 #인자들을 벡터 데이터로 변환
 #반복문 이용해서 모든 데이터를 누적합 해준다.
 #합계에 인자의 개수로 나눠준다
 #결과를 되돌려준다.

#내 답안
#func_9 <- function (...){
#  result = 0
#  cnt = 0
#  for (i in c(...)){
#    result = result + i
#    cnt = cnt + 1
#    }
# return(result / cnt )
#}
#function_9(4,8,12)

#답안
func_9<-function(...){
  result = 0
  cnt = 0
  for (i in c(...)){
    result = result + i
    cnt = cnt + 1
  }
  return(result)
}
avg_result = result / cnt
return(avg_result)
#코드 짧게 만들기. 
func_9(5,3,4)
sum(5,3,2)
length(c(3,2,1))
func_10 <- function(...){
  result = sum(...) / length(c(...))
  return (result)
}
func_10(5,3,1)

sum()
length()

test_sum <- function(...){
  result = 0
  for (i in c(...)){
    result = result + i
  }
  return(result)
}
test_sum(5,3,1)
test_sum()

test_len <- function(value){
  cnt = 0
  for (i in value){
    cnt = cnt +1
  }
  return(cnt)
}
test_len(c(1,5,3))
test_len()

##데이터 프레임 생성
##백터데이터들을 이용하여 데이터프레임 생성
name <- c('A','B','C','D','E')
grade <- c(1,3,2,2,1)
data.frame(name, grade) -> student

##행렬 생성
##cbind():열을 추가하는 함수
midturm <- c(70,80,75,60,90)
final <- c(80,90,70,75,85)
score <- cbind(midturm, final)

##행렬과 데이터프레임을 결합
data.frame(student,score)
cbind(student,score) #열을 결합해 주겠다는 명령어

##벡터데이터를 생성
gender = c ('M','F','F','M','F')
##데이터프레임과 벡터데이터와 행렬을 결합
data.frame(student,gender,score)
cbind(student,gender,score) -> students

test_vec = c(1,2,3,4)
#길이가 다른 벡터데이터를 결합
cbind(students, test_vec)
data.frame(students, test_vec)

#파생변수를 생성
#데이터프레임에서 새로운 컬럼을 추가
#기존에 있는 데이터에서 분석에서 사용할 데이터가 존재하지 않을 때
#데이터들을 가공하여 새로운 데이터를 생성

students
#기존에 생성했던 벡터데이터들의 합
midturm + final
#데이터프레임에서 특정 컬럼을 선택하여 합
students$midturm + students[["final"]] ->total #위와 같은 방법, 대괄호는 따옴표를 써서

#cbind(), data.frame() 함수를 이용하여 파생변수 생성
cbind(students, total)
data.frame(students,total)

students$total #total을 저장하지 않아  NULL값이 나옴
#따라서 저장 후 불러오면 됨
students$total <- students$midturm +students$final
students

#students파생변수를 생성
#평균성적을 생성
#case1 :total / 2
#case2 :(midtum + final)/2
#컬럼의 이름은 mean

  #case1
  #total컬럼의 데이터만 추출해서 2로 나눠줌
students$total/2 ->mean
cbind(students,mean)
data.frame(students,mean)

  #case2
students$mean <- (students$midturm + students$final) /2
students

#새로운 학생 정보를 추가하고 싶다면
  #행을 추가하고 싶다면 rbind
data.frame(name='F', grade=1, gender='M',midturm =80, final = 70, total=150,mean=75)->new_student
rbind(students,new_student)
  #data.frame() 함수는 행 추가는 x
data.frame(students,new_student)

  #순서에는 영향을 미치지 않는다. key값들만 정확하게 입력.
new_student2=data.frame(name='F', gender='M',midturm =80, final = 70, total=150, grade=1,mean=75)
rbind(students,new_student2)

#리스트형태 데이터
list_a = list(name = 'test', age = 20)
list_a$loc = 'seoul'
list_a

  #리스트데이터에서 value가 벡터 데이터인 경우
list_b=list(
  name = c('test','test2'),
  age = c(20,30)
)
list_b
  #리스트 2차원데이터에서 'test' 문자열 추출하려면 리스트에서 key값을 이용하여 데이터를 추출
list_b$name[1]
list_b[['name']][1]

#필터
  #데이터프레임명[행의 조건, 열의 조건]
students[1,]
students[c(1,3),]
  #학년이 1학년인 학생의 정보만 출력
students$grade == 1 ->flag
students[flag, ]
!flag #부정:1학년이 아닌 정보들만 보겠다
students[!flag, ]

  #행과 열의 조건식으로 모두 이용하여 데이터 추출
  #여학생들의 중간, 기말 성적만 추출
  #여학생->인덱스 조건식(gender =='F')
  #중간, 기말 성적->컬럼 조건식 (midturm, final)
students$gender == 'F'->flag2
students[flag2,c('midturm','final')]

  #전체 학생 중 중간성적이 80점 이상이고, 기말 성적도 80 이상인 학생 정보 출력하기
students$midturm>=80 & students$final>=80 ->flag3
students[flag3,c('midturm','final')]
  #각각 변수를 생성해주면 편리
students$midturm>=80 ->flag3
students$final>=80 ->flag4
students[flag3 & flag4,]
flag3 & flag4
students

  #데이터의 순서를 변경하는 함수
  #컬럼의 순서를 변경하는 것은 벡터의 순서를 변경 입력하면 됨
  #인덱스의 순서를 변경->컬럼의 순서 변경 방법과 같다.
students[c(3,2,1,5,4),]
  #학년을 기준으로 오름차순 정렬
  #order():백터데이터의 데이터들을 오름차순 정렬 위치 출력
order(students$grade) -> flag5
students[flag5,] #벡터값을 필터에 넣으면 데이터가 보여진다
   
  #기말 성적을 기준으로 해서 내림차순 정렬
  #order() 함수에서 특정 매개변수의 인자 값을 TRUE변경하면 내림차순 정렬
order(students$final, decreasing = TRUE)
order(-students$final) ->flag6
  #매개변수 생각나지 않으면 음수처리 한다.숫자에서만 가능,문자는 음수형태
  #없으므로 
order(-students$name) #문자열에 음수 넣으면 에러발생
order(students$name, decreasing = TRUE)

students[flag6,]

install.packages('dplyr')
library(dplyr)

#컬럼의 이름을 변경
#rename(데이터프레임명,새로운 컬럼의 이름=변경할 컬럼의 이름)
students
rename(students, mean_score = mean)

#ifelse(조건식,참인 경우 출력값,거짓인 경우 출력값)
  #조건식을 이용하여 파생변수 생성
ifelse(
  students$mean>75,
  'pass',
  'fail'
) ->res
students$result <- res
students

  #75점 초과인 경우 pass, 75점 인 경우 hold, 75점 미만인 경우 fail
ifelse(
  students$mean> 75, 
  'pass',
  ifelse(students$mean==75, 
         'hold',
         'fail'
  )
)
package_version(R.version)





