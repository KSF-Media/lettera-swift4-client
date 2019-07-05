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
     Returns a list for a front page
     
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func frontpageGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, completion: @escaping ((_ data: [ListArticle]?,_ error: Error?) -> Void)) {
        frontpageGetWithRequestBuilder(start: start, limit: limit, category: category).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list for a front page
     - GET /frontpage
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - returns: RequestBuilder<[ListArticle]> 
     */
    open class func frontpageGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, category: String? = nil) -> RequestBuilder<[ListArticle]> {
        let path = "/frontpage"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "category": category
        ])

        let requestBuilder: RequestBuilder<[ListArticle]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a list of latest articles
     
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func latestGet(start: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [ListArticle]?,_ error: Error?) -> Void)) {
        latestGetWithRequestBuilder(start: start, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of latest articles
     - GET /latest
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - returns: RequestBuilder<[ListArticle]> 
     */
    open class func latestGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil) -> RequestBuilder<[ListArticle]> {
        let path = "/latest"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[ListArticle]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a list of most read articles
     
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mostreadGet(start: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [ListArticle]?,_ error: Error?) -> Void)) {
        mostreadGetWithRequestBuilder(start: start, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of most read articles
     - GET /mostread
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - returns: RequestBuilder<[ListArticle]> 
     */
    open class func mostreadGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil) -> RequestBuilder<[ListArticle]> {
        let path = "/mostread"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[ListArticle]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
