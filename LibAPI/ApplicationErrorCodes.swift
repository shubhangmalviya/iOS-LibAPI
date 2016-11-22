/**
 * Represents common application level error codes. The SDK users should create their own
 * Error codes enums.
 */
enum ApplicationErrorCodes : String, RawRepresentable {
    /**
     * Represents the error occurred due to internet.
     */
    case INTERNET_ERROR
    
    /**
     * Represents any unknown error that occurred.
     */
    case UNKNOWN_ERROR
}
