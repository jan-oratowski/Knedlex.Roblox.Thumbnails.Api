# Knedlex.Roblox.Thumbnails.ApiV1.Api.GroupEmblemApi

All URIs are relative to *https://thumbnails.roblox.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1GroupsIconsGet**](GroupEmblemApi.md#v1groupsiconsget) | **GET** /v1/groups/icons | Fetches thumbnail URLs for a list of groups. Ids that do not correspond to groups will be filtered out. |

<a id="v1groupsiconsget"></a>
# **V1GroupsIconsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1GroupsIconsGet (List<long> groupIds, string size = null, string format = null, bool? isCircular = null)

Fetches thumbnail URLs for a list of groups. Ids that do not correspond to groups will be filtered out.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.ApiV1.Api;
using Knedlex.Roblox.Thumbnails.ApiV1.Client;
using Knedlex.Roblox.Thumbnails.ApiV1.Model;

namespace Example
{
    public class V1GroupsIconsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new GroupEmblemApi(config);
            var groupIds = new List<long>(); // List<long> | 
            var size = "150x150";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 150x150)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Fetches thumbnail URLs for a list of groups. Ids that do not correspond to groups will be filtered out.
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1GroupsIconsGet(groupIds, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling GroupEmblemApi.V1GroupsIconsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1GroupsIconsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Fetches thumbnail URLs for a list of groups. Ids that do not correspond to groups will be filtered out.
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1GroupsIconsGetWithHttpInfo(groupIds, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling GroupEmblemApi.V1GroupsIconsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **groupIds** | [**List&lt;long&gt;**](long.md) |  |  |
| **size** | **string** | The thumbnail size, formatted widthxheight | [optional] [default to 150x150] |
| **format** | **string** | The thumbnail format | [optional] [default to Png] |
| **isCircular** | **bool?** | The circle thumbnail output parameter, true or false | [optional] [default to false] |

### Return type

[**RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse**](RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | 1: There are too many requested Ids.  2: The requested image format is invalid. Please see documentation for valid thumbnail format parameter name and values.  3: The requested size is invalid. Please see documentation for valid thumbnail size parameter name and format.  4: The requested Ids are invalid, of an invalid type or missing.  10: Circular thumbnail requests are not allowed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

