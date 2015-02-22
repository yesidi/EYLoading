##What is EYLoading?

EYLoading is a load view for a UIView (such as UIView, UIScrollView, UIImageView, UITableView, UICollectionView...) when your view is loading.

##Features

* Custom alert message.
* Alert message will auto layout base on width of message text.

##Usage
```c
#import "UIView+EYLoding.h"
```
* StartLoading.

```c
self.view.alertText = @"loading...";
[self.view startLoading];
```

* StopLoading.

```c
[self.view stopLoading];
```

##Author
You can Email me or pull request.

Email:yesidi@me.com