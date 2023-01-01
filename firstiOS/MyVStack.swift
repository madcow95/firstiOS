//
//  MyVStack.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2022/12/31.
//

import SwiftUI

struct MyVStackView : View {
    
    // 데이터를 연동시키기 위해 Binding
    @Binding
    var isActivated : Bool
    
    // 생성자
    init(isActivated: Binding<Bool> =
        .constant(true)) {
        _isActivated = isActivated
    }
    
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
        .background(self.isActivated ? Color.yellow : Color.purple)
        .padding(self.isActivated ? 10 : 0)
    }
}

// Preview 보여주는 용도
struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
