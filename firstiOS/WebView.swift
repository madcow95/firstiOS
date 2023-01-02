//
//  MyWebView.swift
//  WebView
//
//  Created by ChoiKwangWoo on 2023/01/02.
//

import SwiftUI
import WebKit

// UIKit의 UIView를 사용할 수 있도록 한다.
// UIViewControllerRepresentable
struct MyWebView : UIViewRepresentable {
    
    var urlToLoad: String
    
    // UI View 만들기
    func makeUIView(context: Context) -> some WKWebView {
        // unwrapping
        guard let url = URL(string : self.urlToLoad) else {
            return WKWebView()
        }
        
        // WebView instance 생성
        let webView = WKWebView()
        
        // WebView를 로드한다.
        webView.load(URLRequest(url: url))
        
        return webView
    }
    // Update UI View
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}
