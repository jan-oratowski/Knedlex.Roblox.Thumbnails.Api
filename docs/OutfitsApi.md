# Knedlex.Roblox.Thumbnails.Api.Api.OutfitsApi

All URIs are relative to *https://thumbnails.roblox.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1UsersOutfit3dGet**](OutfitsApi.md#v1usersoutfit3dget) | **GET** /v1/users/outfit-3d | Get 3d object for an outfit |
| [**V1UsersOutfitsGet**](OutfitsApi.md#v1usersoutfitsget) | **GET** /v1/users/outfits | Get outfits for the given CSV of userOutfitIds |

<a id="v1usersoutfit3dget"></a>
# **V1UsersOutfit3dGet**
> RobloxWebResponsesThumbnailsThumbnailResponse V1UsersOutfit3dGet (long outfitId)

Get 3d object for an outfit

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.Api.Api;
using Knedlex.Roblox.Thumbnails.Api.Client;
using Knedlex.Roblox.Thumbnails.Api.Model;

namespace Example
{
    public class V1UsersOutfit3dGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new OutfitsApi(config);
            var outfitId = 789L;  // long | CSV for the userIds to get user outfits

            try
            {
                // Get 3d object for an outfit
                RobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1UsersOutfit3dGet(outfitId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OutfitsApi.V1UsersOutfit3dGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1UsersOutfit3dGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get 3d object for an outfit
    ApiResponse<RobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1UsersOutfit3dGetWithHttpInfo(outfitId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OutfitsApi.V1UsersOutfit3dGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **outfitId** | **long** | CSV for the userIds to get user outfits |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="v1usersoutfitsget"></a>
# **V1UsersOutfitsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1UsersOutfitsGet (List<long> userOutfitIds, string size = null, string format = null, bool? isCircular = null)

Get outfits for the given CSV of userOutfitIds

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.Api.Api;
using Knedlex.Roblox.Thumbnails.Api.Client;
using Knedlex.Roblox.Thumbnails.Api.Model;

namespace Example
{
    public class V1UsersOutfitsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new OutfitsApi(config);
            var userOutfitIds = new List<long>(); // List<long> | CSV for the userOutfitIds to get user outfits
            var size = "150x150";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 150x150)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Get outfits for the given CSV of userOutfitIds
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1UsersOutfitsGet(userOutfitIds, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OutfitsApi.V1UsersOutfitsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1UsersOutfitsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get outfits for the given CSV of userOutfitIds
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1UsersOutfitsGetWithHttpInfo(userOutfitIds, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OutfitsApi.V1UsersOutfitsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userOutfitIds** | [**List&lt;long&gt;**](long.md) | CSV for the userOutfitIds to get user outfits |  |
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

