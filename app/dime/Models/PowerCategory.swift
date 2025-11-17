//
//  PowerCategory.swift
//  Bonsai
//
//  Created by Rafael Soh on 6/6/22.
//

import Foundation
import SwiftUI

struct PowerCategory: Hashable, Identifiable {
    let id: UUID
    let category: Category
    let percent: Double
    let amount: Double
}

struct SuggestedCategory: Hashable {
    let name: String
    let emoji: String

    static var expenses: [SuggestedCategory] {
        // Use Indian categories from IndianCategories.swift
        return IndianCategories.expenseCategories.map { template in
            SuggestedCategory(name: template.name, emoji: template.emoji)
        }
    }

    static var incomes: [SuggestedCategory] {
        // Use Indian categories from IndianCategories.swift
        return IndianCategories.incomeCategories.map { template in
            SuggestedCategory(name: template.name, emoji: template.emoji)
        }
    }
}
