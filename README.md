##What is EYLoading?

EYLoading is a load view for a UIView (such as UIView, UIScrollView, UIWebView, UIImageView, UITableView, UICollectionView...) when your view is loading.

##Exhibition

![0](http://ww2.sinaimg.cn/bmiddle/b81043cdgw1epiqtdav8uj20hs0vkdgl.jpg)

![1](http://ww4.sinaimg.cn/bmiddle/b81043cdgw1epiq5wpe9kj20hs0vkq3q.jpg)

![2](http://ww3.sinaimg.cn/bmiddle/b81043cdgw1epiq5vuw8nj20hs0vkgmt.jpg)

##Features

* Easy to Use.
* It is perfect to apply kind of UIScrollView if your project need.
* Custom UIActivityIndicatorViewStyle.
* Custom alert message.
* Alert message will auto layout base on width of message text.

##Usage
* Import EYLoading.

```c
#import "UIView+EYLoding.h"
```

* Start loading, set UIActivityIndicatorViewStyle and set alert text.

```c
[self.view startLoadingWithScrollViewFixed:YES alertText:@""];
```

```c
[self.view startLoadingWithScrollViewFixed:YES alertText:@"Loading..."];
```

```c
[self.view startLoadingWithScrollViewFixed:YES alertText:@"Loading..." activityIndicatorViewStyle:UIActivityIndicatorViewStyleWhiteLarge];
```


* Stop loading.

```c
[self.view stopLoading];
```

##Author

You can Email me or pull request.

Email:yesidi@me.com


##License
The MIT License (MIT)

Copyright (c) 2015 Eddie Yip

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.




