class Notifier<T> {
    private let responseCallback: ResponseCallbackWrapper<T>
    private let errorLookupTable : ErrorLookupTable
    
    init(callback: ResponseCallbackWrapper<T>, lookupTable: ErrorLookupTable) {
        responseCallback = callback
        errorLookupTable = lookupTable
    }
    
    
}
