# Python 3.10을 기반으로 이미지를 생성
FROM python:3.10

# 작업 디렉토리를 /app으로 설정
WORKDIR /app

# requirements.txt를 컨테이너에 복사하고, 필요한 패키지 설치
COPY requirements.txt .
RUN pip install -r requirements.txt

# 프로젝트 파일을 모두 컨테이너에 복사
COPY . .

# 앱을 실행할 때 Uvicorn을 사용하여 FastAPI 앱을 실행
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
