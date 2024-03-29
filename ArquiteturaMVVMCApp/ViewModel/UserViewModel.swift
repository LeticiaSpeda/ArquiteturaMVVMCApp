import Foundation

final class UserViewModel {
    private let model: UserModel
    
    var email: String {
        model.email
    }
    
    init(model: UserModel) {
        self.model = model
    }
    
    init() {
        self.model = UserModel()
    }
    
    func getUserFromApi(_ email: String, _ password: String, completion: @escaping (Result<UserViewModel, Error>) -> Void) {
        
        let manager = UserManager(business: UserBusiness())
        manager.login(email: email, password: password) { userModel in
            
            completion(.success(UserViewModel(model: userModel)))
            
        } failureHandler: { error in
            completion(.failure(error))
        }
    }
    
    func setUserFromApi(_ email: String, _ password: String, completion: @escaping (Result<UserViewModel, Error>) -> Void) {
        
        let manager = UserManager(business: UserBusiness())
        manager.register(email: email, password: password) { userModel in
            completion(.success(UserViewModel(model: userModel)))
        } failureHandler: { error in
            completion(.failure(error))
        }
    }
}
