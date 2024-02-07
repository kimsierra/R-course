a = 10


#변수를 생성
#벡터 데이터 생성 
#c() 함수를 이용해서 생성
#일반적인 변수에는 데이터가 1개 대입
#벡터 데이터를 여러개의 데이터를 하나의 변수에 대입
d<-c(1,2,3,4,5)
e<-c('test', 'test2','test3')
print(d)
print(e)
e
f<-1:10

print(d[1])
print(e[1])

#행렬 데이터 생성
#2차원 데이터
arr_x = array(1:20, dim=c(4,5))
print(arr_x)
arr_y = array(1:20, dim=c(4,4))
print(arr_y)
arr_z = array(1:20, dim=c(4,6))
print(arr_z)

a="test"
print(a)

#리스트 형태의 데이터 생성
#백터 데이터에서 index(위치)값 대신에 key 값을 지정 
#벡터 데이터에서 순서대로 데이터를 나열해야되는 데이터
#리스트 데이터는 순서와 상관없이 key값을 기준으로 데이터를 출력가능

list_a = list(name='test', age= 20, phone = '01012345678')
print(list_a)
print(list_a['name'])
b = c('test', 20, '01012345678')
print(b[1])


#데이터프레임 생성
#2차원 데이터를 생성하는 과정
#인덱스와 컬럼을 기준으로 데이터를 생성
df = data.frame(
    name=c('test','test2','test3'),
    age=c(20,30,40),
    phone=c('01011112222','01022223333','01088887777')
)
print(df)

#벡터의 개수를 다르게 데이터프레임을 생성
#벡터 데이터의 개수가 다르면 에러가 발생
df2=data.frame(
  name =c ('test','test2','test3'),
  age=c(20,30)
)
 #연산자

#산술연산자
x<- 10
y<- 3
print(x+y)
x-y->result
print(x*y)
print(x/y)
print(x^y)
print(x%%y)
print(x%/%y)

#비교연산자
#두개의 데이터를 비교하여 결과 값은 논리값(참/거짓)으로 출력
z<-5
print(x==y)
print(y!=z)
print(x>y)
print(x<z)
print(x<=z)
print(x=<z)
#에러발생
print(x=<z)

a=1; b=2

#논리연산자
#부정 ! 사용
print(!TRUE)
#and
#두 개의 논리값들이 모두 참인 경우에만 참을 출력
#그 외의 경우는 모두 거짓을 출력
print(TRUE & TRUE)
print(TRUE & FALSE)
#or
#두 개의 논리값 중 하나만 참이여도 참을 출력
#두 개의 논리값이 모두 거짓인 경우에만 거짓을 출력
print(TRUE | TRUE)
print(TRUE | FALSE)
print(FALSE | FALSE)

#조건문 (if)
x<- 3
if(x>5){
  print('x는 5보다 크다')
}

#if ~else문
#if 조건식이 참인 경우 실행할 코드와
#else문에서 조건식이 거짓인 경우 실행 할 코드를 작성
if(x>5){
  print ('x는 5보다 크다')
}else{
  print('x는 5보다 작거나 같다')
}

#조건이 여러개인 조건문 생성
score<- 65

if (score>=90){
  print('A')
}else if (score >=80){
  #score가 90점 미만이고 80점 이상인 경우
  print('B')
}else if(score >=70){
  #score가 80점 미만이고 70점 이상인 경우
  print('C')
  
}else{
  #score가 70점 미만인 경우
  print('F')
}
#해당 console 라인의 control+c는 강제종료

#if 조건식에 조건식이 2개 이상인 경우
id<-'test'
pass<-'1111'
if (id=="test" & pass=='1234'){
  print('로그인 성공')
}else{
  print('로그인 실패')
}

#which문
#벡터데이터에서 조건식이 일치하는 데이터의 위치 값을 출력
name<-c('test','test2','test3')
which(name=='test2')

if(name[1]=='test2'){
  print(1)
}
if (name[2]=='test2'){
  print(2)
}
if(name[3]=='test2'){
  print(3)
}

which(name !='test2')
which(name == 'test5')


#반복문

#for문
#벡터데이터의 원소의 개수만큼 반복 실행하는 구문

array_a = 1:10
for (i in array_a){
  print(i)
}
#i=10L L의 의미=정수 '10'이다

#1부터 10까지의 합계를 출력
#초기 합계 데이터를 0으로 지정
result<-0
#1부터 10까지 반복을 하는 반복문을 생성
for(i in array_a){
  result = result+i
}
print(result)

#while문
#초기 시작값을 지정하고 해당하는 값을 반복 실행할때마다 증감시켜
#조건식이 거짓이 될때까지 반복 실행

i=1 


while(i<=10){
  print(i)
  i=i+1
}

#while문을 이용하여 1부터 10까지 합계를 출력
i=1
#합계 초기값 0을 대입
result=0

while (i<=10){

  #i의 값을 result에 누적합
  result=result+i
  i=i+1
}
print(result)

#반복문을 이용한 구구단 생성


#2부터 9까지  반복하는 반복문을 생성
array_a = 2:9
array_b = 1:9
for (i in array_a){
  #print(i)
  #1값이 2부터 9일때 1부터 9까지 반복을 하는 반복문 생성
  for (j in array_b){
    print(i*j)
  }    
} 

##반복문 문제
##2개의 주사위를 굴려서
##두 주사위의 합이 5의 배수인 경우의 수를 출력하시오

 ##1부터 6까지 반복을 하는 반복문을 생성
cnt=0
for (i in 1:6){
  
  
  ##1부터 6까지 반복을 하는 반복문을 생성
  for(j in 1:6){
  
      ##5의 배수인 조건문을 생성
   # print(c(i,j))
  if ( (i+j) %% 5 == 0){
    ##조건식이 참인 경우 출력
  #print(c(i,j))
   cnt =cnt+1
    }  
  }        
}
print(cnt)

#break문
#반복문을 강제로 종료

for (i in 1:100){
  if(i>3){
    break
  }
  print(i)
}

##1부터 100까지의 누적합중에 누적합의 값이 2000이 넘어가는 부분에 숫자 몇일까?
##합계는 몇일까?

result=0

for (i in 1:100){
  result = result +i
  if(result >=2000){
    break
  }
}
print(c(i,result))

##1부터 1씩 증가시킨 데이터를 누적합을 하는 도중
##누적합이 50000이 넘어가는 최초의 순간은 언제인가?

i=1
result=0

while (TRUE){
  result=result+i
  if(result>=50000){
    break
  }
  i=i+1
}
print(c(i,result))

##1부터 100까지 숫자 중 짝수의 누적합을 출력하라

##합계라는 초기값을 0을 대입하여 생성
##1부터 100까지 반복을 하는 반복문을 생성
  
##짝수인 경우 조건문을 생성
   
##조건식이 참인 경우 누적합을 실행
##합계를 출력
result<-0
for(i in 1:100){
  if(i %% 2==0){
  result = result+i
  }
}
print(result)

result=0
i=1
for(i in 1:50){
  result = result + (i*2)
}
print(result)

i=1
result=0

while(TRUE){
  if(i>100){
  break
  }
  if(i%%2==0){
    result = result+i
  }
  i=i+1
}
print(result)

i=1
result=0
while(TRUE){
  if(i>100){
    break
  }
  result = result+i
  i=i+2
}
print(result)
print(i)

#비순서형 벡터 데이터를 이용한 for문
array_a=c('kim','park','lee','김')
for(i in array_a){
  print(i)
}
i<- 1
while(i<=4){
  print(array_a[i])
  i=i+1
}

##next문
##반복문으로 되돌아간다. 다음으로 넘어간다.
for(i in 1:10){
  if (i <5){
    next}
  print(i)
}

result=0
for (i in 1:100){
  if(i %% 2 == 1){
    next
  }
  result= result+i
}
print(result)
