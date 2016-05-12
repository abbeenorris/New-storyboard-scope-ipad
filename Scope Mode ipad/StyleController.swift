// Hi kt, the code on this page doens't work, it wont pass the data in projectTitleVar(the data comes from ProjectNameConttroller and is passed through all the controllers up until this point) the problem is that we have 3 buttons on the page all going to different view controllers so i put the code to pass the data to the correct view controller into a action button which is linked to the right segue but this doesn't work. Could you ask Kyle about this? thanks Sam.

import Foundation
import UIKit

class StyleController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    
    @IBAction func liveBtn(sender: AnyObject) {
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let DestViewController : CharactersController = segue.destinationViewController as! CharactersController
            DestViewController.projectTitleVar = projectTitleVar
            
        }
    }
    @IBAction func aniBtn(sender: AnyObject) {
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let DestViewController2 : CharactersController = segue.destinationViewController as! CharactersController
            DestViewController2.projectTitleVar = projectTitleVar
        
        }
    }
    
    @IBAction func mixedBtn(sender: AnyObject) {
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let DestViewController3 : CharactersController = segue.destinationViewController as! CharactersController
            DestViewController3.projectTitleVar = projectTitleVar
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    }
}