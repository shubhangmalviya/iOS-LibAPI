
/**
 Internal class created for generically handling response callback, as currently there is
 no workaroud to conform generic typ to protocols.
 */
class ResponseCallbackWrapper<T> : ResponseCallback {
    
    let _onSuccess: (T) -> Void
    let _onFailure: (ErrorResponse) -> Void
    
    required init<U: ResponseCallback>(responseCallback: U) where U.Response == T {
        _onSuccess = responseCallback.onSuccess
        _onFailure = responseCallback.onError
    }
    
    func onSuccess(_ response: T) {
        _onSuccess(response)
    }
    
    func onError(errorResponse: ErrorResponse) {
        _onFailure(errorResponse)
    }
}
