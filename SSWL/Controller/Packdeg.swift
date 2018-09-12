//
//  Packdeg.swift
//  SSWL
//
//  Created by Ahmed on 9/3/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class Packdeg: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet var TableView: UITableView!
    var listOfPack = ["as","gg","hh","jj","kk","kk"]
    var listOfPrice = ["50$","67.7$","98.5$","23$","24.5$","39$"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPack.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CellTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CellTableViewCell)!
        cell.namelbl.text = listOfPack[indexPath.row]
        cell.Pricelbl.text = listOfPrice[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        VC?.PackgeName = listOfPack[indexPath.row]
        VC?.PriceOfPackage = listOfPrice[indexPath.row]
        self.navigationController?.pushViewController(VC!, animated: true)
    }
    
    
}
