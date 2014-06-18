Swift-UICollectionView-WebP
===========================

UICollectionView + WebP w/SDWebImage

`pod 'SDWebImage/WebP'` provides the easiest way to handle WebP image, as easy as JPEG.
Just use provided UIImageView extension `imageView.setImageWithURL(NSURL(string: "http://path/to/image.webp"))` to handle WebP.

![](https://raw.githubusercontent.com/kaiinui/Swift-UICollectionView-WebP/master/_webpcollection.gif)

The sample shows number of same WebP image(2642 bytes) with cache-preventing hack.
To provide same size/same quality JPEG image, its size goes to 12,016 bytes. (approximately 6x)

Please note while you are scrolling down, images will be loaded from network, rather than local disk.

- WebP: http://d3lncrho1w0yzl.cloudfront.net/photo1.100x133.2642bytes.webp (2642 bytes)
- JPEG: http://d3lncrho1w0yzl.cloudfront.net/photo1.100x133.jpg (12,016 bytes)

#Note

- Performance.
  1. As WebP needs software decoding, decoding overhead gets longer than JPEG's.
  2. For smaller sized images, decoding overhead seems to be longer than network overhead.
  3. For bigger sized images, network overhead will get enough to consider WebP? It needs further research.
