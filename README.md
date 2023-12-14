# SwiftUI MVVM Pattern

<img width="1086" alt="MVVM" src="https://github.com/jeungHunLee/SwiftUI_MVVM_Pattern/assets/103043741/af8d9cad-f3e9-4ee4-a4d8-67b3b89b85c7"> <br>

## Directory
```
└── SwiftUI_MVVM_Practice
   ├── Model
   │   └── Person.swift
   ├── SwiftUI_MVVM_PracticeApp.swift
   ├── View
   │   └── ContentView.swift
   └── ViewModel
       ├── ContentViewModel.swift
       └── ViewModel.swift
```

## ViewModel Protocol
`ViewModel` procotol adopts the `ObservableObject` protocol  

```swift
protocol ViewModel: ObservableObject {
    var person: Person { get }
    
    func addAge()
    
    func subAge()
}
```

## ViewModel
**ViewModel** conforms to the `ViewModel` protocol

```swift
final class ContentViewModel: ViewModel {
    @Published var person: Person = Person(name: "홍길동", age: 99)
    
    func addAge() {
        //something todo
    }
    
    func subAge() {
       //something todo
    }
}
```

## View
Data Binding of `ContentViewModel` data and View <br><br>
View can be rerendered according to the data change of the ViewModel
```swift
import SwiftUI

struct ContentView<VM>: View where VM: ViewModel {
    @ObservedObject var contentViewModel: VM
    
    var body: some View {
        ...
    }
}
```

## Dependancy Injection
`contentViewModel` instance is injected into the ContentView initializer

```swift
@main
struct SwiftUI_MVVM_PracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView<ContentViewModel>(contentViewModel: ContentViewModel())
        }
    }
}
```
