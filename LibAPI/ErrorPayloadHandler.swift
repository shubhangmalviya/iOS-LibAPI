class ErrorPayloadHandler {
    let errorResponseTransformer: ErrorResponseTransformer
    
    public init(errorTransformer: ErrorResponseTransformer) {
        errorResponseTransformer = errorTransformer
    }
    
    
}
