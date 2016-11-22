/**
 * A lookup table implementation for resolving and mapping the error codes
 * to their proper display Human Readable Error Messages.
 */
public class ErrorLookupTable {

    // look up table
    var errorCodeMap = [String: Int]()
    static let INVALID_MAPPING = -1

    /**
      Stores a display message entry in the lookup table for a given error code.
      
     - parameter errorCode: the error code to be translated.
      
     - parameter message: the equivalent error message.
     */
    public func translate(errorCode: String, with message: Int) -> Void {
        errorCodeMap[errorCode] = message
    }

    /**
     * Checks whether the look up table contains the message entry for the given error code.
     * - parameter errorCode: the error code.
     * - returns true if the mapping exists false otherwise.
     */
    public func isResolvable(errorCode: String) -> Bool {
        return errorCodeMap[errorCode] != nil
    }

    /**
     * Resolves the error code to the display message.
     * - parameter errorCode: the error code.
     * - returns the translated message equivalent of the error code.
     */
    public func resolve(errorCode: String) -> Int {
        return isResolvable(errorCode: errorCode) ? errorCodeMap[errorCode]! : ErrorLookupTable.INVALID_MAPPING
    }

}
