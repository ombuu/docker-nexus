# docker-nexus
fastcampus docker 컨테이너 빌드 및 push 실습

## Nexus와 AWS ECR의 Docker 빌드 및 Push 방법 차이점 비교
1. Docker 컨테이너 빌드 후 Nexus에 이미지 Push 및 Clain 보안 스캔 수행
2. Docker 컨테이너 빌드 후 AWS ECR 에 이미지 Push 및 ECR 보안 스캔 수행

### Nexus에 이미지 Push 및 Clain 보안 스캔 수행
- Nexus Docker Registry 설치 및 설정
- Nexus 대상 Docker 빌드 및 Push & Pull 테스트
- Clair 보안 취약점 스캔 연결 설정

### AWS ECR 에 이미지 Push 및 ECR 보안 스캔 수행
- AWS ECR Repository 보안 취약점 스캔 연결 설정
- ECR Repository 대상 Docker 빌드 및 Push 테스트
- 보안 취약점 스캔 수행 및 결과 확인

