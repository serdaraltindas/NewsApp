//
//  WebService.swift
//  NewsApp
//
//  Created by Serdar Altındaş on 26.04.2023.
//

import Foundation

class WebService {
    // escaping -> haberleri indirdikten sonra ne yapacağız, çekeceğiz o yüzden ascyn çalışacak.
    func haberleriIndir(url : URL, completion: @escaping ([News]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                
                let haberler = try? JSONDecoder().decode([News].self, from: data)
                if let haberler = haberler {
                    completion(haberler)
                }
            }
        }.resume()
    }
}
