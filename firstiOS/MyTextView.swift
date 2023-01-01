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
    
    private let ColorArr = [
        Color.pink,
        Color.blue,
        Color.green
    ]
    var body : some View {
        VStack {
            Spacer()
            
            Text( "배경 테스트" )
                .font(.system(size : 50))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: .infinity)
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
