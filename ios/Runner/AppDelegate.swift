import UIKit
import Flutter
import ACPCore

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    ACPCore.setWrapperType(.flutter)
    ACPCore.setLogLevel(.debug)
    ACPCore.configure(withAppId: "94f571f308d5/3a1adee588b7/launch-7e4c1934b17b-development")
    ACPIdentity.registerExtension()
    ACPLifecycle.registerExtension()
    ACPCore.start {
      ACPCore.lifecycleStart(nil)
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
