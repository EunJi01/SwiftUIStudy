//
//  ThirdView.swift
//  EnvironmentObjTest
//
//  Created by 황은지 on 2023/02/15.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var userProfile: UserProfileSettings
    // EnvironmentObject: 어디선가 데이터를 꽂아주겠지? 라고 기대하며 쓰면 됨(?)
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Current Age: \(userProfile.age)")
            
            NavigationLink {
                
            } label: {
                Text("Third View")
            }

            Button {
                userProfile.haveBirthDayParty()
            } label: {
                Text("Having Birthday Party")
            }
        }
        .navigationTitle("Third View")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView().environmentObject(UserProfileSettings())
    }
}
