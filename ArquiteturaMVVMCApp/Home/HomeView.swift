import UIKit

final class HomeView: UIView, ViewCode {
    
    //MARK: - Properts
    private lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 18)
        label.enableViewCode()
        return label
    }()
    
    //MARK: - override
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }
    
    //MARK: - Helpers
    func setupHierarchy() {
        addSubview(helloLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
