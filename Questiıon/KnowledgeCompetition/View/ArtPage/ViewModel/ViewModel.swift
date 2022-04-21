
import Foundation
import SwiftUI


class ArtViewModel : ObservableObject {
    @Published  var model = [Question]()

    func getDatas(){
        
        QuestionNetwork().getAllData(url: Constants.url.artUrl, httpMethod: .GET) { [weak self] (response: Result<[Question],Error>) in
            guard let self = self else {return}
            switch response {
            case .success(let success):
                DispatchQueue.main.async {
                    self.model = success
                }
            case .failure(let failure):
                print(failure)
            }
            
        }
    }
    
}
