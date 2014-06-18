import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView : UIImageView
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
}
