import UIKit

final class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let controller = HomeViewController()
        controller.modalPresentationStyle = .overFullScreen
        navigationController.present(controller, animated: true)
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
