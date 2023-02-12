//
//  ImageView.swift
//  SwiftUI-Basic
//
//  Created by 황은지 on 2023/02/12.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image(systemName: "sun.max.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
        // Image -> img md Image -> img md Image -> view md View
        // MARK: 주의!! modifier의 순서에 따라 에러가 발생할 수 있음 (반환 타입이 다르기 때문)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
