# 알파카 프로젝트 🦙

Ruby로 작성된 간단한 알파카 클래스 프로젝트입니다.

## 프로젝트 소개

이 프로젝트는 알파카의 특성과 행동을 모델링하는 Ruby 클래스를 포함하고 있습니다. 알파카는 이름, 나이, 색상, 털 길이 등의 속성을 가지며, 먹이를 먹고 소리를 내는 등의 행동을 할 수 있습니다.

## 파일 구조

- `alpaca.rb` - 알파카 클래스의 메인 구현
- `alpaca_test.rb` - 코드 품질 검증을 위한 테스트 파일
- `alpaca.jpg` - 알파카 이미지

## Alpaca 클래스

### 속성

- `name` - 알파카의 이름
- `age` - 알파카의 나이
- `color` - 알파카의 색상
- `wool_length` - 알파카 털의 길이 (cm 단위)

### 메서드

- `initialize(name, age, color, wool_length)` - 새로운 알파카 객체를 생성합니다
- `feed(food)` - 알파카에게 먹이를 줍니다
- `make_sound` - 알파카가 소리를 냅니다
- `display_info` - 알파카의 정보를 표시합니다

## 사용 방법

```ruby
require_relative 'alpaca'

# 새로운 알파카 만들기
my_alpaca = Alpaca.new("플러피", 3, "흰색", 15)

# 알파카 정보 확인
puts my_alpaca.display_info
# 출력: Name: 플러피, Age: 3, Color: 흰색, Wool Length: 15 cm

# 알파카에게 먹이주기
puts my_alpaca.feed("건초")
# 출력: Alpaca 플러피 is eating 건초.

# 알파카 소리 듣기
puts my_alpaca.make_sound
# 출력: Alpaca 플러피 says 'Mmmm!'
```

## 테스트 실행

프로젝트에는 코드 품질을 검증하는 테스트가 포함되어 있습니다:

```bash
ruby alpaca_test.rb
```

이 테스트는 다음을 확인합니다:
- 코드에 `puts` 문이 없는지 확인
- 코드에 `binding.pry` 문이 없는지 확인

## 요구 사항

- Ruby (버전 2.0 이상 권장)

## 라이선스

이 프로젝트는 테스트 목적으로 만들어졌습니다.

## 기여

이슈나 풀 리퀘스트를 환영합니다!
