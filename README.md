# 🗓️ Schedule Manager

**Schedule Manager**는 콘솔 기반의 간단한 일정 관리 프로그램입니다.  
사용자는 **일정 추가**, **일정 조회**, **일정 완료 처리** 등의 기능을 통해  
MySQL 데이터베이스에 저장된 일정을 손쉽게 관리할 수 있습니다.

---

## 📦 프로젝트 구조

📁 project_root<br>
├── schedule_manager.py # 메인 프로그램 (일정 관리 로직)<br>
├── setup.py # 패키지 설정 파일<br>
└── README.md # 프로젝트 설명 파일<br>

yaml
코드 복사

---

## ⚙️ 주요 기능

| 기능 | 설명 |
|------|------|
| 📝 일정 추가 | 제목, 설명, 시작/종료 시간을 입력받아 DB에 저장 |
| 📅 일정 보기 | 등록된 일정 목록을 조회 및 출력 |
| ✅ 일정 완료 | 특정 일정의 완료 상태를 변경 |
| 🚪 종료 | 프로그램 종료 |

---

## 🧰 사용 기술

- **Python 3.8+**
- **MySQL (pymysql)**
- **setuptools**

---

## 💾 데이터베이스 설정

**1️⃣ 데이터베이스 생성**
```sql
CREATE DATABASE schedule_db;
USE schedule_db;

CREATE TABLE schedules (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    start_datetime VARCHAR(14),
    end_datetime VARCHAR(14),
    is_completed BOOLEAN DEFAULT FALSE
);
```
2️⃣ 접속 정보 (기본값)
localhost:3307, user=root, password=1234, database=schedule_db

⚠️ 필요 시 schedule_manager.py 내 get_db_connection() 함수를 수정하세요.

🚀 설치 및 실행 방법
1️⃣ 패키지 설치
bash
코드 복사
pip install .
2️⃣ 콘솔 명령어로 실행
설치 후 아래 명령어로 바로 실행할 수 있습니다:

bash
코드 복사
myschedule
또는 직접 실행하려면:

bash
코드 복사
python schedule_manager.py
🧭 메뉴 구성
번호	동작	설명
1	일정 추가	일정 정보를 입력받아 DB에 저장
2	일정 보기	등록된 모든 일정 출력
3	일정 완료	특정 ID의 일정을 완료 처리
4	종료	프로그램 종료

🧩 setup.py 주요 설정
python
코드 복사
entry_points={
    "console_scripts": [
        "myschedule=schedule_manager:main"
        ]
}
이 설정 덕분에 myschedule 명령어로 프로그램을 직접 실행할 수 있습니다.

🧑‍💻 기여 방법
이 레포지토리를 포크(Fork)합니다.

새로운 브랜치를 생성합니다. (feature/my-feature)

수정 후 커밋합니다. (git commit -m 'Add new feature')

푸시 후 Pull Request를 생성합니다.

⚠️ 주의사항
일부 함수(add_schedule, get_schedules, complete_schedule)에는
raise NotImplementedError("함수 미구현")이 포함되어 있습니다.
실제 실행 전, 해당 부분을 구현해야 오류 없이 작동합니다.

데이터베이스 연결 정보는 환경에 맞게 변경하세요.

📜 라이선스
이 프로젝트는 MIT 라이선스를 따릅니다.
자유롭게 수정 및 배포 가능합니다.

👤 작성자
Author: YangMinseok
📧 이메일: minseokgyang@gmail.com
