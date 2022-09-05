//
//  Tab.swift
//  Custom-Tabbar
//
//  Created by Ali Almatrafi on 05/09/2022.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems = [
    TabItem(text: "الرئيسية", icon: "house", tab: .home, color: .teal),
    TabItem(text: "المفضلة", icon: "suit.heart.fill", tab: .explore, color: .teal),
    TabItem(text: "اشعارات", icon: "bell", tab: .notifications, color: .teal),
    TabItem(text: "المزيد", icon: "person", tab: .library, color: .teal)
]

enum Tab: String {
    case home
    case explore
    case notifications
    case library
}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
