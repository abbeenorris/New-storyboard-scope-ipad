import Foundation
import UIKit

class RunningTimeController: UIViewController, UIPickerViewDelegate {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    
    
    @IBOutlet weak var runningTimePicker: UIDatePicker!
    let timeFormatter = NSDateFormatter()
    func setTime() {
        timeFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        timeVar = timeFormatter.stringFromDate(runningTimePicker.date)
    }
    
    @IBAction func runningTimePickerTime(sender: AnyObject) {
        setTime()
    }
    
    
    
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : DeadlineController = segue.destinationViewController as! DeadlineController
        DestViewController.projectTitleVar = projectTitleVar
        
        let clientName : DeadlineController = segue.destinationViewController as! DeadlineController
        clientName.clientNameVar = clientNameVar
        
        let videoType : DeadlineController = segue.destinationViewController as! DeadlineController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : DeadlineController = segue.destinationViewController as! DeadlineController
        runningTime.timeVar = timeVar
        
    }
    
}