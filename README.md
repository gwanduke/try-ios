# Try iOS

> - [iOS Tutorial (2020): How To Make Your First App](https://youtu.be/09TeUXjzpKs)
> - ✅ [2021 SwiftUI Tutorial for Beginners (3.5 hour Masterclass)](https://youtu.be/F2ojC6TNwws)

![Workflow Overview](./images/readme/workflow-overview.png)

## 키워드

- 뷰&뷰컨트롤러
- Auto Layout: 여러 사이즈의 스크린에 적합하도록 만듬. 뷰에서의 엘리먼트의 사이즈와 포지션을 기술
  - 다른요소에 상대적으로 배치한다.
  - width가 얼마다가 아니라 어떤 뷰(예를들면 컨테이너) 기준으로 위치가 어디다 라고 정의한다.
    (예를들어 컨테이너 기준으로 left: 10, right: 10 이다 정도로 정의할 수 있다. 그럼 어느화면에서나 이렇게 보인다.)

## AutoLayout

- 기본적으로 absolute x, y 좌표계를 이용한다 (x, y, width, height)
- pt 단위를 사용한다. 이는 스크린 resolution에 따라 다르게 적용된다
  - 1pt = 1px @1x (10x10)
  - 1pt = 4px @2x (20x20)
  - 1pt = 9px @3x (30x30)

## 정보

- XCode13 부터는 info.plist 가 기본 제공되지 않는다. project 설정에서 값을 찾을 수 있다.

## View Update Lifecycle

![View Update Lifecycle](./images/readme/view-update-lifecycle.png)

## Swift

### Closure, Trailing Closure

## MVVM

![MVVM](./images/readme/mvvm.png)

## Projects

### War Challenge

![war-challenge](./projects/war-challenge/result.png)
