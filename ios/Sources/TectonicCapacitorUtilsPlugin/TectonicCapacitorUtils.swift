import Foundation

@objc public class TectonicCapacitorUtils: NSObject {
    @objc public static let shared = TectonicCapacitorUtils()
    
    private var apnsToken: String?

    private override init() {
        super.init()
    }

    @objc public func setAPNSToken(_ token: Data) {
        apnsToken = token.map { String(format: "%02.2hhx", $0) }.joined()
    }

    @objc public func getAPNSToken() -> String? {
        return apnsToken
    }
}
