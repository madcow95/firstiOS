//
//  MyVStack.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2022/12/31.
//

import SwiftUI

struct MyVStackView : View {
    var body : some View {
        HStack {
            Text("1!")
                .padding(5)
                .background(Color.green)
            Text("2!")
                .padding(5)
                .background(Color.green)
            Text("3!")
                .padding(5)
                .background(Color.green)
        }
        .background(Color.yellow)
    }
}

// Preview 보여주는 용도
struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
