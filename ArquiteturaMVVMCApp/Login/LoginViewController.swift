import UIKit

final class LoginViewController: UIViewController, ViewCode {
   
    //MARK: - Properts
    private lazy var loginView: LoginView = {
        let view = LoginView(frame: .zero)
        return view
    }()
    
    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        commonInit()
    }
    
    //MARK: - Helpers
    func setupHierarchy() {
    }
    
    func setupConstraints() { }
    
    func setupStyle() {
        self.title = "Login"
        view.backgroundColor = .systemMint
    }
}
