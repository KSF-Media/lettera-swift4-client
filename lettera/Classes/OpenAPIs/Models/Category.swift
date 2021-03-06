//
// Category.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct Category: Codable {

    public enum ModelType: String, Codable {
        case feed = "feed"
        case webview = "webview"
        case link = "link"
    }
    public var id: String
    public var label: String
    public var type: ModelType
    public var url: String?
    public var subcategories: [Category]?

    public init(id: String, label: String, type: ModelType, url: String?, subcategories: [Category]?) {
        self.id = id
        self.label = label
        self.type = type
        self.url = url
        self.subcategories = subcategories
    }


}

