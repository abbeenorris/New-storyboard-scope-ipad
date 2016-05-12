import Foundation
import UIKit

class PartProductionController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    var budgetVar = String()
    var platformVar = String()
    var descriptionVar = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : StyleController = segue.destinationViewController as! StyleController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
}