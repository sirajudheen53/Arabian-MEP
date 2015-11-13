//
//  ViewController.swift
//  Arabian MEP
//
//  Created by Siraj rahman on 06/11/15.
//  Copyright © 2015 QBurst. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var attachments = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Private Methods
    
    func showImagePicker() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        self.navigationController?.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    //MARK: - Collection View Delegate Methods
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.attachments.count + 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var requiredCell : UICollectionViewCell?
        if indexPath.row == self.attachments.count {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("attachmentAddCell", forIndexPath: indexPath) as! AttachmentAddCollectionViewCell
            cell.attachmentAddButtonActionBlock = {
                self.showImagePicker()
            }
            requiredCell = cell
        } else {
            requiredCell = collectionView.dequeueReusableCellWithReuseIdentifier("attachmentPreviewCell", forIndexPath: indexPath)
        }
        return requiredCell!
    }
    
    //MARK: - ImagePicker Delegate Methods
    
    
    

}

