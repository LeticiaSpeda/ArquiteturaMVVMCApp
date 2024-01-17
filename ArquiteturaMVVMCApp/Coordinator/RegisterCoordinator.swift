import UIKit

final class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let controller = RegisterViewController()
        
        controller.onOpenTap = {
            self.navigationController.popToRootViewController(animated: true)
        }
        
        controller.onRegisterSuccess = {
            let coordinator = HomeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        navigationController.pushViewController(controller, animated: true)
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
