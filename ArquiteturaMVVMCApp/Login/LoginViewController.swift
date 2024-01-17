import UIKit

final class LoginViewController: UIViewController, ViewCode {
    
    //MARK: - Closure
    var onRegisterTap: (() -> Void)?
    var onLoginSuccess: (() -> Void)?
    
    
    //MARK: - Properts
    private lazy var loginView: LoginView = {
        let view = LoginView(frame: .zero)
        view.onRegisterTap = { [weak self] in
            self?.onRegisterTap?()
        }
        view.onEnterTap = { [weak self] email, password in
            self?.onLoginSuccess?()
        }
        return view
    }()
    
    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        commonInit()
    }
    
    //MARK: - Helpers
    private func openTap(_ email: String, _ passwdord: String) {
        let userViewModel = UserViewModel()
        userViewModel.getUserFromApi(email, passwdord) { [weak self] result in
            switch result {
            case .success(_):
                self?.onLoginSuccess?()
            case .failure(let error):
                self?.showMessage("Erro", error.localizedDescription)
            }
        }
    }
    
    func showMessage(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    func setupStyle() {
        self.title = "Login"
        view.backgroundColor = .systemMint
    }
}
