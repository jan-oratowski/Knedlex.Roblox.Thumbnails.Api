# Knedlex.Roblox.Thumbnails.Api.Api.PlacesApi

All URIs are relative to *https://thumbnails.roblox.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**V1PlacesGameiconsGet**](PlacesApi.md#v1placesgameiconsget) | **GET** /v1/places/gameicons | Fetches game icon URLs for a list of places. Ids that do not correspond to a valid place will be filtered out. |

<a id="v1placesgameiconsget"></a>
# **V1PlacesGameiconsGet**
> RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse V1PlacesGameiconsGet (List<long> placeIds, string returnPolicy = null, string size = null, string format = null, bool? isCircular = null)

Fetches game icon URLs for a list of places. Ids that do not correspond to a valid place will be filtered out.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Knedlex.Roblox.Thumbnails.Api.Api;
using Knedlex.Roblox.Thumbnails.Api.Client;
using Knedlex.Roblox.Thumbnails.Api.Model;

namespace Example
{
    public class V1PlacesGameiconsGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://thumbnails.roblox.com";
            var apiInstance = new PlacesApi(config);
            var placeIds = new List<long>(); // List<long> | The place ids.
            var returnPolicy = "PlaceHolder";  // string | Optional policy to use in selecting game icon to return (default = PlaceHolder). (optional)  (default to PlaceHolder)
            var size = "50x50";  // string | The thumbnail size, formatted widthxheight (optional)  (default to 50x50)
            var format = "Png";  // string | The thumbnail format (optional)  (default to Png)
            var isCircular = false;  // bool? | The circle thumbnail output parameter, true or false (optional)  (default to false)

            try
            {
                // Fetches game icon URLs for a list of places. Ids that do not correspond to a valid place will be filtered out.
                RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse result = apiInstance.V1PlacesGameiconsGet(placeIds, returnPolicy, size, format, isCircular);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PlacesApi.V1PlacesGameiconsGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the V1PlacesGameiconsGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Fetches game icon URLs for a list of places. Ids that do not correspond to a valid place will be filtered out.
    ApiResponse<RobloxWebWebAPIModelsApiArrayResponseRobloxWebResponsesThumbnailsThumbnailResponse> response = apiInstance.V1PlacesGameiconsGetWithHttpInfo(placeIds, returnPolicy, size, format, isCircular);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PlacesApi.V1PlacesGameiconsGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **placeIds** | [**List&lt;long&gt;**](long.md) | The place ids. |  |
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

