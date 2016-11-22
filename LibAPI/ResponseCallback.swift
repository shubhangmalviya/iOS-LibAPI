
/**
 * The Response callback invoked after the result is received and analysed.
 */
public protocol ResponseCallback {
    
    /// the type of the response.
    associatedtype Response
    
    /**
     * Invoked when we have the success result in the defined format from the APIs.
     *
     * - parameter response:  the success response data
     */
    func onSuccess(_ response: Response) -> Void
    
    /**
     * Invoked when we encounter any error from the APIs.
     *
     * - parameter errorResponse: the error response with proper display message
     *                      and proper information for debugging.
     */
    func onError(errorResponse: ErrorResponse) -> Void
}
