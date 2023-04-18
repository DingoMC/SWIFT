//
//  ViewController.swift
//  lab7-1
//
//  Created by student on 18/04/2023.
//

import UIKit

struct Dom {
    var nazwa : String
    var powierzchnia : Float
    var pokoje : Int
    var dzialka : Float
    var pietra : Int
}

struct Mieszkanie {
    var nazwa : String
    var powierzchnia : Float
    var pokoje : Int
    var dwupoziomowe : Bool
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let domy : [Dom] = [
        Dom(nazwa: "Dom 1", powierzchnia: 120, pokoje: 7, dzialka: 5500, pietra: 2), Dom(nazwa: "Dom 2", powierzchnia: 80, pokoje: 6, dzialka: 10000, pietra: 1), Dom(nazwa: "Dom 3", powierzchnia: 100, pokoje: 6, dzialka: 4000, pietra: 2)]
    let mieszkania : [Mieszkanie] = [Mieszkanie(nazwa: "Mieszkanie 1", powierzchnia: 40, pokoje: 3, dwupoziomowe: false), Mieszkanie(nazwa: "Mieszkanie 2", powierzchnia: 50, pokoje: 4, dwupoziomowe: false), Mieszkanie(nazwa: "Mieszkanie 3", powierzchnia: 65, pokoje: 5, dwupoziomowe: true)
    ]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
            case 0: return domy.count
            case 1: return mieszkania.count
            default: return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if (indexPath.section == 0) {
            cell.textLabel?.text = domy[indexPath.row].nazwa + " "
            cell.textLabel?.text! += String(domy[indexPath.row].powierzchnia)
        }
        else {
            cell.textLabel?.text = mieszkania[indexPath.row].nazwa
        }
        return cell
    }
    @IBOutlet weak var tabela: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

