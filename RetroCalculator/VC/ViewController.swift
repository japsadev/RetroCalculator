//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Salih Yusuf Göktaş on 26.07.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var calcScreen: UIView!
	@IBOutlet weak var calcResult: UILabel!
	@IBOutlet weak var calcWorking: UILabel!
	@IBOutlet weak var numpadView: UIView!
	
	
	@IBOutlet weak var clearButtonDesign: UIButton!
	@IBOutlet weak var deleteButtonDesign: UIButton!
	@IBOutlet weak var equalsButtonDesign: UIButton!
	@IBOutlet weak var percentButtonDesign: UIButton!
	@IBOutlet weak var divideButtonDesign: UIButton!
	@IBOutlet weak var multiplicationButtonDesign: UIButton!
	@IBOutlet weak var minusButtonDesign: UIButton!
	@IBOutlet weak var plusButtonDesign: UIButton!
	@IBOutlet weak var decimalButtonDesign: UIButton!
	@IBOutlet weak var zeroButtonDesign: UIButton!
	@IBOutlet weak var oneButtonDesign: UIButton!
	@IBOutlet weak var twoButtonDesign: UIButton!
	@IBOutlet weak var threeButtonDesign: UIButton!
	@IBOutlet weak var fourButtonDesign: UIButton!
	@IBOutlet weak var fiveButtonDesign: UIButton!
	@IBOutlet weak var sixButtonDesign: UIButton!
	@IBOutlet weak var sevenButtonDesign: UIButton!
	@IBOutlet weak var eightButtonDesign: UIButton!
	@IBOutlet weak var nineButtonDesign: UIButton!
	
	
	var workings : String = ""
	
	override func viewDidLoad() {
		super.viewDidLoad()
		clear()
		buttonDesign()
		
		
		}
	
	func buttonDesign() {
		
		calcScreen.layer.cornerRadius = 10
		calcScreen.layer.borderWidth = 10
		calcScreen.layer.borderColor = UIColor.black.cgColor
		calcScreen.layer.shadowColor = UIColor.darkGray.cgColor
		calcScreen.layer.shadowRadius = 10
		calcScreen.layer.shadowOpacity = 0.3
		calcScreen.layer.shadowOffset = CGSize(width: 0, height: 10)
		
		numpadView.layer.cornerRadius = 10
		numpadView.layer.shadowColor = UIColor.darkGray.cgColor
		numpadView.layer.shadowRadius = 10
		numpadView.layer.shadowOpacity = 0.3
		numpadView.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		clearButtonDesign.layer.cornerRadius = 10
		clearButtonDesign.layer.borderWidth = 10
		clearButtonDesign.layer.borderColor = UIColor.init(named: "clearButtonBorder")?.cgColor
		clearButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		clearButtonDesign.layer.shadowRadius = 10
		clearButtonDesign.layer.shadowOpacity = 0.1
		clearButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		deleteButtonDesign.layer.cornerRadius = 10
		deleteButtonDesign.layer.borderWidth = 10
		deleteButtonDesign.layer.borderColor = UIColor.init(named: "clearButtonBorder")?.cgColor
		deleteButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		deleteButtonDesign.layer.shadowRadius = 10
		deleteButtonDesign.layer.shadowOpacity = 0.1
		deleteButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		equalsButtonDesign.layer.cornerRadius = 10
		equalsButtonDesign.layer.borderWidth = 10
		equalsButtonDesign.layer.borderColor = UIColor.init(named: "equalButtonBorder")?.cgColor
		equalsButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		equalsButtonDesign.layer.shadowRadius = 10
		equalsButtonDesign.layer.shadowOpacity = 0.1
		equalsButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		percentButtonDesign.layer.cornerRadius = 10
		percentButtonDesign.layer.borderWidth = 10
		percentButtonDesign.layer.borderColor = UIColor.init(named: "otherButtonBorder")?.cgColor
		percentButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		percentButtonDesign.layer.shadowRadius = 10
		percentButtonDesign.layer.shadowOpacity = 0.1
		percentButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		multiplicationButtonDesign.layer.cornerRadius = 10
		multiplicationButtonDesign.layer.borderWidth = 10
		multiplicationButtonDesign.layer.borderColor = UIColor.init(named: "otherButtonBorder")?.cgColor
		multiplicationButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		multiplicationButtonDesign.layer.shadowRadius = 10
		multiplicationButtonDesign.layer.shadowOpacity = 0.1
		multiplicationButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		minusButtonDesign.layer.cornerRadius = 10
		minusButtonDesign.layer.borderWidth = 10
		minusButtonDesign.layer.borderColor = UIColor.init(named: "otherButtonBorder")?.cgColor
		minusButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		minusButtonDesign.layer.shadowRadius = 10
		minusButtonDesign.layer.shadowOpacity = 0.1
		minusButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		plusButtonDesign.layer.cornerRadius = 10
		plusButtonDesign.layer.borderWidth = 10
		plusButtonDesign.layer.borderColor = UIColor.init(named: "otherButtonBorder")?.cgColor
		plusButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		plusButtonDesign.layer.shadowRadius = 10
		plusButtonDesign.layer.shadowOpacity = 0.1
		plusButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		divideButtonDesign.layer.cornerRadius = 10
		divideButtonDesign.layer.borderWidth = 10
		divideButtonDesign.layer.borderColor = UIColor.init(named: "otherButtonBorder")?.cgColor
		divideButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		divideButtonDesign.layer.shadowRadius = 10
		divideButtonDesign.layer.shadowOpacity = 0.1
		divideButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		decimalButtonDesign.layer.cornerRadius = 10
		decimalButtonDesign.layer.borderWidth = 10
		decimalButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		decimalButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		decimalButtonDesign.layer.shadowRadius = 10
		decimalButtonDesign.layer.shadowOpacity = 0.1
		decimalButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		zeroButtonDesign.layer.cornerRadius = 10
		zeroButtonDesign.layer.borderWidth = 10
		zeroButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		zeroButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		zeroButtonDesign.layer.shadowRadius = 10
		zeroButtonDesign.layer.shadowOpacity = 0.1
		zeroButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		oneButtonDesign.layer.cornerRadius = 10
		oneButtonDesign.layer.borderWidth = 10
		oneButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		oneButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		oneButtonDesign.layer.shadowRadius = 10
		oneButtonDesign.layer.shadowOpacity = 0.1
		oneButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		twoButtonDesign.layer.cornerRadius = 10
		twoButtonDesign.layer.borderWidth = 10
		twoButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		twoButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		twoButtonDesign.layer.shadowRadius = 10
		twoButtonDesign.layer.shadowOpacity = 0.1
		twoButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		threeButtonDesign.layer.cornerRadius = 10
		threeButtonDesign.layer.borderWidth = 10
		threeButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		threeButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		threeButtonDesign.layer.shadowRadius = 10
		threeButtonDesign.layer.shadowOpacity = 0.1
		threeButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		fourButtonDesign.layer.cornerRadius = 10
		fourButtonDesign.layer.borderWidth = 10
		fourButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		fourButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		fourButtonDesign.layer.shadowRadius = 10
		fourButtonDesign.layer.shadowOpacity = 0.1
		fourButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		fiveButtonDesign.layer.cornerRadius = 10
		fiveButtonDesign.layer.borderWidth = 10
		fiveButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		fiveButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		fiveButtonDesign.layer.shadowRadius = 10
		fiveButtonDesign.layer.shadowOpacity = 0.1
		fiveButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		sixButtonDesign.layer.cornerRadius = 10
		sixButtonDesign.layer.borderWidth = 10
		sixButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		sixButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		sixButtonDesign.layer.shadowRadius = 10
		sixButtonDesign.layer.shadowOpacity = 0.1
		sixButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		sevenButtonDesign.layer.cornerRadius = 10
		sevenButtonDesign.layer.borderWidth = 10
		sevenButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		sevenButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		sevenButtonDesign.layer.shadowRadius = 10
		sevenButtonDesign.layer.shadowOpacity = 0.1
		sevenButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		eightButtonDesign.layer.cornerRadius = 10
		eightButtonDesign.layer.borderWidth = 10
		eightButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		eightButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		eightButtonDesign.layer.shadowRadius = 10
		eightButtonDesign.layer.shadowOpacity = 0.1
		eightButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
		nineButtonDesign.layer.cornerRadius = 10
		nineButtonDesign.layer.borderWidth = 10
		nineButtonDesign.layer.borderColor = UIColor.init(named: "numberButtonBorder")?.cgColor
		nineButtonDesign.layer.shadowColor = UIColor.darkGray.cgColor
		nineButtonDesign.layer.shadowRadius = 10
		nineButtonDesign.layer.shadowOpacity = 0.1
		nineButtonDesign.layer.shadowOffset = CGSize(width: 0, height: 0)
		
	}
	
	
	func clear() {
		
		workings = ""
		calcWorking.text = ""
		calcResult.text = ""
		
	}
	@IBAction func clearButton(_ sender: Any) {
		clear()
	}
	@IBAction func deleteButton(_ sender: Any) {
		if(!workings.isEmpty) {
			workings.removeLast()
			calcWorking.text = workings
		}
	}
	@IBAction func equalsButton(_ sender: Any) {
		
		if validInput() {
			
			let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
			let expression = NSExpression(format: checkedWorkingsForPercent)
			let result = expression.expressionValue(with: nil, context: nil) as! Double
			let resultString = formatResult(result: result)
			calcResult.text = resultString
		} else {
			let alert = UIAlertController(title: "Invalid Input", message: "Calculator unable to do math based on input", preferredStyle: .alert)
			alert.addAction(UIAlertAction(title: "OK", style: .default))
			self.present(alert, animated: true, completion: nil)
		}
	}
	
	func validInput() -> Bool {
		
		var count = 0
		var funcCharIndexes = [Int]()
		
		for char in workings {
			
			if(specialCharacter(char: char)) {
				funcCharIndexes.append(count)
			}
			count += 1
		}
		
		var previous: Int = -1
		
		for index in funcCharIndexes {
			if (index == 0) {
				return false
			}
			if (index == workings.count - 1) {
				return false
			}
			
			if (previous != -1) {
				if (index - previous == 1) {
					return false
				}
			}
			previous = index
		}
		return true
	}
	
	func specialCharacter(char: Character) -> Bool {
		if(char == "*") {
			return true
		}
		if(char == "/") {
			return true
		}
		if(char == "+") {
			return true
		}
		
		return false
	}
	
	func formatResult(result: Double) -> String {
		if (result.truncatingRemainder(dividingBy: 1) == 0)
		{
			return String(format: "%.0f", result)
		} else {
			return String(format: "%.2f", result)
		}
	}
	
	func addWorkings(value: String) {
		workings = workings + value
		calcWorking.text = workings
		
	}
	
	@IBAction func percentButton(_ sender: Any) {
		addWorkings(value: "%")
	}
	@IBAction func divideButton(_ sender: Any) {
		addWorkings(value: "/")
	}
	@IBAction func multiplicationButton(_ sender: Any) {
		addWorkings(value: "*")
	}
	@IBAction func minusButton(_ sender: Any) {
		addWorkings(value: "-")
	}
	@IBAction func plusButton(_ sender: Any) {
		addWorkings(value: "+")
	}
	@IBAction func decimalButton(_ sender: Any) {
		addWorkings(value: ".")
	}
	@IBAction func zeroButton(_ sender: Any) {
		addWorkings(value: "0")
	}
	@IBAction func oneButton(_ sender: Any) {
		addWorkings(value: "1")
	}
	@IBAction func twoButton(_ sender: Any) {
		addWorkings(value: "2")
	}
	@IBAction func threeButton(_ sender: Any) {
		addWorkings(value: "3")
	}
	@IBAction func fourButton(_ sender: Any) {
		addWorkings(value: "4")
	}
	@IBAction func fiveButton(_ sender: Any) {
		addWorkings(value: "5")
	}
	@IBAction func sixButton(_ sender: Any) {
		addWorkings(value: "6")
	}
	@IBAction func sevenButton(_ sender: Any) {
		addWorkings(value: "7")
	}
	@IBAction func eightButton(_ sender: Any) {
		addWorkings(value: "8")
	}
	@IBAction func nineButton(_ sender: Any) {
		addWorkings(value: "9")
	}
	
	
}

