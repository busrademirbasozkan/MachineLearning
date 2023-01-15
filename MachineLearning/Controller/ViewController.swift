//
//  ViewController.swift
//  MachineLearning
//
//  Created by Büşra Özkan on 14.01.2023.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate ,UINavigationControllerDelegate {

    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var resultLabel : UILabel!
    
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
    }
    
}

