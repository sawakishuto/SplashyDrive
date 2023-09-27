//
//  ResultList.swift
//  safedrive
//
//  Created by 澤木柊斗 on 2023/09/27.
//

import SwiftUI

struct ResultList: View {
    @Environment(\.presentationMode) var presentation
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
         entity: ResultModel.entity(),
         sortDescriptors: [NSSortDescriptor(key: "date", ascending: false)],
         animation: .default
     ) var ResultList: FetchedResults<ResultModel>
    var body: some View {
        VStack{
            ForEach(ResultList) { result in
                //            Text(result.stringUpdatedAt)
                VStack{
                    Text("あなたの記録")
                    Text("0000/00/00")
                    Text(String(result.largeTime))
                    Text(String(result.smallTime))
                    Text(String(result.score))
                }
            }
        }
        Button{
            presentation.wrappedValue.dismiss()
        } label: {
            Text("閉じる")
        }

    }
}

struct ResultList_Previews: PreviewProvider {
    static var previews: some View {
        ResultList()
    }
}
