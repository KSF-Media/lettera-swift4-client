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
    open class func frontpageGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_frontpageGet? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        frontpageGetWithRequestBuilder(start: start, limit: limit, category: category, paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list for a front page
     - GET /frontpage
     - responseHeaders: [Cache-Control(String)]
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func frontpageGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_frontpageGet? = nil) -> RequestBuilder<Any> {
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

        let requestBuilder: RequestBuilder<Any>.Type = letteraAPI.requestBuilderFactory.getBuilder()

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
     - parameter from: (query)  (optional)
     - parameter to: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func latestGet(start: Int? = nil, limit: Int? = nil, from: String? = nil, to: String? = nil, paper: Paper_latestGet? = nil, category: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        latestGetWithRequestBuilder(start: start, limit: limit, from: from, to: to, paper: paper, category: category).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of latest articles
     - GET /latest
     - responseHeaders: [Cache-Control(String)]
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter from: (query)  (optional)
     - parameter to: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter category: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func latestGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, from: String? = nil, to: String? = nil, paper: Paper_latestGet? = nil, category: String? = nil) -> RequestBuilder<Any> {
        let path = "/latest"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "from": from, 
            "to": to, 
            "paper": paper?.rawValue, 
            "category": category
        ])

        let requestBuilder: RequestBuilder<Any>.Type = letteraAPI.requestBuilderFactory.getBuilder()

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
     - parameter onlySubscribers: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mostreadGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_mostreadGet? = nil, onlySubscribers: Bool? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        mostreadGetWithRequestBuilder(start: start, limit: limit, category: category, paper: paper, onlySubscribers: onlySubscribers).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of most read articles
     - GET /mostread
     - responseHeaders: [Cache-Control(String)]
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter category: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter onlySubscribers: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func mostreadGetWithRequestBuilder(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_mostreadGet? = nil, onlySubscribers: Bool? = nil) -> RequestBuilder<Any> {
        let path = "/mostread"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "category": category, 
            "paper": paper?.rawValue, 
            "onlySubscribers": onlySubscribers
        ])

        let requestBuilder: RequestBuilder<Any>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Load a preset model
     
     - parameter authUser: (header)  
     - parameter authorization: (header)  
     - parameter preset: (path)  
     - parameter category: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func presetPresetCategoryGet(authUser: UUID, authorization: String, preset: Int, category: String, completion: @escaping ((_ data: Scoring?,_ error: Error?) -> Void)) {
        presetPresetCategoryGetWithRequestBuilder(authUser: authUser, authorization: authorization, preset: preset, category: category).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Load a preset model
     - GET /preset/{preset}/{category}
     - parameter authUser: (header)  
     - parameter authorization: (header)  
     - parameter preset: (path)  
     - parameter category: (path)  
     - returns: RequestBuilder<Scoring> 
     */
    open class func presetPresetCategoryGetWithRequestBuilder(authUser: UUID, authorization: String, preset: Int, category: String) -> RequestBuilder<Scoring> {
        var path = "/preset/{preset}/{category}"
        let presetPreEscape = "\(APIHelper.mapValueToPathItem(preset))"
        let presetPostEscape = presetPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{preset}", with: presetPostEscape, options: .literal, range: nil)
        let categoryPreEscape = "\(APIHelper.mapValueToPathItem(category))"
        let categoryPostEscape = categoryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{category}", with: categoryPostEscape, options: .literal, range: nil)
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "AuthUser": authUser,
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Scoring>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update a preset model
     
     - parameter authUser: (header)  
     - parameter authorization: (header)  
     - parameter preset: (path)  
     - parameter category: (path)  
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func presetPresetCategoryPost(authUser: UUID, authorization: String, preset: Int, category: String, body: Scoring, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        presetPresetCategoryPostWithRequestBuilder(authUser: authUser, authorization: authorization, preset: preset, category: category, body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     Update a preset model
     - POST /preset/{preset}/{category}
     - parameter authUser: (header)  
     - parameter authorization: (header)  
     - parameter preset: (path)  
     - parameter category: (path)  
     - parameter body: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func presetPresetCategoryPostWithRequestBuilder(authUser: UUID, authorization: String, preset: Int, category: String, body: Scoring) -> RequestBuilder<Void> {
        var path = "/preset/{preset}/{category}"
        let presetPreEscape = "\(APIHelper.mapValueToPathItem(preset))"
        let presetPostEscape = presetPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{preset}", with: presetPostEscape, options: .literal, range: nil)
        let categoryPreEscape = "\(APIHelper.mapValueToPathItem(category))"
        let categoryPostEscape = categoryPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{category}", with: categoryPostEscape, options: .literal, range: nil)
        let URLString = letteraAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "AuthUser": authUser,
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = letteraAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     * enum for parameter paper
     */
    public enum Paper_scoredPost: String {
        case hbl = "HBL"
        case on = "ON"
        case vn = "VN"
        case ht = "HT"
        case junior = "JUNIOR"
        case forum = "FORUM"
        case ls = "LS"
    }

    /**
     List recent articles sorted by given scoring weights
     
     - parameter category: (query)  
     - parameter paper: (query)  
     - parameter body: (body)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func scoredPost(category: String, paper: Paper_scoredPost, body: Scoring, start: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [ArticleStub]?,_ error: Error?) -> Void)) {
        scoredPostWithRequestBuilder(category: category, paper: paper, body: body, start: start, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     List recent articles sorted by given scoring weights
     - POST /scored
     - parameter category: (query)  
     - parameter paper: (query)  
     - parameter body: (body)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - returns: RequestBuilder<[ArticleStub]> 
     */
    open class func scoredPostWithRequestBuilder(category: String, paper: Paper_scoredPost, body: Scoring, start: Int? = nil, limit: Int? = nil) -> RequestBuilder<[ArticleStub]> {
        let path = "/scored"
        let URLString = letteraAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "category": category, 
            "paper": paper.rawValue
        ])

        let requestBuilder: RequestBuilder<[ArticleStub]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     * enum for parameter paper
     */
    public enum Paper_scoredPresetGet: String {
        case hbl = "hbl"
        case ht = "ht"
        case vn = "vn"
        case on = "on"
    }

    /**
     List recent articles sorted by preset scoring
     
     - parameter preset: (path)  
     - parameter category: (query)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func scoredPresetGet(preset: Int, category: String, start: Int? = nil, limit: Int? = nil, paper: Paper_scoredPresetGet? = nil, completion: @escaping ((_ data: [ArticleStub]?,_ error: Error?) -> Void)) {
        scoredPresetGetWithRequestBuilder(preset: preset, category: category, start: start, limit: limit, paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     List recent articles sorted by preset scoring
     - GET /scored/{preset}
     - parameter preset: (path)  
     - parameter category: (query)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<[ArticleStub]> 
     */
    open class func scoredPresetGetWithRequestBuilder(preset: Int, category: String, start: Int? = nil, limit: Int? = nil, paper: Paper_scoredPresetGet? = nil) -> RequestBuilder<[ArticleStub]> {
        var path = "/scored/{preset}"
        let presetPreEscape = "\(APIHelper.mapValueToPathItem(preset))"
        let presetPostEscape = presetPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{preset}", with: presetPostEscape, options: .literal, range: nil)
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "category": category, 
            "paper": paper?.rawValue
        ])

        let requestBuilder: RequestBuilder<[ArticleStub]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

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
     
     - parameter contentQuery: (query)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func searchGet(contentQuery: String, start: Int? = nil, limit: Int? = nil, paper: Paper_searchGet? = nil, completion: @escaping ((_ data: [ArticleStub]?,_ error: Error?) -> Void)) {
        searchGetWithRequestBuilder(contentQuery: contentQuery, start: start, limit: limit, paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of search results
     - GET /search
     - parameter contentQuery: (query)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<[ArticleStub]> 
     */
    open class func searchGetWithRequestBuilder(contentQuery: String, start: Int? = nil, limit: Int? = nil, paper: Paper_searchGet? = nil) -> RequestBuilder<[ArticleStub]> {
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

        let requestBuilder: RequestBuilder<[ArticleStub]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter paper
     */
    public enum Paper_tagTagGet: String {
        case hbl = "hbl"
        case ht = "ht"
        case vn = "vn"
        case on = "on"
    }

    /**
     Returns a list of latest articles by tag
     
     - parameter tag: (path)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func tagTagGet(tag: String, start: Int? = nil, limit: Int? = nil, paper: Paper_tagTagGet? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        tagTagGetWithRequestBuilder(tag: tag, start: start, limit: limit, paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Returns a list of latest articles by tag
     - GET /tag/{tag}
     - responseHeaders: [Cache-Control(String)]
     - parameter tag: (path)  
     - parameter start: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func tagTagGetWithRequestBuilder(tag: String, start: Int? = nil, limit: Int? = nil, paper: Paper_tagTagGet? = nil) -> RequestBuilder<Any> {
        var path = "/tag/{tag}"
        let tagPreEscape = "\(APIHelper.mapValueToPathItem(tag))"
        let tagPostEscape = tagPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{tag}", with: tagPostEscape, options: .literal, range: nil)
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": start?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "paper": paper?.rawValue
        ])

        let requestBuilder: RequestBuilder<Any>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
