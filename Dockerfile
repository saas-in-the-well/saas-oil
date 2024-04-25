# 베이스 이미지를 지정합니다.
# 이미지가 로컬에 존재하지 않을 경우에만 다운로드하도록 합니다.
# 이미지가 로컬에 있을 경우에는 다시 다운로드하지 않습니다.
FROM arm64v8/openjdk:11-jdk-slim@sha256:482a519d80f99a32117003a369c14fdc180c3175ca3ee8b2bf659b9de05cf53b

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 호스트의 JAR 파일을 Docker 이미지로 복사합니다.
COPY target/saas-oil-application-0.0.1-SNAPSHOT.jar /app/saas-oil-application-0.0.1-SNAPSHOT.jar

# 어플리케이션을 실행합니다.
CMD ["java", "-jar", "-Dspring.profiles.active=stg", "saas-oil-application-0.0.1-SNAPSHOT.jar"]