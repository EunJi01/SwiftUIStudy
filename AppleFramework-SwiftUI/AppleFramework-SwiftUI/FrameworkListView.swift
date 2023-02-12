//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct FrameworkListView: View {
    @State var list: [AppleFramework] = AppleFramework.list
    
    let layout: [GridItem] = [
        // fixed: 고정된 크기
        // flexible: 갯수에 맞게 꽉 채우기
        // adaptive: 기준(minimum)에 따라 유연하게 채우기
        
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        // Grid 만들기
        // UIKit: UICollectionView
        // SwiftUI: LazyVGrid, LazyHGrid
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(list) { item in
                        FrameworkCell(framework: item)
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
