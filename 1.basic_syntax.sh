# 현재 위치 경로를 출력
pwd

# 현재 파일 및 폴더 조회
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히, 숨김파일까지
ls -al

# 목록조회 자세히, 숨김파일까지, 오래된순정렬(최신은 alt)
ls -alrt

# 디렉토리 생성
mkdir chanjin_dir

# 특정 디렉토리로 이동
cd chanjin_dir

# 상위 디렉토리로 이동
cd ..
# 또는 cd ../

# 루트디렉토리(최상위디렉토리리)로 이동
cd /

# 직전폴더로 이동
cd -

# 홈경로(/home/본인계정)로 이동
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../
# 절대경로 : cd /home

# 비어있는 파일 만들기
touch 파일이름.txt

# 파일내용 터미널창에 출력하기
cat 파일이름.txt

# 파일내용용 상위 10줄 출력하기
head 파일명

# 파일내용 하위 10줄 출력하기기
tail 파일명

# 파일내용 상/하위 n개 조회
tail(head) -n 파일명

# 파일내용 실시간 조회
tail -f 파일명

# 파일내용 편집기 : nano, vi
# 도스키 위/아래를 통해 이전명령어 조회
# 이전에 실행했던 명령어 모두 조회
history
# 현재 내 터미널창에 보이는 명령어 내역 정리
clear
# ^c를 통해 입력명령어 취소

# 파일삭제 명령어, -r 옵션을 통해 묻지않고 삭제
rm 파일명.txt
# 폴더째 삭제
rm -r 폴더명명

# 터미널창에 문자열을 출력
echo "문자열"
# echo 를 통해 파일에 내영 입력
# > : 덮어쓰기 >> : 추가모드
echo "문자열" > 파일명.txt

# cp 복사명령어
# cp 복사대상 복사될파일명
# 폴더 복사시에는 -r 옵션
cp 파일명.txt 파일명.txt
cp 파일명.txt ../파일명.txt

# grep : 파일 내에서 문자열 찾기
# r: 모든 디렉토리내, n: 라인수출력, i: 대소문자구분없이
grep -rni "문자열" .

# find : 이름으로 파일 또는 디렉토리 찾기
find . - name "*.txt"
find . - type f

# find 와 grep 의 혼용
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일중에 이름은 first로 시작하고
# 그 파일들 안에 hello 라는 키워드가 들어가 있는 문장찾기
find . -type f -name "first*" | xargs grep -rni "hello"