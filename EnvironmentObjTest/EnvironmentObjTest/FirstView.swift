//
//  ContentView.swift
//  EnvironmentObjTest
//
//  Created by joonwon lee on 2022/06/12.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var userProfile: UserProfileSettings
    // EnvironmentObjTestApp에서 꽂아주는 데이터 담을 변수
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Current Age: \(userProfile.age)")
                
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Second View")
                }

                Button {
                    userProfile.haveBirthDayParty()
                } label: {
                    Text("Having Birthday Party")
                }
            }
            .navigationTitle("First View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView().environmentObject(UserProfileSettings())
        // 여기서 environmentObject 설정 안해주면 resume할 때 무한 에러...
    }
}
