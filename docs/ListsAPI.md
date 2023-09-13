# ListsAPI

All URIs are relative to *http://http:/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**frontpageGet**](ListsAPI.md#frontpageget) | **GET** /frontpage | Returns a list for a front page
[**latestGet**](ListsAPI.md#latestget) | **GET** /latest | Returns a list of latest articles
[**mostreadGet**](ListsAPI.md#mostreadget) | **GET** /mostread | Returns a list of most read articles
[**presetPresetCategoryGet**](ListsAPI.md#presetpresetcategoryget) | **GET** /preset/{preset}/{category} | Load a preset model
[**presetPresetCategoryPost**](ListsAPI.md#presetpresetcategorypost) | **POST** /preset/{preset}/{category} | Update a preset model
[**searchGet**](ListsAPI.md#searchget) | **GET** /search | Returns a list of search results
[**tagTagGet**](ListsAPI.md#tagtagget) | **GET** /tag/{tag} | Returns a list of latest articles by tag


# **frontpageGet**
```swift
    open class func frontpageGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_frontpageGet? = nil, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
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

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8, application/rss+xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **latestGet**
```swift
    open class func latestGet(start: Int? = nil, limit: Int? = nil, from: String? = nil, to: String? = nil, paper: Paper_latestGet? = nil, category: String? = nil, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
```

Returns a list of latest articles

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let start = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let from = "from_example" // String |  (optional)
let to = "to_example" // String |  (optional)
let paper = "paper_example" // String |  (optional)
let category = "category_example" // String |  (optional)

// Returns a list of latest articles
ListsAPI.latestGet(start: start, limit: limit, from: from, to: to, paper: paper, category: category) { (response, error) in
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
 **from** | **String** |  | [optional] 
 **to** | **String** |  | [optional] 
 **paper** | **String** |  | [optional] 
 **category** | **String** |  | [optional] 

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8, application/rss+xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mostreadGet**
```swift
    open class func mostreadGet(start: Int? = nil, limit: Int? = nil, category: String? = nil, paper: Paper_mostreadGet? = nil, onlySubscribers: Bool? = nil, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
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
let onlySubscribers = false // Bool |  (optional)

// Returns a list of most read articles
ListsAPI.mostreadGet(start: start, limit: limit, category: category, paper: paper, onlySubscribers: onlySubscribers) { (response, error) in
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
 **onlySubscribers** | **Bool** |  | [optional] 

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8, application/rss+xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **presetPresetCategoryGet**
```swift
    open class func presetPresetCategoryGet(authUser: UUID, authorization: String, preset: Int, category: String, completion: @escaping (_ data: Scoring?, _ error: Error?) -> Void)
```

Load a preset model

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let authUser = 987 // UUID | 
let authorization = "authorization_example" // String | 
let preset = 987 // Int | 
let category = "category_example" // String | 

// Load a preset model
ListsAPI.presetPresetCategoryGet(authUser: authUser, authorization: authorization, preset: preset, category: category) { (response, error) in
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
 **authUser** | [**UUID**](.md) |  | 
 **authorization** | **String** |  | 
 **preset** | **Int** |  | 
 **category** | **String** |  | 

### Return type

[**Scoring**](Scoring.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **presetPresetCategoryPost**
```swift
    open class func presetPresetCategoryPost(authUser: UUID, authorization: String, preset: Int, category: String, body: Scoring, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a preset model

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let authUser = 987 // UUID | 
let authorization = "authorization_example" // String | 
let preset = 987 // Int | 
let category = "category_example" // String | 
let body = Scoring(cutoffPriority: [[123]], cutoffTimeOnSite: [[123]]) // Scoring | 

// Update a preset model
ListsAPI.presetPresetCategoryPost(authUser: authUser, authorization: authorization, preset: preset, category: category, body: body) { (response, error) in
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
 **authUser** | [**UUID**](.md) |  | 
 **authorization** | **String** |  | 
 **preset** | **Int** |  | 
 **category** | **String** |  | 
 **body** | [**Scoring**](Scoring.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGet**
```swift
    open class func searchGet(contentQuery: String, start: Int? = nil, limit: Int? = nil, paper: Paper_searchGet? = nil, completion: @escaping (_ data: [ArticleStub]?, _ error: Error?) -> Void)
```

Returns a list of search results

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let contentQuery = "contentQuery_example" // String | 
let start = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let paper = "paper_example" // String |  (optional)

// Returns a list of search results
ListsAPI.searchGet(contentQuery: contentQuery, start: start, limit: limit, paper: paper) { (response, error) in
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
 **contentQuery** | **String** |  | 
 **start** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **paper** | **String** |  | [optional] 

### Return type

[**[ArticleStub]**](ArticleStub.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagTagGet**
```swift
    open class func tagTagGet(tag: String, start: Int? = nil, limit: Int? = nil, paper: Paper_tagTagGet? = nil, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
```

Returns a list of latest articles by tag

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let tag = "tag_example" // String | 
let start = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let paper = "paper_example" // String |  (optional)

// Returns a list of latest articles by tag
ListsAPI.tagTagGet(tag: tag, start: start, limit: limit, paper: paper) { (response, error) in
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
 **tag** | **String** |  | 
 **start** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **paper** | **String** |  | [optional] 

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8, application/rss+xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

