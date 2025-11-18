import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(TectonicCapacitorUtilsPlugin)
public class TectonicCapacitorUtilsPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "TectonicCapacitorUtilsPlugin"
    public let jsName = "TectonicCapacitorUtils"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getAPNSToken", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = TectonicCapacitorUtils.shared

    @objc func getAPNSToken(_ call: CAPPluginCall) {
        let token = implementation.getAPNSToken()
        call.resolve([
            "token": token ?? NSNull()
        ])
    }
}
