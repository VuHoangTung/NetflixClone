//
//  Extentions.swift
//  Netflix Clone
//
//  Created by Vũ Hoàng Tùng on 31/5/25.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
