//
//  ViewController.swift
//  Pretty Pink App
//
//  Created by Anshu Chennuru on 6/24/24.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    @IBOutlet weak var pinkImage: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    
    let imageArr: [UIImage] = [ #imageLiteral(resourceName: "pink4"), #imageLiteral(resourceName: "pink6"), #imageLiteral(resourceName: "pink3"), #imageLiteral(resourceName: "pink7"), #imageLiteral(resourceName: "pink1"), #imageLiteral(resourceName: "pink2"), #imageLiteral(resourceName: "pink5") ]
    let quotesArr = [ "'If you don’t like something, change it. If you can’t change it, change your attitude.' — Maya Angelou", "'I learned to always take on things I’d never done before. Growth and comfort do not coexist.' – Ginni Rometty", "'Change your life today. Don’t gamble on the future, act now, without delay.' – Simone de Beauvoir", "'I am lucky that whatever fear I have inside me, my desire to win is always stronger.' — Serena Williams", "'It is during our darkest moments that we must focus to see the light.' — Aristotle", "'If you don't like the road you're walking, start paving another one.' — Dolly Parton" ]


    override func viewDidLoad() {
        super.viewDidLoad()
        sleep(1)
        setFirstImageAndQuote()
    }
    
    func setFirstImageAndQuote() {
        let randomImage = imageArr.randomElement()
        pinkImage.image = randomImage
        
        let randomQuote = quotesArr.randomElement()
        quoteLabel.text = randomQuote
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let randomImage = getRandomImage()
        let randomQuote = getRandomQuote()
        
        pinkImage.image = randomImage
        quoteLabel.text = randomQuote
    }
    
    func getRandomImage() -> UIImage {
        var lastImage = pinkImage.image
        let randomImage = imageArr.randomElement()!
        
        if randomImage.imageAsset != lastImage!.imageAsset {
            lastImage = randomImage
            return randomImage
        } else {
            return getRandomImage()
        }
    }
    
    func getRandomQuote() -> String {
        var lastQuote = quoteLabel.text
        let randomQuote = quotesArr.randomElement()!
        
        if lastQuote != randomQuote {
            lastQuote = randomQuote
            return randomQuote
        } else {
            return getRandomQuote()
        }
    }
    
}

