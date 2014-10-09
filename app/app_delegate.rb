class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @debts_controller = DebtsController.alloc.initWithNibName(nil, bundle:nil)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(@debts_controller)
    @window.makeKeyAndVisible
    true
  end
end
