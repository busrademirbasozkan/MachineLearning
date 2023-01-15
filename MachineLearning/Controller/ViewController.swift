//
//  ViewController.swift
//  MachineLearning
//
//  Created by Büşra Özkan on 14.01.2023.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate ,UINavigationControllerDelegate {

    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var resultLabel : UILabel!
    var choosenImage = CIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeButton(_ sender : Any){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
        
        //CIImage
        if let ciImage = CIImage(image: imageView.image!){
            choosenImage = ciImage
        }
        
        //resim seçilir seçilmez fonksiyonu çağıracağız
        recognizeImage(image: choosenImage)
    }
    
    func recognizeImage(image : CIImage){
        resultLabel.text = "Test"
    }
    
}

