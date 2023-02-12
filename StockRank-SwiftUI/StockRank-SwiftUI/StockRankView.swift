//
//  ContentView.swift
//  StockRank-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct StockRankView: View {
    
    @State var list = StockModel.list
    
    var body: some View {
//        ScrollView { // 데이터가 많지 않고, 동적일 경우에는 이렇게 해도 문제는 없다.
//            ForEach(list, id: \.self) { stock in
//                StockRankRow(stock: stock)
//                    .frame(height: 80)
//            }
//        }
        
        // Model이 Identifiable 프로토콜을 준수할 경우 id: \.self 생략 가능
        List(list) { item in
            StockRankRow(stock: item)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                .frame(height: 80)
        }
        .listStyle(.plain)
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
    }
}
