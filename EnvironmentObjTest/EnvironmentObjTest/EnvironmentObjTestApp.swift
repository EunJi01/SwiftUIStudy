//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by joonwon lee on 2022/06/12.
//

import SwiftUI

// 해당 파일은 가장 먼저 실행되는 파일로, AppDelegate 라고 생각하면 편함
@main
struct EnvironmentObjTestApp: App {
    @StateObject var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            // 모델 구성까지는 일반적인 ObservableObject 처럼 만들되, 여기서 environmentObject로 데이터 꽂아주기
            FirstView().environmentObject(userProfile)
        }
    }
}
