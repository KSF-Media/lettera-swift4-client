//
// ListArticle.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct ListArticle: Codable {

    public var uuid: UUID
    public var title: String
    public var authors: [Author]
    public var tags: [String]
    public var preamble: String?
    public var listImage: ImageInfo?
    public var premium: Bool
    public var publishingTime: String
    public var updateTime: String?
    public var relatedArticles: [RelatedArticle]
    public var articleType: ArticleType
    public var articleTypeDetails: ArticleTypeDetails?
    public var paper: Paper
    public var shareUrl: String?

    public init(uuid: UUID, title: String, authors: [Author], tags: [String], preamble: String?, listImage: ImageInfo?, premium: Bool, publishingTime: String, updateTime: String?, relatedArticles: [RelatedArticle], articleType: ArticleType, articleTypeDetails: ArticleTypeDetails?, paper: Paper, shareUrl: String?) {
        self.uuid = uuid
        self.title = title
        self.authors = authors
        self.tags = tags
        self.preamble = preamble
        self.listImage = listImage
        self.premium = premium
        self.publishingTime = publishingTime
        self.updateTime = updateTime
        self.relatedArticles = relatedArticles
        self.articleType = articleType
        self.articleTypeDetails = articleTypeDetails
        self.paper = paper
        self.shareUrl = shareUrl
    }


}

