//
//  ContentView.swift
//  firstiOS
//
//  Created by ChoiKwangWoo on 2022/12/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            MyVStackView()
        }
        .padding(15)
        .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
