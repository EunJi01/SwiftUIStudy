//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by 황은지 on 2023/02/14.
//

import Foundation

final class StockRankViewModel: ObservableObject { // single source of truth를 위해, ObservableObject 프로토콜 채택
    @Published var models: [StockModel] = StockModel.list
    // Published가 붙은 프로퍼티의 값이 변경 될 때마다 참조중인 곳에서 반응 (view를 다시 그린다든지)
    
    var numberOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
