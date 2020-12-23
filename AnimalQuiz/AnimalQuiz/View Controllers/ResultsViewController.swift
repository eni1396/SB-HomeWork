//
//  FinalViewController.swift
//  AnimalQuiz
//
//  Created by Екатерина Батеева on 10.12.2020.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var resultAnswers = [Answer]()
    

    @IBOutlet weak var textType: UILabel!
    @IBOutlet weak var titleType: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        mostRepeatedType()
    }
    
    func mostRepeatedType() {
        var mostRepeatedAnimal = [AnimalType: Int]()
        

    }

}
 
// 1. Передать сюда массив с ответами
// 2. Определить наиболее часто встречающийся тип животного
// 3. Отобразить результаты на экране
// 4. Избавиться от кнопки возврата на предыдущий экран
