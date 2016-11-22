/**
 * Provides a mechanism to the user for mutating the error response received.
 * So as to customise the error received.
 */
public protocol ErrorResponseTransformer {
    
    /**
        Creates the instance.
       - parameter errorLookupTable: the error message lookup.
     */
    init(errorLookUpTable: ErrorLookupTable)
    
    /**
     * Provides an easy way to intercept and mutate the Error response delivered.
     *
     * - parameter httpStatusCode: the HTTP status code.
     * - parameter errorResponsePayload: the error response payload received.
     * - return the mapped ErrorReponse
     */
    func transform(httpStatusCode: Int, errorResponsePayload: String) -> ErrorResponse
    
    /**
     * Gets the error message resolver associated with this instance.
     * - returns the instance of error message resolver.
     */
    func getErrorLookUpTable() -> ErrorLookupTable
    
    
}
