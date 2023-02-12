//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by 황은지 on 2023/02/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { // 세로
            ImageView()
            ButtonView()
            TextView()
            
            Spacer()
            
            HStack { // 가로
                ImageView()
                ButtonView()
                TextView()
            }
            
            ZStack { // 겹치기
                ImageView()
                ButtonView()
                TextView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
