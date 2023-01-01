//
//  ContentView.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2022/12/31.
//

import SwiftUI

struct ContentView: View {
    
    // isActivated의 값이 변화가 되면 자동으로 렌더링
    // @State 값의 변화를 감지 -> View에 적용
    // React의 useState와 비슷한듯
    @State
    private var isActivated : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVStackView()
                }
                .padding( isActivated ? 50 : 10 )
                .background( isActivated ? Color.red : Color.blue )
                .onTapGesture {
                    // 애니메이션과 함께
                    withAnimation{
                        // isActivated가 true 이면 false로, false면 true로 자동 변환
                        self.isActivated.toggle()
                    } // withAnimation end
                } // onTapGesture end
                
                NavigationLink(destination: MyTextView()) {
                    Text("네비게이션")
                }
                .padding(.top, 50)
            }
        } // NavigationView end
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
