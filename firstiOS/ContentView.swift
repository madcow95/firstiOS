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
                CircleImageView()
                    .padding(.top, 10)
                HStack {
                    NavigationLink(destination: MyWebView(urlToLoad: "https://www.youtube.com")
                                        .edgesIgnoringSafeArea(.all)) {
                        Text("유튜브 보러가자")
                            .fontWeight(.bold)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://open.kakao.com/o/gxOOKJec")
                                        .edgesIgnoringSafeArea(.all)) {
                        Text("오픈 채팅방")
                            .fontWeight(.bold)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                }
                .padding(10)
                
                HStack {
                    MyVStackView(isActivated: $isActivated)
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
                
                VStack {
                    NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                        Text("네비게이션")
                            .padding(.vertical,10)
                    }
                    NavigationLink(destination: MyTextTestView()) {
                        Text("Text 꾸미기 페이지")
                    }
                    NavigationLink(destination: NextPageView()) {
                        Text("다음 페이지로")
                    }
                }
                
                HStack {
                    NavigationLink(destination:MyWebView(urlToLoad: "https://www.naver.com")
                                    .edgesIgnoringSafeArea(.all)) {
                        Text("네이버")
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:MyWebView(urlToLoad: "https://www.google.com")
                                    .edgesIgnoringSafeArea(.all)) {
                        Text("구글")
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:
                                    MyWebView(urlToLoad: "https://www.daum.net")
                                    .edgesIgnoringSafeArea(.all)) {
                        Text("다음")
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                }
                .padding(.top, 20)
            }
        } // NavigationView end
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
