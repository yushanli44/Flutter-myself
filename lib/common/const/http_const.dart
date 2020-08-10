class HttpConst {
  HttpConst();

  /// Connection time: 5S
  static const connectTimeout = 5000;

  /// Receiving time: 25S
  static const receiveTimeout = 25000;

  /// Accept-Encoding:gzip, deflate
  static const acceptGzip = 'gzip, deflate';

  /// header: Access token key for login authentication
  static const headAuthorization = 'Authorization';

  /// token type
  static const headAuthorizationTypeBearer = 'Bearer';

  /// Header: Language code
  static const headXHttpLanguageCode = 'X-HTTP-Language-Code';

  /// Header: Tenant key
  static const headXHttpTenantKey = 'X-HTTP-Tenant-Key';

  /// Header: Location information (latitude, longitude), acquisition date and time
  static const headXHttpGeoLocation = 'X-HTTP-GeoLocation';

  /// Header: HTTP method (overwrite)
  static const headXHttpMethod = 'X-HTTP-Method-Override';

  /// Header: Accept-Encoding
  static const acceptEncoding = 'Accept-Encoding';

  /// HTTP method: GET
  static String methodGet = 'GET';

  /// HTTP method: POST
  static String methodPost = 'POST';

  /// HTTP method: PUT
  static String methodPut = 'PUT';

  /// HTTP method: DELETE
  static String methodDelete = 'DELETE';

  /// HTTP status code
  /// 200: OK. The request was successful.
  static int statusOk = 200;

  /// 201: Created.
  /// The resource creation request by the POST method was successful.
  /// The response header includes Location information (URI of created resource).
  static int statusCreated = 201;

  /// 204: No content.
  /// Resource deletion request by DELETE method was successful.
  static int statusNoContent = 204;

  /// 400: The request is invalid.
  /// The necessary elements are not described in XML, there is a problem with the XML format, etc.
  static int statusBadRequest = 400;

  /// 401: Authentication required.
  /// The authentication information is incorrect.
  static int statusUnauthorized = 401;

  /// 403: Access is prohibited.
  /// There is no problem in authentication, but there is no access right. An operation that requires administrator account privileges has been performed using a user account.
  static int statusForbidden = 403;

  /// 404: Resource not found.
  /// There is no resource at the specified URI.
  static int statusNotFound = 404;

  /// 405: Method not allowed.
  /// When using the POST method for a URI where POST is not allowed, etc.
  static int statusMethodNotAllowed = 405;

  /// 406: Not accepted.
  /// Accept server did not specify media type that server can send.
  static int statusNotAcceptable = 406;

  /// 409: The request cannot be completed because it conflicts with the current resource.
  /// The data you are trying to create or update conflicts with existing data due to uniqueness constraints.
  static int statusConflict = 409;

  /// 415: The specified media type is not supported.
  /// When the media type of the body of PUT or POST request is not XML etc.
  static int statusUnsupportedMediaType = 415;

  /// 500: Internal server error.
  /// An exception occurred during processing.
  static int statusInternalServerError = 500;

  /// 900: DIO related error
  /// Status code created to handle DIO related errors instead of HTTP status code
  static int statusDioError = 900;

  /// 901: Client internal error
  /// Status code created to handle client internal error, not HTTP status code
  static int statusClientError = 901;

  /// 902: Current position acquisition error
  static int statusClientLocationError = 902;

  /// 903: Login check error
  static int statusLoginCheckError = 903;

  /// 904: No network connection error
  static int hasNotInternetError = 904;
}
