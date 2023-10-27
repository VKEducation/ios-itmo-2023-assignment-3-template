import UIKit

class LoginViewController: BaseViewController<LoginView> {

    override func viewDidLoad() {
        super.viewDidLoad()

        customView.onLogin = { email, password in
            SceneDelegate.getWindowsDelegate()?.rootViewController = RowsViewController()
        }
    }
    
}
