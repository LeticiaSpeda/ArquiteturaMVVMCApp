import UIKit

final class RegisterViewController: UIViewController {
    
    //MARK: - Closures
    var onOpenTap: (() -> Void)?
    var onRegisterSuccess: (() -> Void)?
    
    lazy var registerView: RegisterView = {
        let view = RegisterView(frame: .zero)
        view.onOpenTap = { [weak self] in
            self?.onOpenTap?()
        }
        
        view.onRegisterTap = { [weak self] email, password in
            self?.registerTap(email, password)
        }
        return view
    }()
    
    
    // MARK: - override
    override func loadView() {
        super.loadView()
        self.view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "Registro"
    }
    
    //MARK: - Helpers
    private func registerTap(_ email: String, _ passwdord: String) {
        let userViewModel = UserViewModel()
        userViewModel.setUserFromApi(email, passwdord) { [weak self] result in
            switch result {
            case .success(_):
                self?.onRegisterSuccess?()
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
    
}
