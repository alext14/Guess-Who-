
/*
ViewController.swift
  GuessThatSound

  Created by CSOM on 4/24/17.
  Copyright © 2017 CSOM. All rights reserved.
*/

import UIKit
import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    var audioPlayer = AVAudioPlayer()
    
    // MARK: Outlets

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var thirdText: UITextField!
    @IBOutlet weak var fourthText: UITextField!
    @IBOutlet weak var fifthText: UITextField!
    @IBOutlet weak var sixthText: UITextField!
    @IBOutlet weak var seventhText: UITextField!
    @IBOutlet weak var eighthText: UITextField!
    @IBOutlet weak var ninthText: UITextField!
    @IBOutlet weak var tenthText: UITextField!
    @IBOutlet weak var eleventhText: UITextField!
    @IBOutlet weak var twelfthText: UITextField!
    @IBOutlet weak var thirteenthText: UITextField!
    @IBOutlet weak var fourteenthText: UITextField!
    @IBOutlet weak var fifteenthText: UITextField!
    @IBOutlet weak var sixteenthText: UITextField!
    @IBOutlet weak var seventeenthText: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var ninthLabel: UILabel!
    @IBOutlet weak var tenthLabel: UILabel!
    @IBOutlet weak var eleventhLabel: UILabel!
    @IBOutlet weak var twelfthLabel: UILabel!
    @IBOutlet weak var thirteenthLabel: UILabel!
    @IBOutlet weak var fourteenthLabel: UILabel!
    @IBOutlet weak var fifteenthLabel: UILabel!
    @IBOutlet weak var sixteenthLabel: UILabel!
    @IBOutlet weak var seventeenthLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var firstImage: UIButton!
    @IBOutlet weak var secondImage: UIButton!
    @IBOutlet weak var thirdImage: UIButton!
    @IBOutlet weak var fourthImage: UIButton!
    @IBOutlet weak var fifthImage: UIButton!
    @IBOutlet weak var sixthImage: UIButton!
    @IBOutlet weak var seventhImage: UIButton!
    @IBOutlet weak var eighthImage: UIButton!
    @IBOutlet weak var ninthImage: UIButton!
    @IBOutlet weak var tenthImage: UIButton!
    @IBOutlet weak var eleventhImage: UIButton!
    @IBOutlet weak var twelfthImage: UIButton!
    @IBOutlet weak var thirteenthImage: UIButton!
    @IBOutlet weak var fourteenthImage: UIButton!
    @IBOutlet weak var fifteenthImage: UIButton!
    @IBOutlet weak var sixteenthImage: UIButton!
    @IBOutlet weak var seventeenthImage: UIButton!
    
    // MARK: View and Sound Functions

    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 0, height: 1670)
        firstText.delegate = self
        secondText.delegate = self
        thirdText.delegate = self
        fourthText.delegate = self
        fifthText.delegate = self
        sixthText.delegate = self
        seventhText.delegate = self
        eighthText.delegate = self
        ninthText.delegate = self
        tenthText.delegate = self
        eleventhText.delegate = self
        twelfthText.delegate = self
        thirteenthText.delegate = self
        fourteenthText.delegate = self
        fifteenthText.delegate = self
        sixteenthText.delegate = self
        seventeenthText.delegate = self
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("textFieldShouldReturn"))
        view.addGestureRecognizer(tap)
    }
    
    
    
    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: Data from \(soundName) could not be played as an audio file")
            }
        } else {
            print("ERROR: Could not load data from file \(soundName)")
        }
    }
    
    // MARK: Animation Functions
    
    func animateImage() {
        let bounds = self.firstImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.firstImage.bounds = CGRect(
            x: self.firstImage.bounds.origin.x + shrinkValue,
            y: self.firstImage.bounds.origin.y + shrinkValue, width: self.firstImage.bounds.size.width - shrinkValue, height: self.firstImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.firstImage.bounds = bounds }, completion: nil)
    }
    
    func animateSecondImage() {
        let bounds = self.secondImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.secondImage.bounds = CGRect(
            x: self.secondImage.bounds.origin.x + shrinkValue,
            y: self.secondImage.bounds.origin.y + shrinkValue, width: self.secondImage.bounds.size.width - shrinkValue, height: self.secondImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.secondImage.bounds = bounds }, completion: nil)
    }
    func animateThirdImage() {
        let bounds = self.thirdImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.thirdImage.bounds = CGRect(
            x: self.thirdImage.bounds.origin.x + shrinkValue,
            y: self.thirdImage.bounds.origin.y + shrinkValue, width: self.thirdImage.bounds.size.width - shrinkValue, height: self.thirdImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.thirdImage.bounds = bounds }, completion: nil)
    }
    func animateFourthImage() {
        let bounds = self.fourthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.fourthImage.bounds = CGRect(
            x: self.fourthImage.bounds.origin.x + shrinkValue,
            y: self.fourthImage.bounds.origin.y + shrinkValue, width: self.fourthImage.bounds.size.width - shrinkValue, height: self.fourthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.fourthImage.bounds = bounds }, completion: nil)
    }
    func animateFifthImage() {
        let bounds = self.fifthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.fifthImage.bounds = CGRect(
            x: self.fifthImage.bounds.origin.x + shrinkValue,
            y: self.fifthImage.bounds.origin.y + shrinkValue, width: self.fifthImage.bounds.size.width - shrinkValue, height: self.fifthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.fifthImage.bounds = bounds }, completion: nil)
    }
    func animateSixthImage() {
        let bounds = self.sixthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.sixthImage.bounds = CGRect(
            x: self.sixthImage.bounds.origin.x + shrinkValue,
            y: self.sixthImage.bounds.origin.y + shrinkValue, width: self.sixthImage.bounds.size.width - shrinkValue, height: self.sixthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.sixthImage.bounds = bounds }, completion: nil)
    }
    func animateSeventhImage() {
        let bounds = self.seventhImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.seventhImage.bounds = CGRect(
            x: self.seventhImage.bounds.origin.x + shrinkValue,
            y: self.seventhImage.bounds.origin.y + shrinkValue, width: self.seventhImage.bounds.size.width - shrinkValue, height: self.seventhImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.seventhImage.bounds = bounds }, completion: nil)
    }
    func animateEighthImage() {
        let bounds = self.eighthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.eighthImage.bounds = CGRect(
            x: self.eighthImage.bounds.origin.x + shrinkValue,
            y: self.eighthImage.bounds.origin.y + shrinkValue, width: self.eighthImage.bounds.size.width - shrinkValue, height: self.eighthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.eighthImage.bounds = bounds }, completion: nil)
    }
    func animateNinthImage() {
        let bounds = self.ninthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.ninthImage.bounds = CGRect(
            x: self.ninthImage.bounds.origin.x + shrinkValue,
            y: self.ninthImage.bounds.origin.y + shrinkValue, width: self.ninthImage.bounds.size.width - shrinkValue, height: self.ninthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.ninthImage.bounds = bounds }, completion: nil)
    }
    func animateTenthImage() {
        let bounds = self.tenthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.tenthImage.bounds = CGRect(
            x: self.tenthImage.bounds.origin.x + shrinkValue,
            y: self.tenthImage.bounds.origin.y + shrinkValue, width: self.tenthImage.bounds.size.width - shrinkValue, height: self.tenthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.tenthImage.bounds = bounds }, completion: nil)
    }
    func animateEleventhImage() {
        let bounds = self.eleventhImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.eleventhImage.bounds = CGRect(
            x: self.eleventhImage.bounds.origin.x + shrinkValue,
            y: self.eleventhImage.bounds.origin.y + shrinkValue, width: self.eleventhImage.bounds.size.width - shrinkValue, height: self.eleventhImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.eleventhImage.bounds = bounds }, completion: nil)
    }
    func animateTwelfthImage() {
        let bounds = self.twelfthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.twelfthImage.bounds = CGRect(
            x: self.twelfthImage.bounds.origin.x + shrinkValue,
            y: self.twelfthImage.bounds.origin.y + shrinkValue, width: self.twelfthImage.bounds.size.width - shrinkValue, height: self.twelfthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.twelfthImage.bounds = bounds }, completion: nil)
    }
    func animateThirteenthImage() {
        let bounds = self.thirteenthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.twelfthImage.bounds = CGRect(
            x: self.thirteenthImage.bounds.origin.x + shrinkValue,
            y: self.thirteenthImage.bounds.origin.y + shrinkValue, width: self.thirteenthImage.bounds.size.width - shrinkValue, height: self.firstImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.thirteenthImage.bounds = bounds }, completion: nil)
    }
    func animateFourteenthImage() {
        let bounds = self.fourteenthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.fourteenthImage.bounds = CGRect(
            x: self.fourteenthImage.bounds.origin.x + shrinkValue,
            y: self.fourteenthImage.bounds.origin.y + shrinkValue, width: self.fourteenthImage.bounds.size.width - shrinkValue, height: self.fourteenthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.fourteenthImage.bounds = bounds }, completion: nil)
    }
    func animateFifteenthImage() {
        let bounds = self.fifteenthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.fifteenthImage.bounds = CGRect(
            x: self.fifteenthImage.bounds.origin.x + shrinkValue,
            y: self.fifteenthImage.bounds.origin.y + shrinkValue, width: self.fifteenthImage.bounds.size.width - shrinkValue, height: self.fifteenthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.fifteenthImage.bounds = bounds }, completion: nil)
    }
    func animateSixteenthImage() {
        let bounds = self.sixteenthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.sixteenthImage.bounds = CGRect(
            x: self.sixteenthImage.bounds.origin.x + shrinkValue,
            y: self.sixteenthImage.bounds.origin.y + shrinkValue, width: self.sixteenthImage.bounds.size.width - shrinkValue, height: self.sixteenthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.sixteenthImage.bounds = bounds }, completion: nil)
    }
    func animateSeventeenthImage() {
        let bounds = self.seventeenthImage.bounds
        let shrinkValue: CGFloat = 20
        
        self.seventeenthImage.bounds = CGRect(
            x: self.seventeenthImage.bounds.origin.x + shrinkValue,
            y: self.seventeenthImage.bounds.origin.y + shrinkValue, width: self.seventeenthImage.bounds.size.width - shrinkValue, height: self.seventeenthImage.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.seventeenthImage.bounds = bounds }, completion: nil)
    }


    
    // MARK: Input Validation Functions
    
    func validateInput(text: String) -> Bool {
        var result = false
        if firstText.text == "Dwight" || firstText.text == ("dwight") || firstText.text == "Dwight Schrute" || firstText.text == "Dwight schrute" || firstText.text == "dwight schrute" {
            result = true
        }
        return result
    }
    func validateSecondInput(text: String) -> Bool {
        var result = false
        if secondText.text == "Edna" || secondText.text == ("edna") || secondText.text == "Edna mode" || secondText.text == "Edna Mode" {
            result = true
        }
        return result
    }
    func validateThirdInput(text: String) -> Bool {
        var result = false
        if thirdText.text == "Mr. Turner" || thirdText.text == ("Mr turner") || thirdText.text == "Mr. turner" || thirdText.text == "mr turner" {
            result = true
        }
        return result
    }
    func validateFourthInput(text: String) -> Bool {
        var result = false
        if fourthText.text == "Mr. Moseby" || fourthText.text == ("Mr. Mosby") || fourthText.text == "Mr moseby" || fourthText.text == "Mr Moseby" || fourthText.text == "mr moseby" {
            result = true
        }
        return result
    }
    func validateFifthInput(text: String) -> Bool {
        var result = false
        if fifthText.text == "Michael" || fifthText.text == ("Mike") || fifthText.text == "mike" || fifthText.text == "michael" || fifthText.text == "Michael Scott" || fifthText.text == "Michael scott" || fifthText.text == "michael scott" {
            result = true
        }
        return result
    }
    func validateSixthInput(text: String) -> Bool {
        var result = false
        if sixthText.text == "Shrek" || sixthText.text == "shrek" {
            result = true
        }
        return result
    }
    func validateSeventhInput(text: String) -> Bool {
        var result = false
        if seventhText.text == "Candace" || seventhText.text == ("candace") {
            result = true
        }
        return result
    }
    func validateEighthInput(text: String) -> Bool {
        var result = false
        if eighthText.text == "Patrick" || eighthText.text == ("patrick") || eighthText.text == "Patrick Star" || eighthText.text == "patrick star" || eighthText.text == "Patrick star" {
            result = true
        }
        return result
    }
    func validateNinthInput(text: String) -> Bool {
        var result = false
        if ninthText.text == "Josh" || ninthText.text == ("josh") || ninthText.text == "Josh Nichols" || ninthText.text == "Josh nichols" || ninthText.text == "josh nichols" {
            result = true
        }
        return result
    }
    func validateTenthInput(text: String) -> Bool {
        var result = false
        if tenthText.text == "Danny" || tenthText.text == ("danny") || firstText.text == "Danny Phantom" || tenthText.text == "Danny phantom" || tenthText.text == "danny phantom" {
            result = true
        }
        return result
    }
    func validateEleventhInput(text: String) -> Bool {
        var result = false
        if eleventhText.text == "Creed" || eleventhText.text == ("creed") {
            result = true
        }
        return result
    }
    func validateTwelfthInput(text: String) -> Bool {
        var result = false
        if twelfthText.text == "Austin Powers" || twelfthText.text == ("Austin powers") || twelfthText.text == "austin powers" {
            result = true
        }
        return result
    }
    func validateThirteenthInput(text: String) -> Bool {
        var result = false
        if thirteenthText.text == "Donkey" || thirteenthText.text == ("donkey") {
            result = true
        }
        return result
    }
    func validateFourteenthInput(text: String) -> Bool {
        var result = false
        if fourteenthText.text == "Squidward" || fourteenthText.text == ("squidward") {
            result = true
        }
        return result
    }
    func validateFifteenthInput(text: String) -> Bool {
        var result = false
        if fifteenthText.text == "Kevin" || fifteenthText.text == ("kevin") || fifteenthText.text == "Kevin Malone" || fifteenthText.text == "kevin malone" {
            result = true
        }
        return result
    }
    func validateSixteenthInput(text: String) -> Bool {
        var result = false
        if sixteenthText.text == "Spongebob" || sixteenthText.text == ("spongebob") {
            result = true
        }
        return result
    }
    func validateSeventeenthInput(text: String) -> Bool {
        var result = false
        if seventeenthText.text == "Stanley" || seventeenthText.text == ("stanley") || seventeenthText.text == "Stanley Hudson" || seventeenthText.text == "stanley hudson" {
            result = true
        }
        return result
    }
    
    // MARK: Keyboard Functions
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var result = false
        if textField.endEditing(true) {
            firstText.resignFirstResponder()
            secondText.resignFirstResponder()
            thirdText.resignFirstResponder()
            fourthText.resignFirstResponder()
            fifthText.resignFirstResponder()
            sixthText.resignFirstResponder()
            seventhText.resignFirstResponder()
            eighthText.resignFirstResponder()
            ninthText.resignFirstResponder()
            tenthText.resignFirstResponder()
            eleventhText.resignFirstResponder()
            twelfthText.resignFirstResponder()
            thirteenthText.resignFirstResponder()
            fourteenthText.resignFirstResponder()
            fifteenthText.resignFirstResponder()
            sixteenthText.resignFirstResponder()
            seventeenthText.resignFirstResponder()
        return true
        }
        return result
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.layer.position.y > 1420 {
            scrollView.setContentOffset(CGPoint(x: 0, y: 1240), animated: true)
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        dismiss(animated: true, completion: nil)
       // scrollView.setContentOffset(CGPoint(x: 0, y: 1250), animated: true)
        return true
    }
    
    // MARK: Tap Resign, PlaySound, Animate Actions
    
    
    @IBAction func scrollViewTapped(_ sender: UITapGestureRecognizer) {
        firstText.resignFirstResponder()
        secondText.resignFirstResponder()
        thirdText.resignFirstResponder()
        fourthText.resignFirstResponder()
        fifthText.resignFirstResponder()
        sixthText.resignFirstResponder()
        seventhText.resignFirstResponder()
        eighthText.resignFirstResponder()
        ninthText.resignFirstResponder()
        tenthText.resignFirstResponder()
        eleventhText.resignFirstResponder()
        twelfthText.resignFirstResponder()
        thirteenthText.resignFirstResponder()
        fourteenthText.resignFirstResponder()
        fifteenthText.resignFirstResponder()
        sixteenthText.resignFirstResponder()
        seventeenthText.resignFirstResponder()
    }
    
    @IBAction func firstSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Dwight")
        animateImage()
    }
    @IBAction func secondSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Edna")
        animateSecondImage()
    }
    @IBAction func thirdSoundPressed(_ sender: UIButton) {
        playSound(soundName: "MrTurner")
        animateThirdImage()
    }
    @IBAction func fourthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Mosby")
        animateFourthImage()
    }
    @IBAction func fifthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "MichaelScott")
        animateFifthImage()
    }
    @IBAction func sixthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Shrek")
        animateSixthImage()
    }
    @IBAction func seventhSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Candace")
        animateSeventhImage()
    }
    @IBAction func eighthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Patrick")
        animateEighthImage()
    }
    @IBAction func ninthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Josh")
        animateNinthImage()
    }
    @IBAction func tenthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "DannyPhantom")
        animateTenthImage()
    }
    @IBAction func eleventhSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Creed")
        animateEleventhImage()
    }
    @IBAction func twelfthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "AustinPowers")
        animateTwelfthImage()
    }
    @IBAction func thirteenthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Donkey")
        animateThirteenthImage()
    }
    @IBAction func fourteenthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Squidward")
        animateFourteenthImage()
    }
    @IBAction func fifteenthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Kevin")
        animateFifteenthImage()
    }
    @IBAction func sixteenthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Spongebob")
        animateSixteenthImage()
    }
    @IBAction func seventeenthSoundPressed(_ sender: UIButton) {
        playSound(soundName: "Stanley")
        animateSeventeenthImage()
    }
    
    // MARK: Text Detection and Input Validation Actions
    
    @IBAction func firstTextChanged(_ sender: UITextField) {
        print("\(firstText.text)")
        if validateInput(text: firstText.text!) {
            firstImage.setImage(UIImage(named: "dwightShrute"), for: .normal)
            firstLabel.text = "CORRECT!!!"
        } else {
            firstImage.setImage(UIImage(named: "questionMark"), for: .normal)
            firstLabel.text = ""
        }
    }
    @IBAction func secondTextChanged(_ sender: UITextField) {
        if validateSecondInput(text: secondText.text!) {
            secondImage.setImage(UIImage(named: "ednaFromIncredibles"), for: .normal)
            secondLabel.text = "CORRECT!!!"
        } else {
            secondImage.setImage(UIImage(named: "questionMark"), for: .normal)
            secondLabel.text = ""
        }

    }
    @IBAction func thirdTextChanged(_ sender: UITextField) {
        if validateThirdInput(text: thirdText.text!) {
            thirdImage.setImage(UIImage(named: "TimmysDad"), for: .normal)
            thirdLabel.text = "CORRECT!!!"
        } else {
            thirdImage.setImage(UIImage(named: "questionMark"), for: .normal)
            thirdLabel.text = ""
        }

    }
    @IBAction func fourthTextChanged(_ sender: UITextField) {
        if validateFourthInput(text: fourthText.text!) {
            fourthImage.setImage(UIImage(named: "mosby"), for: .normal)
            fourthLabel.text = "CORRECT!!!"
        } else {
            fourthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            fourthLabel.text = ""
        }

    }
    @IBAction func fifthTextChanged(_ sender: UITextField) {
        if validateFifthInput(text: fifthText.text!) {
            fifthImage.setImage(UIImage(named: "mikescott"), for: .normal)
            fifthLabel.text = "CORRECT!!!"
        } else {
            fifthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            fifthLabel.text = ""
        }

    }
    @IBAction func sixthTextChanged(_ sender: UITextField) {
        if validateSixthInput(text: sixthText.text!) {
            sixthImage.setImage(UIImage(named: "shrek"), for: .normal)
            sixthLabel.text = "CORRECT!!!"
        } else {
            sixthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            sixthLabel.text = ""
        }

    }
    @IBAction func seventhTextChanged(_ sender: UITextField) {
        if validateSeventhInput(text: seventhText.text!) {
            seventhImage.setImage(UIImage(named: "candaceFromPhineas"), for: .normal)
            seventhLabel.text = "CORRECT!!!"
        } else {
            seventhImage.setImage(UIImage(named: "questionMark"), for: .normal)
            seventhLabel.text = ""
        }

    }
    @IBAction func eighthTextChanged(_ sender: UITextField) {
        if validateEighthInput(text: eighthText.text!) {
            eighthImage.setImage(UIImage(named: "patrickStar"), for: .normal)
            eighthLabel.text = "CORRECT!!!"
        } else {
            eighthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            eighthLabel.text = ""
        }

    }
    @IBAction func ninthTextChanged(_ sender: UITextField) {
        if validateNinthInput(text: ninthText.text!) {
            ninthImage.setImage(UIImage(named: "joshFromDrakeAndJosh"), for: .normal)
            ninthLabel.text = "CORRECT!!!"
        } else {
            ninthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            ninthLabel.text = ""
        }

    }
    @IBAction func tenthTextChanged(_ sender: UITextField) {
        if validateTenthInput(text: tenthText.text!) {
            tenthImage.setImage(UIImage(named: "dannyPhantom"), for: .normal)
            tenthLabel.text = "CORRECT!!!"
        } else {
            tenthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            tenthLabel.text = ""
        }

    }
    @IBAction func eleventhTextChanged(_ sender: UITextField) {
        if validateEleventhInput(text: eleventhText.text!) {
            eleventhImage.setImage(UIImage(named: "creed"), for: .normal)
            eleventhLabel.text = "CORRECT!!!"
        } else {
            eleventhImage.setImage(UIImage(named: "questionMark"), for: .normal)
            eleventhLabel.text = ""
        }

    }
    @IBAction func twelfthTextChanged(_ sender: UITextField) {
        if validateTwelfthInput(text: twelfthText.text!) {
            twelfthImage.setImage(UIImage(named: "austinPowers"), for: .normal)
            twelfthLabel.text = "CORRECT!!!"
        } else {
            twelfthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            twelfthLabel.text = ""
        }

    }
    @IBAction func thirteenthTextChanged(_ sender: UITextField) {
        if validateThirteenthInput(text: thirteenthText.text!) {
            thirteenthImage.setImage(UIImage(named: "donkeyfromshrek"), for: .normal)
            thirteenthLabel.text = "CORRECT!!!"
        } else {
            thirteenthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            thirteenthLabel.text = ""
        }

    }
    @IBAction func fourteenthTextChanged(_ sender: UITextField) {
        if validateFourteenthInput(text: fourteenthText.text!) {
            fourteenthImage.setImage(UIImage(named: "squidward"), for: .normal)
            fourteenthLabel.text = "CORRECT!!!"
        } else {
            fourteenthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            fourteenthLabel.text = ""
        }

    }
    @IBAction func fifteenthTextChanged(_ sender: UITextField) {
        if validateFifteenthInput(text: fifteenthText.text!) {
            fifteenthImage.setImage(UIImage(named: "kevinMalone"), for: .normal)
            fifteenthLabel.text = "CORRECT!!!"
        } else {
            fifteenthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            fifteenthLabel.text = ""
        }

    }
    @IBAction func sixteenthTextChanged(_ sender: UITextField) {
        if validateSixteenthInput(text: sixteenthText.text!) {
            sixteenthImage.setImage(UIImage(named: "spongebob"), for: .normal)
            sixteenthLabel.text = "CORRECT!!!"
        } else {
            sixteenthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            sixteenthLabel.text = ""
        }

    }
    @IBAction func seventeenthTextChanged(_ sender: UITextField) {
        if validateSeventeenthInput(text: seventeenthText.text!) {
            seventeenthImage.setImage(UIImage(named: "stanleyHudson"), for: .normal)
            seventeenthLabel.text = "CORRECT!!!"
        } else {
            seventeenthImage.setImage(UIImage(named: "questionMark"), for: .normal)
            seventeenthLabel.text = ""
        }
    }
    
    

}

