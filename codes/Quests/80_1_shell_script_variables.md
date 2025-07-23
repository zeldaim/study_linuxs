---

## **🧪 실습 문제: 외부 인자를 사용한 파일 생성 스크립트**

### **📘 문제 설명**

쉘 스크립트를 작성하세요. 이 스크립트는 **외부 인자 2개**를 받아 다음과 같이 동작해야 합니다:

1. **첫 번째 인자**: 생성할 파일 이름 (예: `result.txt`)

2. **두 번째 인자**: 파일에 저장할 문자열 내용

스크립트 실행 시:

* 파일이 현재 디렉터리에 생성되어야 하며,

* 파일 내부에 두 번째 인자의 문자열이 저장되어야 합니다.

* 파일 생성 성공 메시지를 출력해야 합니다.

  ---

  ### **📄 파일명 예시**

`80_1_shell_variables_aguments.sh`

---

### **✍️ 수강생이 작성해야 할 동작 흐름**

1. 인자 개수 확인 (2개 아닐 시 오류 메시지 출력)

2. 변수에 인자 할당

3. 파일 생성 및 내용 기록

4. 완료 메시지 출력

   ---

   ### **✅ 실행 예제**

   $ ./80\_1\_shell\_variables\_aguments.sh welcome.txt "Hello Linux Learners\!"  
   

   #### **📂 결과**

* 현재 디렉토리에 `welcome.txt` 파일이 생성됨

* `welcome.txt` 파일 내용:

  Hello Linux Learners\!  
    
* 터미널 출력:

  \[✔\] welcome.txt 파일이 성공적으로 생성되었습니다.  
    
  ---

  ### **💡 힌트**

* `$1`, `$2`를 사용하여 외부 인자를 받을 수 있습니다.
```
[yhc@localhost Downloads]$ source 80_1_shell_variables_aguments.sh welcom.txt "hello linux" 
FILE=welcom.txt
hello linux
sucess
[yhc@localhost Downloads]$ ls -l 
total 24
-rw-r--r--. 1 yhc yhc 123 Jul 23 15:26 80_1_shell_variables_aguments.sh
-rw-r--r--. 1 yhc yhc   4 Jul 23 15:27 eng.txt
-rw-r--r--. 1 yhc yhc   5 Jul 23 15:18 file.txt
-rw-r--r--. 1 yhc yhc 199 Jul 23 14:37 varialbles.sh
-rw-------. 1 yhc yhc   0 Jul 23 15:04 varialbles.sh.save
-rw-r--r--. 1 yhc yhc  76 Jul 23 15:04 varialbles.sh.save.1
-rw-r--r--. 1 yhc yhc  12 Jul 23 15:29 welcom.txt.txt
[yhc@localhost Downloads]$ cat welcom.txt.txt 
hello linux
[yhc@localhost Downloads]$ 


```
```
[yhc@localhost Downloads]$ cat 80_1_shell_variables_aguments.sh 
V_file="$1"
 echo "FILE=$1"
V_Contents="$2"



touch ./V_file.txt && echo V_Contents >V_file.txt && cat V_file.txt && echo "sucess"
 


```