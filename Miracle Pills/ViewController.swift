//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Sandy Zhang on 3/12/17.
//  Copyright © 2017 Sandy Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipText: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    
    let states = ["Alaska", "Alabama", "Arkansas", "American Samoa", "Arizona", "California", "Colorado", "Connecticut", "District of Columbia", "Delaware", "Florida", "Georgia", "Guam", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi","Montana", "North Carolina","North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        //when button is pressed the state picker shows
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipLabel.isHidden = true
        zipText.isHidden = true
        buyNowBtn.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //this function returns 1 component in picker view, as in 1 set of rows
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //this function generates number of rows by counting the number of items in the states array
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //this function returns the states as titles for each row in the picker view
        return states[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //sets title to the button when scrolling is stopped
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        //picker is hidden again when state is selected
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipLabel.isHidden = false
        zipText.isHidden = false
        buyNowBtn.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        pillImage.isHidden = true
        productLabel.isHidden = true
        priceLabel.isHidden = true
        divider.isHidden = true
        nameLabel.isHidden = true
        nameText.isHidden = true
        addressLabel.isHidden = true
        addressText.isHidden = true
        cityLabel.isHidden = true
        cityText.isHidden = true
        stateLabel.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipLabel.isHidden = true
        zipText.isHidden = true
        buyNowBtn.isHidden = true
        successImg.isHidden = false
    }
    
}

