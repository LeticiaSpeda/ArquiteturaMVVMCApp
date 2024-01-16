import UIKit

final class LoginView: UIView, ViewCode {
    
    //MARK: - Properts
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 14)
        label.enableViewCode()
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "informe seu email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black.withAlphaComponent(0.6)])
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 62))
        textField.leftViewMode = .always
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 12, weight: .semibold)
        textField.layer.cornerRadius = 10
        textField.enableViewCode()
        return textField
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Senha"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "informe sua senha", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black.withAlphaComponent(0.6)])
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 62))
        textField.leftViewMode = .always
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 12, weight: .semibold)
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    @available(*,unavailable)
    required init?(coder: NSCoder) { nil }
    
    //MARK: - Helpers
    func setupHierarchy() {
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            setupEmailLabelConstraints() +
            setupEmailTextFieldConstraints() +
            setupPasswordLabelConstraints() +
            setupPasswordTextFieldConstraints()
        )
    }
    
    private func setupEmailLabelConstraints() -> [NSLayoutConstraint] {
        [
            emailLabel.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: 40
            ),
            emailLabel.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 12
            ),
            emailLabel.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -12),
        ]
    }
    
    private func setupPasswordLabelConstraints() -> [NSLayoutConstraint] {
        [
            passwordLabel.topAnchor.constraint(
                equalTo: emailTextField.bottomAnchor,
                constant: 36
            ),
            passwordLabel.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 12
            ),
            passwordLabel.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -12),
        ]
    }
    
    
    private func setupEmailTextFieldConstraints() -> [NSLayoutConstraint] {
        [
            emailTextField.topAnchor.constraint(
                equalTo: emailLabel.bottomAnchor,
                constant: 12
            ),
            emailTextField.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 12
            ),
            emailTextField.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -12),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 30)
        ]
    }
    
    private func setupPasswordTextFieldConstraints() -> [NSLayoutConstraint] {
        [
            passwordTextField.topAnchor.constraint(
                equalTo: passwordLabel.bottomAnchor,
                constant: 12
            ),
            passwordTextField.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 12
            ),
            passwordTextField.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -12),
            
            passwordTextField.heightAnchor.constraint(equalToConstant: 30)
        ]
    }
    
    func setupStyle() {
        backgroundColor = .systemMint
    }
    
}
