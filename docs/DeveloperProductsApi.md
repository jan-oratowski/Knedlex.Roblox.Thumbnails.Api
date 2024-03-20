# Knedlex.Roblox.Thumbnails.ApiV1.Api.DeveloperProductsApi

All URIs are relative to *https://thumbnails.roblox.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1DeveloperProductsIconsGet**](DeveloperProductsApi.md#v1developerproductsiconsget) | **GET** /v1/developer-products/icons | Thumbnails developer product icons. |

<a id="v1developerproductsiconsget"></a>
# **V1DeveloperProductsIconsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1DeveloperProductsIconsGet (List<long> developerProductIds, string size = null, string format = null, bool? isCircular = null)

Thumbnails developer product icons.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.ApiV1.Api;
using Knedlex.Roblox.Thumbnails.ApiV1.Client;
using Knedlex.Roblox.Thumbnails.ApiV1.Model;

namespace Example
{
    public class V1DeveloperProductsIconsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new DeveloperProductsApi(config);
            var developerProductIds = new List<long>(); // List<long> | The developer product ids.
            var size = "150x150";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 150x150)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Thumbnails developer product icons.
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1DeveloperProductsIconsGet(developerProductIds, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DeveloperProductsApi.V1DeveloperProductsIconsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1DeveloperProductsIconsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Thumbnails developer product icons.
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1DeveloperProductsIconsGetWithHttpInfo(developerProductIds, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DeveloperProductsApi.V1DeveloperProductsIconsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **developerProductIds** | [**List&lt;long&gt;**](long.md) | The developer product ids. |  |
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

