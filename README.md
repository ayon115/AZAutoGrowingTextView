## AZAutoGrowingTextView

A sample project to demonstrate a Multiline Text input with AutoGrowing feature like Android in iOS platform. Here TextView will grow or shrink when you type according to your input or text content. Using UITextView within a UITableViewCell has also some issues when we need to input multiline text, this method also solves the problem. 

Detail of the process can be read [in this blog post.](http://www.iayon.com/auto-expanding-text-input-ios/)

#### Requirements:
This requires iOS version 8.0 to higher. Before iOS 8.0, automatic height calculation of UITableViewCell was pretty hard to do.

#### Special Credits:
* [SZTextView](https://github.com/glaszig/SZTextView) , It has been used to have placeholder in UITextView. But it's just an utility, UITextView or Any Subclass of UITextView should work fine.
* [IQKeyboardManager](https://github.com/hackiftekhar/IQKeyboardManager) , It has been used to avoid any kind of manual keyboard handling.
