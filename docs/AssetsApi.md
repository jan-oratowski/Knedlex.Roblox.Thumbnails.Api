# Knedlex.Roblox.Thumbnails.ApiV1.Api.AssetsApi

All URIs are relative to *https://thumbnails.roblox.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1AssetThumbnailAnimatedGet**](AssetsApi.md#v1assetthumbnailanimatedget) | **GET** /v1/asset-thumbnail-animated | Thumbnails asset animated. |
| [**V1AssetsGet**](AssetsApi.md#v1assetsget) | **GET** /v1/assets | Thumbnails assets. |
| [**V1AssetsThumbnail3dGet**](AssetsApi.md#v1assetsthumbnail3dget) | **GET** /v1/assets-thumbnail-3d | Thumbnails assets. |

<a id="v1assetthumbnailanimatedget"></a>
# **V1AssetThumbnailAnimatedGet**
> RobloxWebResponsesThumbnailsThumbnailResponse V1AssetThumbnailAnimatedGet (long assetId, long? robloxPlaceId = null)

Thumbnails asset animated.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.ApiV1.Api;
using Knedlex.Roblox.Thumbnails.ApiV1.Client;
using Knedlex.Roblox.Thumbnails.ApiV1.Model;

namespace Example
{
    public class V1AssetThumbnailAnimatedGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new AssetsApi(config);
            var assetId = 789L;  // long | The asset id.
            var robloxPlaceId = 789L;  // long? | (optional) placeid (optional) 

            try
            {
                // Thumbnails asset animated.
                RobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1AssetThumbnailAnimatedGet(assetId, robloxPlaceId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AssetsApi.V1AssetThumbnailAnimatedGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1AssetThumbnailAnimatedGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Thumbnails asset animated.
    ApiResponse<RobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1AssetThumbnailAnimatedGetWithHttpInfo(assetId, robloxPlaceId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AssetsApi.V1AssetThumbnailAnimatedGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetId** | **long** | The asset id. |  |
| **robloxPlaceId** | **long?** | (optional) placeid | [optional]  |

### Return type

[**RobloxWebResponsesThumbnailsThumbnailResponse**](RobloxWebResponsesThumbnailsThumbnailResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | 4: The requested Ids are invalid, of an invalid type or missing. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="v1assetsget"></a>
# **V1AssetsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1AssetsGet (List<long> assetIds, long? robloxPlaceId = null, string returnPolicy = null, string size = null, string format = null, bool? isCircular = null)

Thumbnails assets.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.ApiV1.Api;
using Knedlex.Roblox.Thumbnails.ApiV1.Client;
using Knedlex.Roblox.Thumbnails.ApiV1.Model;

namespace Example
{
    public class V1AssetsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new AssetsApi(config);
            var assetIds = new List<long>(); // List<long> | The asset ids.
            var robloxPlaceId = 789L;  // long? | (optional) placeid (optional) 
            var returnPolicy = "PlaceHolder";  // string | Optional policy to use in selecting thumbnail to return (default = PlaceHolder). (optional)  (default to PlaceHolder)
            var size = "30x30";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 30x30)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Thumbnails assets.
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1AssetsGet(assetIds, robloxPlaceId, returnPolicy, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AssetsApi.V1AssetsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1AssetsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Thumbnails assets.
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1AssetsGetWithHttpInfo(assetIds, robloxPlaceId, returnPolicy, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AssetsApi.V1AssetsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetIds** | [**List&lt;long&gt;**](long.md) | The asset ids. |  |
| **robloxPlaceId** | **long?** | (optional) placeid | [optional]  |
| **returnPolicy** | **string** | Optional policy to use in selecting thumbnail to return (default &#x3D; PlaceHolder). | [optional] [default to PlaceHolder] |
| **size** | **string** | The thumbnail size, formatted widthxheight | [optional] [default to 30x30] |
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
| **400** | 1: There are too many requested Ids.  2: The requested image format is invalid. Please see documentation for valid thumbnail format parameter name and values.  3: The requested size is invalid. Please see documentation for valid thumbnail size parameter name and format.  4: The requested Ids are invalid, of an invalid type or missing.  8: The requested return policy is invalid (must be PlaceHolder, AutoGenerated or ForceAutoGenerated).  10: Circular thumbnail requests are not allowed |  -  |
| **403** | 9: User not authorized to use AutoGenerated or ForceAutoGenerated return policies. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="v1assetsthumbnail3dget"></a>
# **V1AssetsThumbnail3dGet**
> RobloxWebResponsesThumbnailsThumbnailResponse V1AssetsThumbnail3dGet (long assetId, long? robloxPlaceId = null)

Thumbnails assets.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.ApiV1.Api;
using Knedlex.Roblox.Thumbnails.ApiV1.Client;
using Knedlex.Roblox.Thumbnails.ApiV1.Model;

namespace Example
{
    public class V1AssetsThumbnail3dGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new AssetsApi(config);
            var assetId = 789L;  // long | The asset id.
            var robloxPlaceId = 789L;  // long? | (optional) placeid (optional) 

            try
            {
                // Thumbnails assets.
                RobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1AssetsThumbnail3dGet(assetId, robloxPlaceId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AssetsApi.V1AssetsThumbnail3dGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1AssetsThumbnail3dGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Thumbnails assets.
    ApiResponse<RobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1AssetsThumbnail3dGetWithHttpInfo(assetId, robloxPlaceId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AssetsApi.V1AssetsThumbnail3dGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetId** | **long** | The asset id. |  |
| **robloxPlaceId** | **long?** | (optional) placeid | [optional]  |

### Return type

[**RobloxWebResponsesThumbnailsThumbnailResponse**](RobloxWebResponsesThumbnailsThumbnailResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | 4: The requested Ids are invalid, of an invalid type or missing. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

