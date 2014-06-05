//
//  ViewController.swift
//  SWIFT First
//
//  Created by Daniel López on 4/6/14.
//  Copyright (c) 2014 Daniel López. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var currentQuestionIndex: Int = 0
	var questions = ["What is 7 + 7?", "What is the capital of Vermont?", "From what is cognac made?"]
	var answers = ["14", "Vermont", "Grapes"]
	
	
	@IBOutlet var questionLabel : UILabel = nil
	@IBOutlet var answerLabel : UILabel = nil
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		questionLabel.text = ""
		answerLabel.text = "???"
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func showQuestion() {
		currentQuestionIndex++
		
		if (currentQuestionIndex == questions.count) {
			currentQuestionIndex = 0
		}
		
		questionLabel.text = questions[currentQuestionIndex]
		answerLabel.text = "???"
	}

	@IBAction func showAnswer() {
		answerLabel.text = answers[currentQuestionIndex]
	}
}

