import UIKit

final class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let controller = RegisterViewController()
        navigationController.pushViewController(controller, animated: true)
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
