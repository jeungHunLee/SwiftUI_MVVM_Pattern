//
//  ViewModel.swift
//  SwiftUI_MVVM_Practice
//
//  Created by 이정훈 on 12/13/23.
//

import Foundation

protocol ViewModel: ObservableObject {
    var person: Person { get }
    
    func addAge()
    
    func subAge()
}
