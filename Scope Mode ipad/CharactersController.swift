import Foundation
import UIKit

class CharactersController: UIViewController {
    var hiddenProjectVar =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : PlatformController = segue.destinationViewController as! PlatformController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}