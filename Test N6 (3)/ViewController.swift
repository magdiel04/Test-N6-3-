//
//  ViewController.swift
//  Test N6 (3)
//
//  Created by Magdiel Altynbekov on 5/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cola: [Order] = [Order(photo: "cola", naz: "Coca-Cola 0,5л", amount: "50сом"), Order(photo: "bread", naz: "Хлеб", amount: "30сом"),Order(photo: "pide", naz: "Пиде с сыром", amount: "250"),Order(photo: "chips", naz: "Чипсы с манго", amount: "130"),Order(photo: "milk", naz: "Молоко", amount: "1л-80сом"),Order(photo: "mandarin", naz: "Мандарины", amount: "1кг-200сом")]
    
    

    
    
    
    
    
    
    
    
  //  ["Coca-Cola 0,5л - 50сом","Молоко 1л - 70сом","Хлеб - 30сом","Чипсы - 90сом","Пиде с сыром - 250сом","Мандарин - 200сом"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.dataSource = self
//        tableView.register(UITableView.self, forCellReuseIdentifier: "products")
        // Do any additional setup after loading the view.
    }
    


}



extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cola.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "products", for: indexPath) as! TableViewCell
        
        cell.nameLabel.text = cola[indexPath.row].naz
        cell.priceLabel.text = cola[indexPath.row].amount
        cell.firstImage.image = UIImage(named: "\(cola[indexPath.row].photo)")
        
        return cell
        
        
    }
    
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}
