//
//  Theme+Colors.swift
//  ThemeDemo
//
//  Created by Stephan Heilner on 4/26/17.
//  Copyright © 2017 Hilton Campbell. All rights reserved.
//

import Foundation
import Theme

struct Theme: ThemeProtocol {
    
    static var tintColor: UIColor?
    static var tableViewCellTextColor: UIColor?
    static var tableViewCellBackgroundColor: UIColor?
    static var tableViewCellSelectedBackgroundColor: UIColor?
    static var tableViewSeparatorColor: UIColor?
    static var tableViewBackgroundColor: UIColor?
    static var navigationBarBarStyle: String?
    
    static func themeDefault() {
        tintColor = UIColor(string: "#f00")
        tableViewCellTextColor = UIColor(string: "#000")
        tableViewCellBackgroundColor = UIColor(string: "#fff")
        tableViewCellSelectedBackgroundColor = UIColor(string: "#d9d9d9")
        tableViewSeparatorColor = UIColor(string: "#c8c7cc")
        tableViewBackgroundColor = UIColor(string: "#efeff4")
        navigationBarBarStyle = nil
    }
    
    static func themeNight() {
        themeDefault()
        
        tintColor = UIColor(string: "#00b57c")
        tableViewCellTextColor = UIColor(string: "#fff")
        tableViewCellBackgroundColor = UIColor(string: "#000")
        tableViewCellSelectedBackgroundColor = UIColor(string: "#363636")
        tableViewSeparatorColor = UIColor(string: "#3d3d3d")
        tableViewBackgroundColor = UIColor(string: "#141414")
        navigationBarBarStyle = "black"
    }
    
    static func themeSepia() {
        themeDefault()
        
        tableViewCellBackgroundColor = UIColor(string: "#f8f1e4")
        tableViewCellSelectedBackgroundColor = UIColor(string: "#D9C6A2")
        tableViewSeparatorColor = UIColor(string: "#d0bd9b")
        tableViewBackgroundColor = UIColor(string: "#f3e7d0")
    }
    
    static func setTheme(with themeName: String) -> (() -> (Void))? {
        switch themeName {
        case "night":
            return Theme.themeNight
        case "sepia":
            return Theme.themeSepia
        default:
            return Theme.themeDefault
        }
    }
    
}
