
//API-JSON
//Veri kaynak sağlayıcıları.
//JSON -> FORMATTED
//MVVM -> MODEL-VİEW-VİEWMODEL

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate  = self
        
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/BTK-iOSDataSet/master/dataset.json")
        WebService().haberleriIndir(url: url!) { (haberler) in
            if let haberler = haberler {
                print(haberler)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsTableViewCell
        cell.titleLabel.text = "TEST"
        cell.storyLabel.text = "TEST"
        return cell
    }
}

