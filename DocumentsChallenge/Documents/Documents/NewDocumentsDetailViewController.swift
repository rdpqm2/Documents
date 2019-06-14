//
//  NewDocumentDetailViewController.swift
//  Documents
//
//  Created by Rahil Patel on 6/13/19.
//  Copyright © 2019 Rahil Patel. All rights reserved.
//

import UIKit

class NewDocumentsDetailViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var infoView: UITextView!
    
    var document: Document?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let doc = document {
            nameField.text = doc.name
            infoView.text = doc.text
            title = doc.name
        } else {
            title = ""
        }
    }
    
    
    
    @IBAction func nameEdit(_ sender: Any) {
        title = nameField.text
    }
    
    
    @IBAction func saveDocument(_ sender: Any) {
        guard let name = nameField.text else {
            return
        }
        
        Documents.save(name: name, info: infoView.text)
        
        navigationController?.popViewController(animated: true)
    }
}
