//
// CategoriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class CategoriesAPI {
    /**
     * enum for parameter paper
     */
    public enum Paper_categoriesGet: String {
        case hbl = "hbl"
        case ht = "ht"
        case vn = "vn"
        case on = "on"
    }

    /**
     Read categories
     
     - parameter paper: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func categoriesGet(paper: Paper_categoriesGet? = nil, completion: @escaping ((_ data: [Category]?,_ error: Error?) -> Void)) {
        categoriesGetWithRequestBuilder(paper: paper).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Read categories
     - GET /categories
     - parameter paper: (query)  (optional)
     - returns: RequestBuilder<[Category]> 
     */
    open class func categoriesGetWithRequestBuilder(paper: Paper_categoriesGet? = nil) -> RequestBuilder<[Category]> {
        let path = "/categories"
        let URLString = letteraAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paper": paper?.rawValue
        ])

        let requestBuilder: RequestBuilder<[Category]>.Type = letteraAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
