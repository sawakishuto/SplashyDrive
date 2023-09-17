//
//  HomeView.swift
//  safedrive
//
//  Created by 澤木柊斗 on 2023/09/17.
//

import SwiftUI

enum ContentState {
    case title, main, result
}

struct HomeView: View {
    @State var state: ContentState = .main
    var body: some View {
        NavigationStack {
            switch state {
            case .title:
                TitlePage()
            case .main:
                ContentView(state: .constant(.main))
            case .result:
                Result(, extime: <#Double#>)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
