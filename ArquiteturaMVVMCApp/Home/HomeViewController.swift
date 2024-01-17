import UIKit

final class HomeViewController: UIViewController {
    
    private lazy var homeView: HomeView = {
        let view = HomeView(frame: .zero)
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}
