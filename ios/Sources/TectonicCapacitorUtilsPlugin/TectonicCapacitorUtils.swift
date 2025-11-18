import Foundation

@objc public class TectonicCapacitorUtils: NSObject {
    private var apnsToken: String?

    @objc public func setAPNSToken(_ token: Data) {
        apnsToken = token.map { String(format: "%02.2hhx", $0) }.joined()
    }

    @objc public func getAPNSToken() -> String? {
        return apnsToken
    }
}
