//
//  MyTextView.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2023/01/01.
//

import SwiftUI

struct MyTextView : View {
    
    @State
    private var index : Int = 0
    
    // 데이터를 연동시키기 위해 Binding
    @Binding
    var isActivated : Bool
    
    // 생성자
    init(isActivated: Binding<Bool> =
        .constant(true)) {
        _isActivated = isActivated
    }
    
    private let ColorArr = [
        Color.pink,
        Color.blue,
        Color.green
    ]
    var body : some View {
        VStack {
            Spacer()
            
            Text( "배경 색 index >> \(index)" )
                .font(.system(size : 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태 >> \(String(isActivated))")
                .font(.system(size : 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
            
            Spacer()
            
        } // VStack end
        .background(ColorArr[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            
            if index == ColorArr.count - 1 {
                index = 0
                return
            }
            
            index += 1
        }
    } // View end
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
