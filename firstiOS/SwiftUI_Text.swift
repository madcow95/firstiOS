//
//  SwiftUI_Text.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2023/01/02.
//

import SwiftUI

struct MyTextTestView : View {
    
    static let dateFormat : DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        formatter.dateStyle = .long
        return formatter
    }()
    var today = Date()
    var trueOrFalse : Bool = false
    
    var body : some View {
        VStack {
            Text("Hello Text Hello Text Hello Text Hello Text Hello Text Hello Text Hello TextHello Text Hello Text Hello Text Hello Text Hello Text Hello Text Hello TextHello Text Hello Text Hello Text Hello Text Hello Text Hello Text Hello TextHello Text Hello Text Hello Text Hello Text Hello Text Hello Text Hello TextHello Text Hello Text Hello Text Hello Text Hello Text Hello Text Hello TextHello Text Hello Text Hello Text Hello Text Hello Text Hello Text Hello TextHello Text Hello Text Hello Text Hello Text Hello Text Hello Text Hello")
                // 폰트 크기
                .font(.system(.body, design: .rounded))
                // 폰트 굵기
                .fontWeight(.medium)
                // 정렬
                .multilineTextAlignment(.center)
                // 줄 간격
                .lineSpacing(5)
                // 글자 잘리는 부분 머리, 중간, 꼬리로 ... 조절 가능
                .truncationMode(.tail)
                // 글자 사이 간격
                .tracking(0)
                
                // 그림자
                .shadow(color: Color.black, radius: 2, x:5, y: 2)
                // 배경 색
                .background(Color.green)
                // 간격
                .padding(20)
                // 모서리 둥글게
                .cornerRadius(10)
            
                .padding(10)
                .background(Color.blue)
                .cornerRadius(10)
            
            Text("HELLO")
                .background(Color.gray)
                .padding(.bottom, 10)
            
            Text("오늘의 날짜 : \(today, formatter: MyTextTestView.dateFormat)")
                .padding(.bottom, 5)
            
            Text("True Or False >>>> \(String(trueOrFalse))")
            
        }
    }
}

struct MyTextTestView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextTestView()
    }
}
