import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tytul: UILabel!
    @IBOutlet weak var dzienTyg: UITextField!
    @IBOutlet weak var dzienLabel: UILabel!
    @IBAction func z(_ sender: Any) {
        dzienLabel.text = "Wprowadzono: " + dzienTyg.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
