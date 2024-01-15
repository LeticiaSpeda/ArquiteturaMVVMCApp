import UIKit

final class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let controller = LoginViewController()
        navigationController.pushViewController(controller, animated: true)
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
