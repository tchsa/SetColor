import UIKit

final class ViewController: UIViewController {

   @IBOutlet var screenView: UIView!
   
   @IBOutlet var redLabel: UILabel!
   @IBOutlet var greenLabel: UILabel!
   @IBOutlet var blueLabel: UILabel!
   
   @IBOutlet var redSlider: UISlider!
   @IBOutlet var greenSlider: UISlider!
   @IBOutlet var blueSlider: UISlider!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      screenView.layer.cornerRadius = 15
      
      setColorView()
      
      redLabel.text = string(from: redSlider)
      greenLabel.text = string(from: greenSlider)
      blueLabel.text = string(from: blueSlider)
   }
   
   @IBAction func checkSliders(_ sender: UISlider) {
      setColorView()
      
      switch sender {
      case redSlider:
         redLabel.text = string(from: redSlider)
      case greenSlider:
         greenLabel.text = string(from: greenSlider)
      default:
         blueLabel.text = string(from: blueSlider)
      }
   }

   private func setColorView() {
      screenView.backgroundColor = UIColor(
         red: CGFloat(redSlider.value),
         green: CGFloat(greenSlider.value),
         blue: CGFloat(blueSlider.value),
         alpha: 1
      )
   }
   
   private func string(from slider: UISlider) -> String {
      String(format: "%.2f", slider.value)
   }

}

