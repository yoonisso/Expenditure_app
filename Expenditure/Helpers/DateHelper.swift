//
//  DateHelper.swift
//  Expenditure
//
//  Created by Yoonis on 19.12.23.
//

import Foundation

public class DateHelper {
    public static func convertDateToString(inputDate: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: inputDate)
    }
}
