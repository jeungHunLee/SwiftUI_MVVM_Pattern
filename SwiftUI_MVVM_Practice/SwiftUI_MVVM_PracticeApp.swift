//
//  SwiftUI_MVVM_PracticeApp.swift
//  SwiftUI_MVVM_Practice
//
//  Created by 이정훈 on 12/13/23.
//

import SwiftUI

@main
struct SwiftUI_MVVM_PracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView<ContentViewModel>(contentViewModel: ContentViewModel())
        }
    }
}
