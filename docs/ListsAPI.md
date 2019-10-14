# ListsAPI

All URIs are relative to *http://http:/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**frontpageGet**](ListsAPI.md#frontpageget) | **GET** /frontpage | Returns a list for a front page
[**latestGet**](ListsAPI.md#latestget) | **GET** /latest | Returns a list of latest articles
[**mostreadGet**](ListsAPI.md#mostreadget) | **GET** /mostread | Returns a list of most read articles


# **frontpageGet**
```swift
    open class func frontpageGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_frontpageGet? = nil, completion: @escaping (_ data: [ListArticle]?, _ error: Error?) -> Void)
```

Returns a list for a front page

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let start = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let category = "category_example" // String |  (optional)
let paper = "paper_example" // String |  (optional)

// Returns a list for a front page
ListsAPI.frontpageGet(start: start, limit: limit, category: category, paper: paper) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **category** | **String** |  | [optional] 
 **paper** | **String** |  | [optional] 

### Return type

[**[ListArticle]**](ListArticle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **latestGet**
```swift
    open class func latestGet(start: Int? = nil, limit: Int? = nil, paper: Paper_latestGet? = nil, completion: @escaping (_ data: [ListArticle]?, _ error: Error?) -> Void)
```

Returns a list of latest articles

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let start = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let paper = "paper_example" // String |  (optional)

// Returns a list of latest articles
ListsAPI.latestGet(start: start, limit: limit, paper: paper) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **paper** | **String** |  | [optional] 

### Return type

[**[ListArticle]**](ListArticle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mostreadGet**
```swift
    open class func mostreadGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_mostreadGet? = nil, completion: @escaping (_ data: [ListArticle]?, _ error: Error?) -> Void)
```

Returns a list of most read articles

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let start = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let category = "category_example" // String |  (optional)
let paper = "paper_example" // String |  (optional)

// Returns a list of most read articles
ListsAPI.mostreadGet(start: start, limit: limit, category: category, paper: paper) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **category** | **String** |  | [optional] 
 **paper** | **String** |  | [optional] 

### Return type

[**[ListArticle]**](ListArticle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

