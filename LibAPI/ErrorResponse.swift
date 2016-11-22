/**
 * Represents an API error response. This includes the human readable error messages and
 * also includes the proper meta info that could be helpful during the debugging.
 */
public struct ErrorResponse {
    public static let INVALID_STATUS_CODE = 1001
    
    public let statusCode: Int?
    public let errorResponsePayload: String?
    public let errorCode: String?
    public let message: Int?
    public let error: Error?
    
    private init(builder: Builder) {
        statusCode = builder.statusCode
        errorResponsePayload = builder.errorResponsePayload
        errorCode = builder.errorCode
        message = builder.message
        error = builder.error
    }
    
    /**
     * Builds the Error response.
     */
    public class Builder {
        var statusCode: Int?
        var errorResponsePayload: String?
        var errorCode: String?
        var message: Int?
        var error: Error?
        
        /**
         * Set the HTTP status code.
         * - parameter code: the HTTP status code.
         */
        public func withStatusCode(code: Int) -> Builder {
            statusCode = code
            return self
        }
        
        /**
         * Sets the error response payload returned from the server.
         * - parameter payload: the error response payload.
         */
        public func withErrorResponsePayload(payload: String) -> Builder {
            errorResponsePayload = payload
            return self
        }
        
        /**
         * Sets the error code associated with this request.
         * - parameter code: the API error code enumeration.
         */
        public func withErrorCode(code: String) -> Builder {
            errorCode = code
            return self
        }
        
        /**
         * Sets the human readable error message for this request.
         * - parameter msg: the String resource of the error message.
         */
        public func withErrorMessage(msg: Int) -> Builder {
            message = msg
            return self
        }
        
        /**
         * Sets the associated exception or error object with this request if any.
         * - parameter err: the instance of error or exception.
         */
        public func withError(err: Error) -> Builder {
            error = err
            return self
        }
        
        /**
         * Builds the Error Response
         */
        public func build() -> ErrorResponse {
            return ErrorResponse(builder: self)
        }
        
    }
}
