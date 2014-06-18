import UIKit

class ViewController: UICollectionViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let preventcache = Int(arc4random_uniform(10000))
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return 500
    }
    
    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        let num = preventcache + indexPath.row
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as CollectionViewCell
        let url = "http://d3lncrho1w0yzl.cloudfront.net/photo1.100x133.2642bytes.webp?\(num)"
        cell.imageView.setImageWithURL(NSURL(string: url))
        return cell
    }
}

