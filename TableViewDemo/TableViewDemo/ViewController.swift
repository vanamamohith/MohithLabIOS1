//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Vanama,Mohith Naga Venkata Sai on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(prodName : String, prodCategory : String){
        self.productName = prodName
        self.productCategory  = prodCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return the cell with data.
        // create cells dynamically
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "resuableCell", for: indexPath)
        //Assign the data to the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
        //return the cell
        return cell
        
    }
    
    var productArray = [Product]()
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let product1 = Product(prodName : "MacBookAir", prodCategory: "Laptop")
        productArray.append(product1)
        let product2 = Product(prodName : "iPhone", prodCategory: "Mobile Phone")
        productArray.append(product2)
        let product3 = Product(prodName : "AirPods", prodCategory: "Accessories")
        productArray.append(product3)
        let product4 = Product(prodName : "iPad", prodCategory: "Tab")
        productArray.append(product4)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as! DetailsViewController
            destination.product = productArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }


}

