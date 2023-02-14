//
//  StockDetailView.swift
//  StockRank-SwiftUI
//
//  Created by 황은지 on 2023/02/13.
//

import SwiftUI

struct StockDetailView: View {
    @ObservedObject var vm: StockRankViewModel
    @Binding var stock: StockModel
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            Text("# of My Favorites: \(vm.numberOfFavorites)")
                .font(.system(size: 20, weight: .bold))
            
            Image(stock.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
            
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(stock.diff > 0 ? .red : .blue)
            
            Button {
                stock.isFavorite.toggle()
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 80, height: 80)
                    .foregroundColor(stock.isFavorite ? .white : .gray)
            }

            Spacer()
        }
    }
}

struct StockDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailView(vm: StockRankViewModel(), stock:.constant(StockModel.list[0]))
        // constant를 이용해 임의의 데이터 설정
            .preferredColorScheme(.dark)
    }
}
