//
//  AttachmentAddCollectionViewCell.swift
//  Arabian MEP
//
//  Created by Siraj rahman on 07/11/15.
//  Copyright © 2015 QBurst. All rights reserved.
//

import UIKit

class AttachmentAddCollectionViewCell: UICollectionViewCell {
    
    var attachmentAddButtonActionBlock : (()->())?
    
    @IBAction func attachementAddButtonClicked(sender: AnyObject) {
        self.attachmentAddButtonActionBlock!()
    }
}
