//
//  TextView.swift
//  SwiftUI-Basic
//
//  Created by 황은지 on 2023/02/12.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        HStack {
            Text("SwiftUI")
                .font(.system(size: 40, weight: .bold, design: .default))
            //Spacer() // 빈 공간을 채워 넣는 용도?
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
