//
//  CircleImageView.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2023/01/03.
//

import SwiftUI

struct CircleImageView : View {
    var body : some View {
        // SF Symbol설치로 아이콘들 사용 가능
//        Image(systemName: "pencil.circle")
//            .font(.system(size: 150))
//            .foregroundColor(.green)
//            .shadow(color: .gray, radius: 2, x: 2, y: 5)
        Image("TreeImage")
            // 이미지가 화면에 짤리지 않고 나오게
            .resizable()
            // aspectRatio와 같음 화면이 비율에 맞게 나오게 조절
            .scaledToFill()
            // 화면이 비율에 맞게 나오게 조절
            // .aspectRatio(contentMode: .fill)
            // width, height에 맞게 사진을 자름
            .frame(width: 200, height: 200)
            // 자른 사진의 모양을 지정
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            // 경계선
            .overlay(Circle()
                // overlay의 색을 채움
                .foregroundColor(.black)
                // 투명도
                .opacity(0.3)
            )
            .overlay(Circle().stroke(Color.red, lineWidth: 10)
                .padding(10)
            )
            .overlay(Circle().stroke(Color.yellow, lineWidth: 10)
                .padding(30)
            )
            .overlay(Circle().stroke(Color.blue, lineWidth: 10)
                .padding(0)
            )
            .overlay(
                Text("Image View")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
            )
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
