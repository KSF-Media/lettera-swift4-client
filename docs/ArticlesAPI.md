# ArticlesAPI

All URIs are relative to *http://http:/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**articleUuidGet**](ArticlesAPI.md#articleuuidget) | **GET** /article/{uuid} | 
[**articleUuidStubGet**](ArticlesAPI.md#articleuuidstubget) | **GET** /article/{uuid}/stub | 


# **articleUuidGet**
```swift
    open class func articleUuidGet(uuid: UUID, authUser: UUID? = nil, authorization: String? = nil, textonly: Bool? = nil, completion: @escaping (_ data: Article?, _ error: Error?) -> Void)
```



Fetch article by UUID.   Notes about the images:   The image URLs point to our image scaler, and are returned without scaling parameters.  However, if wanted, `width` and `height` parameters can be added to the querystring of the URL.  Also in list views, to ensure same size, it might be useful to crop the images by using the parameter `function=hardcrop`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let uuid = 987 // UUID | 
let authUser = 987 // UUID |  (optional)
let authorization = "authorization_example" // String |  (optional)
let textonly = false // Bool |  (optional) (default to false)

ArticlesAPI.articleUuidGet(uuid: uuid, authUser: authUser, authorization: authorization, textonly: textonly) { (response, error) in
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
 **uuid** | [**UUID**](.md) |  | 
 **authUser** | [**UUID**](.md) |  | [optional] 
 **authorization** | **String** |  | [optional] 
 **textonly** | **Bool** |  | [optional] [default to false]

### Return type

[**Article**](Article.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleUuidStubGet**
```swift
    open class func articleUuidStubGet(uuid: UUID, completion: @escaping (_ data: ArticleStub?, _ error: Error?) -> Void)
```



Fetch an article stub by UUID

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let uuid = 987 // UUID | 

ArticlesAPI.articleUuidStubGet(uuid: uuid) { (response, error) in
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
 **uuid** | [**UUID**](.md) |  | 

### Return type

[**ArticleStub**](ArticleStub.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

