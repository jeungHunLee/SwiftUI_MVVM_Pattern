//
//  ContentView.swift
//  SwiftUI_MVVM_Practice
//
//  Created by 이정훈 on 12/13/23.
//

import SwiftUI

struct ContentView<VM>: View where VM: ViewModel {
    @ObservedObject var contentViewModel: VM
    
    var body: some View {
        VStack(spacing: 20) {
            Text("이름: \(contentViewModel.person.name)")
            
            Text("나이: \(contentViewModel.person.age)")
            
            HStack(spacing: 20) {
                Button(action: {
                    contentViewModel.addAge()
                }, label: {
                    Text("더하기")
                })
                
                Button(action: {
                    contentViewModel.subAge()
                }, label: {
                    Text("빼기")
                })
            }
        }
    }
}

#Preview {
    ContentView<ContentViewModel>(contentViewModel: ContentViewModel())
}
