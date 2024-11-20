# SwiftUI + UIKit

Связывание SwiftUI с кодом UIKit через механизм, который называется UIViewRepresentable.

Cценарии применения: 
1. нехватка в SwiftUI какого-либо функционала, который был в UIKit. Вероятность этого тем выше, чем старше версия SwiftUI, которую используют в проекте. Конечно, в этом случае нам хотелось бы позаимствовать из UIKit недостающие части.
2. компания решила перейти на SwiftUI, но у неё есть накопленная кодовая база, написанная на UIKit. Чем этого кода больше, тем сложнее переписать его в сжатые сроки, и руководство проекта может решить переиспользовать существующий код.
3. сторонние библиотеки, которые были написаны на UIKit и не имеют аналога на SwiftUI.

Документация: https://developer.apple.com/documentation/swiftui/uiviewrepresentable

Обучающие материалы от Apple: https://developer.apple.com/tutorials/swiftui/interfacing-with-uikit
