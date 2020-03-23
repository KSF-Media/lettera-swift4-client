# NotifiersAPI

All URIs are relative to *http://http:/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notifyPost**](NotifiersAPI.md#notifypost) | **POST** /notify | Listens to OC Notifier


# **notifyPost**
```swift
    open class func notifyPost(body: Notification, token: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Listens to OC Notifier

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import lettera

let body = Notification(contentType: "contentType_example", eventid: 123, eventtype: EventType(), uuid: 123) // Notification | 
let token = "token_example" // String |  (optional)

// Listens to OC Notifier
NotifiersAPI.notifyPost(body: body, token: token) { (response, error) in
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
 **body** | [**Notification**](Notification.md) |  | 
 **token** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

