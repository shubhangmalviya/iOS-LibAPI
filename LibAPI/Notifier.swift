class Notifier<T> {
    private let responseCallback: ResponseCallbackWrapper<T>
    private let errorLookupTable : ErrorLookupTable
    
    init<U : ResponseCallback>(callback: U, lookupTable: ErrorLookupTable) where U.Response == T {
        responseCallback = ResponseCallbackWrapper<T>(responseCallback: callback)
        errorLookupTable = lookupTable
    }
    
    
}
