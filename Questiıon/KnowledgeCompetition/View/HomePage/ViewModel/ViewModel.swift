
import Foundation
import SwiftUI


class HomePageScreenViewModel : ObservableObject {
    @Published  var model = [Results]()
    func getDatas(url: String){
        
        QuestionNetwork().getAllData(url: url, httpMethod: .GET) { [weak self] (response: Result<Question,Error>) in
            guard let self = self else {return}
            switch response {
            case .success(let success):
           
                DispatchQueue.main.async {
                    self.model = success.results
                }
            case .failure(let failure):
                print(failure)
            }
            
        }
    }
    
}
