//
//  ResultButtonView.swift
//  safedrive
//
//  Created by 澤木柊斗 on 2023/09/27.
//

import SwiftUI

struct ResultButtonView: View {
    var body: some View {
        VStack{
            Image(systemName: "list.bullet.clipboard")
                .resizable()
                .scaledToFit()
                .frame(width: 44)
                .padding(EdgeInsets(
                    top: 12,
                    leading: 22,
                    bottom: 12,
                    trailing: 22
                ))
                .background(Color.green)
                .cornerRadius(50)

            Text("記録")
                .fontWeight(.black)
                .font(.title3)
        }
            }
}

struct ResultButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ResultButtonView()
    }
}
