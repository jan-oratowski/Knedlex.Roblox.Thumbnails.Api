# Knedlex.Roblox.Thumbnails.ApiV1.Api.BundlesApi

All URIs are relative to *https://thumbnails.roblox.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1BundlesThumbnailsGet**](BundlesApi.md#v1bundlesthumbnailsget) | **GET** /v1/bundles/thumbnails | Get bundle thumbnails for the given CSV of bundle ids |

<a id="v1bundlesthumbnailsget"></a>
# **V1BundlesThumbnailsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1BundlesThumbnailsGet (List<long> bundleIds, string size = null, string format = null, bool? isCircular = null)

Get bundle thumbnails for the given CSV of bundle ids

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.ApiV1.Api;
using Knedlex.Roblox.Thumbnails.ApiV1.Client;
using Knedlex.Roblox.Thumbnails.ApiV1.Model;

namespace Example
{
    public class V1BundlesThumbnailsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new BundlesApi(config);
            var bundleIds = new List<long>(); // List<long> | CSV for the bundle ids to get bundle thumbnails
            var size = "150x150";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 150x150)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Get bundle thumbnails for the given CSV of bundle ids
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1BundlesThumbnailsGet(bundleIds, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling BundlesApi.V1BundlesThumbnailsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1BundlesThumbnailsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get bundle thumbnails for the given CSV of bundle ids
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1BundlesThumbnailsGetWithHttpInfo(bundleIds, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling BundlesApi.V1BundlesThumbnailsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **bundleIds** | [**List&lt;long&gt;**](long.md) | CSV for the bundle ids to get bundle thumbnails |  |
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

