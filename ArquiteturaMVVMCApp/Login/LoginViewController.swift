import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - Properts
    private lazy var loginView: LoginView = {
        let view = LoginView(frame: .zero)
        return view
    }()
    
    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
}
