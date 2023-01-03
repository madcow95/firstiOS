//
//  ImageView.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2023/01/03.
//

import SwiftUI

struct NextPageView : View {
    var body : some View {
        // 간격 조정
        VStack {
            VStack(alignment: .center, spacing: 20) {
                
    //            Spacer()
                
                Text("HELLO WORLD")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                
                // 음.. 뭐라해야되지 해보고 그냥 외웁시다
                // 희미한 선이 생겨서 투명도 0으로
                //Divider()
                //    .opacity(0)
                
                // 화면을 전체 채움 frame 자동 적용 : default 화면 전체
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color.red)
                // Spacer는 사이에도 사용가능
                Spacer()
                    .frame(height: 10)
                
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color.yellow)
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color.green)
                
    //            Spacer()
            }
            .frame(width: 300)
            .padding(20)
            .background(Color.black)
    //        .edgesIgnoringSafeArea(.all)
            HStack(alignment: .bottom) {
//                Rectangle()
//                    .foregroundColor(Color.red)
//                    .frame(width: 80, height: 80)
                Image(systemName: "flame.fill")
                    .foregroundColor(.red)
                    .font(.system(size: 80))
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 80, height: 80)
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 80, height: 80)
            }
            .padding(20)
            .background(Color.yellow)
            
            ZStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.red)
                    .zIndex(3)
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color.yellow)
                    .zIndex(2)
                Rectangle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(Color.green)
                    .zIndex(1)
            }
            .padding(30)
//            .background(Color.green)
        }
    }
}

struct NextPageView_Previews: PreviewProvider {
    static var previews: some View {
        NextPageView()
    }
}
