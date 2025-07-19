PS C:\Develops\temp_dir> mkdir dir_first


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:22                dir_first


PS C:\Develops\temp_dir> cat file_first.txt
cat : 'C:\Develops\temp_dir\file_first.txt' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cat file_first.txt
+ ~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\temp_dir\file_first.txt:String) [Get-Content], ItemNotFound
   Exception
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.GetContentCommand

PS C:\Develops\temp_dir> touch file_first.txt
touch : 'touch' 용어가 cmdlet, 함수, 스크립트 파일 또는 실행할 수 있는 프로그램 이름으로 인식되지 않습니다. 이름이 정확
한지 확인하고 경로가 포함된 경우 경로가 올바른지 검증한 다음 다시 시도하십시오.
위치 줄:1 문자:1
+ touch file_first.txt
+ ~~~~~
    + CategoryInfo          : ObjectNotFound: (touch:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

PS C:\Develops\temp_dir>  ls


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:22                dir_first
-a----      2025-07-15   오후 2:24              0 file_first.txt