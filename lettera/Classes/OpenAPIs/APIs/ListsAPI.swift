//
// ListsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class ListsAPI {
    /**
     * enum for parameter paper
     */
    public enum Paper_frontpageGet: String {
        case hbl = "hbl"
        case ht = "ht"
        case vn = "vn"
        case on = "on"
    }

    /**
     Returns a list for a front page
     
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func frontpageGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_frontpageGet? = nil, completion: @escaping ((_ data: [ListArticle]?,_ error: Error?) -> Void)) {
        frontpageGetWithRequestBuilder(start: start, limit: limit, category: category, paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list for a front page
     - GET /frontpage
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<[ListArticle]> 
     */
    open class func frontpageGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_frontpageGet? = nil) -> RequestBuilder<[ListArticle]> {
        let path = "/frontpage"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "category": category, 
            "paper": paper?.rawValue
        ])

        let requestBuilder: RequestBuilder<[ListArticle]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter paper
     */
    public enum Paper_latestGet: String {
        case hbl = "hbl"
        case ht = "ht"
        case vn = "vn"
        case on = "on"
    }

    /**
     Returns a list of latest articles
     
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func latestGet(start: Int? = nil, limit: Int? = nil, paper: Paper_latestGet? = nil, completion: @escaping ((_ data: [ListArticle]?,_ error: Error?) -> Void)) {
        latestGetWithRequestBuilder(start: start, limit: limit, paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of latest articles
     - GET /latest
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<[ListArticle]> 
     */
    open class func latestGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, paper: Paper_latestGet? = nil) -> RequestBuilder<[ListArticle]> {
        let path = "/latest"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "paper": paper?.rawValue
        ])

        let requestBuilder: RequestBuilder<[ListArticle]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter paper
     */
    public enum Paper_mostreadGet: String {
        case hbl = "hbl"
        case ht = "ht"
        case vn = "vn"
        case on = "on"
    }

    /**
     Returns a list of most read articles
     
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mostreadGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_mostreadGet? = nil, completion: @escaping ((_ data: [ListArticle]?,_ error: Error?) -> Void)) {
        mostreadGetWithRequestBuilder(start: start, limit: limit, category: category, paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of most read articles
     - GET /mostread
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<[ListArticle]> 
     */
    open class func mostreadGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_mostreadGet? = nil) -> RequestBuilder<[ListArticle]> {
        let path = "/mostread"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "category": category, 
            "paper": paper?.rawValue
        ])

        let requestBuilder: RequestBuilder<[ListArticle]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter paper
     */
    public enum Paper_searchGet: String {
        case hbl = "hbl"
        case ht = "ht"
        case vn = "vn"
        case on = "on"
    }

    /**
     Returns a list of search results
     
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter contentQuery: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchGet(start: Int? = nil, limit: Int? = nil, paper: Paper_searchGet? = nil, contentQuery: String? = nil, completion: @escaping ((_ data: [ListArticle]?,_ error: Error?) -> Void)) {
        searchGetWithRequestBuilder(start: start, limit: limit, paper: paper, contentQuery: contentQuery).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of search results
     - GET /search
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter contentQuery: (query)  (optional)
     - returns: RequestBuilder<[ListArticle]> 
     */
    open class func searchGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, paper: Paper_searchGet? = nil, contentQuery: String? = nil) -> RequestBuilder<[ListArticle]> {
        let path = "/search"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "paper": paper?.rawValue, 
            "contentQuery": contentQuery
        ])

        let requestBuilder: RequestBuilder<[ListArticle]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
