//
//  Network.swift
//  KnowledgeCompetition
//
//  Created by Murat Çiçek on 20.04.2022.
//

import Foundation

class QuestionNetwork {
    func getAllData(url : String,httpMethod: httpMethod,  completion: @escaping (Result<Question,Error>) -> Void) {
        
        guard let url = URL(string:url) else {return }
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod.rawValue
        let session = URLSession.shared
        session.dataTask(with: request) { data , response , error in
            if let error = error {
                print(error.localizedDescription)
            }
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decoded = try decoder.decode(Question.self, from: data)
                        completion(.success(decoded))
                }
                catch {
                    completion(.failure(error.localizedDescription as! Error))
                }
                
            }
        }.resume()
        
        
    }
}
