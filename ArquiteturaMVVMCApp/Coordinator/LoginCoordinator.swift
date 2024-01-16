import UIKit

final class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let controller = LoginViewController()
        controller.onRegisterTap = {
            let coordinator = RegisterCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        controller.onLoginSuccess = {
            let coordinator = HomeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        navigationController.pushViewController(controller, animated: true)
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
