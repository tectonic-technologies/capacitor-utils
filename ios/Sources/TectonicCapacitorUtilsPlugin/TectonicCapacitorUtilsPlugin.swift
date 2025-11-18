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
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = TectonicCapacitorUtils()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
