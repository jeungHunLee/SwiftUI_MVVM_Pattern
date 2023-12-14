//
//  ContentViewModel.swift
//  SwiftUI_MVVM_Practice
//
//  Created by 이정훈 on 12/13/23.
//

import Foundation

final class ContentViewModel: ViewModel {
    @Published var person: Person = Person(name: "홍길동", age: 99)
    
    func addAge() {
        person.age += 1
    }
    
    func subAge() {
        person.age -= 1
    }
}
