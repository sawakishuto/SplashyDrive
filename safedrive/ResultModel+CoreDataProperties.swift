//
//  ResultModel+CoreDataProperties.swift
//  safedrive
//
//  Created by 澤木柊斗 on 2023/09/27.
//
//

import Foundation
import CoreData


extension ResultModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ResultModel> {
        return NSFetchRequest<ResultModel>(entityName: "ResultModel")
    }

    @NSManaged public var score: Double
    @NSManaged public var date: Date?
    @NSManaged public var largeTime: Double
    @NSManaged public var smallTime: Double

}

extension ResultModel : Identifiable {
    public var stringUpdatedAt: String { dateFomatter(date: date ?? Date()) }

    func dateFomatter(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tokyo")

        return dateFormatter.string(from: date)
    }
}
