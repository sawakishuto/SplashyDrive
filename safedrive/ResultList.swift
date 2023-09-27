//
//  ResultList.swift
//  safedrive
//
//  Created by 澤木柊斗 on 2023/09/27.
//

import SwiftUI

struct ResultList: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
         entity: ResultModel.entity(),
         sortDescriptors: [NSSortDescriptor(key: "date", ascending: false)],
         animation: .default
     ) var ResultList: FetchedResults<ResultModel>
    var body: some View {
        ForEach(ResultList) { result in
            Text(result.stringUpdatedAt)
        }
    }
}

struct ResultList_Previews: PreviewProvider {
    static var previews: some View {
        ResultList()
    }
}
