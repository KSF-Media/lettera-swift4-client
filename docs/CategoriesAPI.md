# CategoriesAPI

All URIs are relative to *http://http:/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categoriesGet**](CategoriesAPI.md#categoriesget) | **GET** /categories | Read categories


# **categoriesGet**
```swift
    open class func categoriesGet(paper: Paper_categoriesGet? = nil, completion: @escaping (_ data: [Category]?, _ error: Error?) -> Void)
```

Read categories

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let paper = "paper_example" // String |  (optional)

// Read categories
CategoriesAPI.categoriesGet(paper: paper) { (response, error) in
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
 **paper** | **String** |  | [optional] 

### Return type

[**[Category]**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

