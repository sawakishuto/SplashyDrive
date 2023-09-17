//
//  CupView.swift
//  SafeDriving
//
//  Created by 中川真一 on 2023/09/16.
//

import SwiftUI
import CoreMotion


struct CupView: View {
    let motionManager = CMMotionManager()

    @State var yStr: Double
    enum Pattern {
        case safe
        case out

        var ChangeImage: Image {
            switch self {
            case .safe: return Image("medicine_cup_water")
            case .out: return Image("water_hyoumenchouryoku3")
            }
        }
        var ChangeState: String {
            switch self {
            case .safe: return "安全運転なう"

            case .out: return "ちょっと荒いんじゃない！？"
            }
        }
    }
    var state: Pattern {
        if yStr > -0.2 {
            print("Y")
            return .safe
        } else {
            print("N")
            return .out
        }
    }
    var body: some View {
        VStack{
            Text(state.ChangeState)
                .font(.system(size: 50, weight: .black, design: .default))
                .foregroundColor(self.yStr > -0.2 ? .black: .red)
            state.ChangeImage
                .resizable()
                .scaledToFit()
                .frame(height: 400)
        }
    }
}

struct CupView_Previews: PreviewProvider {
    static var previews: some View {
        CupView( yStr: 0.0)
    }
}
