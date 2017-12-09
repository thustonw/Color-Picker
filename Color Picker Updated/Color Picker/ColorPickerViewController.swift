import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let initialIndex = 0
    
    let colors:[Color] = [
        Color(name: "Red", color: UIColor.red),
        Color(name: "Orange", color: UIColor.orange),
        Color(name: "Yellow", color: UIColor.yellow),
        Color(name: "Green", color: UIColor.green),
        Color(name: "Blue", color: UIColor.blue),
        Color(name: "Purple", color: UIColor.purple)
    ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colors[row].color
        self.outputDisplay.text = colors[row].name
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var outputDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        self.pickerView.selectRow(initialIndex, inComponent: 0, animated: true)
        let initialColor = colors[initialIndex]
        self.view.backgroundColor = initialColor.color
        self.outputDisplay.text = initialColor.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
