import Capacitor
import Foundation

@objc(EnvironmentCheckerPlugin)
public class EnvironmentCheckerPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "EnvironmentCheckerPlugin"
    public let jsName = "EnvironmentChecker"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "isTestFlight", returnType: CAPPluginReturnPromise)
    ]

    @objc public func isTestFlight(_ call: CAPPluginCall) {
        let isTestFlight = Bundle.main.appStoreReceiptURL?.lastPathComponent == "sandboxReceipt"
        call.resolve(["isTestFlight": isTestFlight])
    }
}
