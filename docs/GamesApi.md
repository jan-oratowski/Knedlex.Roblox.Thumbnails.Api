# Knedlex.Roblox.Thumbnails.Api.Api.GamesApi

All URIs are relative to *https://thumbnails.roblox.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1GamesIconsGet**](GamesApi.md#v1gamesiconsget) | **GET** /v1/games/icons | Fetches game icon URLs for a list of universes&#39; root places. Ids that do not correspond to a valid universe will be filtered out. |
| [**V1GamesMultigetThumbnailsGet**](GamesApi.md#v1gamesmultigetthumbnailsget) | **GET** /v1/games/multiget/thumbnails | Fetch game thumbnail URLs for a list of universe IDs. |
| [**V1GamesUniverseIdThumbnailsGet**](GamesApi.md#v1gamesuniverseidthumbnailsget) | **GET** /v1/games/{universeId}/thumbnails | Fetches game thumbnail URLs for a list of universes&#39; thumbnail ids. Ids that do not correspond to a valid thumbnail will be filtered out. |

<a id="v1gamesiconsget"></a>
# **V1GamesIconsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1GamesIconsGet (List<long> universeIds, string returnPolicy = null, string size = null, string format = null, bool? isCircular = null)

Fetches game icon URLs for a list of universes' root places. Ids that do not correspond to a valid universe will be filtered out.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.Api.Api;
using Knedlex.Roblox.Thumbnails.Api.Client;
using Knedlex.Roblox.Thumbnails.Api.Model;

namespace Example
{
    public class V1GamesIconsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new GamesApi(config);
            var universeIds = new List<long>(); // List<long> | The universe ids.
            var returnPolicy = "PlaceHolder";  // string | Optional policy to use in selecting game icon to return (default = PlaceHolder). (optional)  (default to PlaceHolder)
            var size = "50x50";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 50x50)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Fetches game icon URLs for a list of universes' root places. Ids that do not correspond to a valid universe will be filtered out.
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1GamesIconsGet(universeIds, returnPolicy, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling GamesApi.V1GamesIconsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1GamesIconsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Fetches game icon URLs for a list of universes' root places. Ids that do not correspond to a valid universe will be filtered out.
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1GamesIconsGetWithHttpInfo(universeIds, returnPolicy, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling GamesApi.V1GamesIconsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **universeIds** | [**List&lt;long&gt;**](long.md) | The universe ids. |  |
| **returnPolicy** | **string** | Optional policy to use in selecting game icon to return (default &#x3D; PlaceHolder). | [optional] [default to PlaceHolder] |
| **size** | **string** | The thumbnail size, formatted widthxheight | [optional] [default to 50x50] |
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

<a id="v1gamesmultigetthumbnailsget"></a>
# **V1GamesMultigetThumbnailsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxThumbnailsApiModelsUniverseThumbnailsResponse V1GamesMultigetThumbnailsGet (List<long> universeIds, int? countPerUniverse = null, bool? defaults = null, string size = null, string format = null, bool? isCircular = null)

Fetch game thumbnail URLs for a list of universe IDs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.Api.Api;
using Knedlex.Roblox.Thumbnails.Api.Client;
using Knedlex.Roblox.Thumbnails.Api.Model;

namespace Example
{
    public class V1GamesMultigetThumbnailsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new GamesApi(config);
            var universeIds = new List<long>(); // List<long> | comma-delimited list of universe IDs
            var countPerUniverse = 1;  // int? | max number of thumbnails to return per universe (optional)  (default to 1)
            var defaults = true;  // bool? | true if defaults (if any) should be returned if no media exists (optional)  (default to true)
            var size = "768x432";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 768x432)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Fetch game thumbnail URLs for a list of universe IDs.
                RobloxWebWebAPIModelsApiArrayResponseRobloxThumbnailsApiModelsUniverseThumbnailsResponse result = apiInstance.V1GamesMultigetThumbnailsGet(universeIds, countPerUniverse, defaults, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling GamesApi.V1GamesMultigetThumbnailsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1GamesMultigetThumbnailsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Fetch game thumbnail URLs for a list of universe IDs.
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxThumbnailsApiModelsUniverseThumbnailsResponse> response = apiInstance.V1GamesMultigetThumbnailsGetWithHttpInfo(universeIds, countPerUniverse, defaults, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling GamesApi.V1GamesMultigetThumbnailsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **universeIds** | [**List&lt;long&gt;**](long.md) | comma-delimited list of universe IDs |  |
| **countPerUniverse** | **int?** | max number of thumbnails to return per universe | [optional] [default to 1] |
| **defaults** | **bool?** | true if defaults (if any) should be returned if no media exists | [optional] [default to true] |
| **size** | **string** | The thumbnail size, formatted widthxheight | [optional] [default to 768x432] |
| **format** | **string** | The thumbnail format | [optional] [default to Png] |
| **isCircular** | **bool?** | The circle thumbnail output parameter, true or false | [optional] [default to false] |

### Return type

[**RobloxWebWebAPIModelsApiArrayResponseRobloxThumbnailsApiModelsUniverseThumbnailsResponse**](RobloxWebWebAPIModelsApiArrayResponseRobloxThumbnailsApiModelsUniverseThumbnailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | 0: Unknown error  1: There are too many requested Ids.  4: The requested Ids are invalid, of an invalid type or missing.  5: The requested universe does not exist.  10: Circular thumbnail requests are not allowed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="v1gamesuniverseidthumbnailsget"></a>
# **V1GamesUniverseIdThumbnailsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1GamesUniverseIdThumbnailsGet (long universeId, List<long> thumbnailIds, string size = null, string format = null, bool? isCircular = null)

Fetches game thumbnail URLs for a list of universes' thumbnail ids. Ids that do not correspond to a valid thumbnail will be filtered out.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.Api.Api;
using Knedlex.Roblox.Thumbnails.Api.Client;
using Knedlex.Roblox.Thumbnails.Api.Model;

namespace Example
{
    public class V1GamesUniverseIdThumbnailsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new GamesApi(config);
            var universeId = 789L;  // long | 
            var thumbnailIds = new List<long>(); // List<long> | 
            var size = "768x432";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 768x432)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Fetches game thumbnail URLs for a list of universes' thumbnail ids. Ids that do not correspond to a valid thumbnail will be filtered out.
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1GamesUniverseIdThumbnailsGet(universeId, thumbnailIds, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling GamesApi.V1GamesUniverseIdThumbnailsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1GamesUniverseIdThumbnailsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Fetches game thumbnail URLs for a list of universes' thumbnail ids. Ids that do not correspond to a valid thumbnail will be filtered out.
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1GamesUniverseIdThumbnailsGetWithHttpInfo(universeId, thumbnailIds, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling GamesApi.V1GamesUniverseIdThumbnailsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **universeId** | **long** |  |  |
| **thumbnailIds** | [**List&lt;long&gt;**](long.md) |  |  |
| **size** | **string** | The thumbnail size, formatted widthxheight | [optional] [default to 768x432] |
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
| **404** | 5: The requested universe does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

