
/// reference https://www.raywenderlich.com/158-coordinator-tutorial-for-ios-getting-started
# Coordinator Design Pattern:


Coordinator Design Pattern for simple app with have side menu or normal app with one navigation controller.</br>
(Hint this not fit for tabBar app) soon i will lunch example for tabBar app.</br>


This not library or perfect example for coordinator, (just show case of use).</br>
You neeed to modify it and add extra func for it to fit your business.</br>

# let's start :

The main idea for coordinator .</br>
1- Stop using seques.</br>
2- One class responsible for route between screens.</br>
      This point done by singletone design pattern, for one instanse shared object for coordinator object.</br>
3- Easy to hundle route for push notification for spesific screen.</br>

will find this in class .</br>

```
 class AppCoordinator{
 
 }
```
 //you find func for push and set, and you can add what you need else as it done for another funcs.

# first to add in appdelaget start :

```
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        AppCoordinator.shared =  AppCoordinator.init(window: self.window!) // 2
        

        /// init first view controller for app
        let viewcontroller1 = UIViewController.initWith(storyBoardName: UIStoryboard.identifer.main.rawValue, viewControllerId: UIViewController.identifier.firstView.rawValue)
        
        
        //set root view controller
        AppCoordinator.shared?.setRootViewController(viewController: viewcontroller1)
        
        
        //start coordinator with with first root
        AppCoordinator.shared?.start()  // 3
        return true
    }

```
# what we have else in project to reach one of (SOLID) single responsiblity  :-

1-that will find extenstion for storyBoard </br>
    . enum for storyBoard name of your project, to save them all in one place.</br>
 2- Extenstion for UIViewController :</br>
      . enum for screen name, or viewController id.</br>

    ```
      enum identifier : String {
        
        case firstView  = "viewID"
        case secandView = "secandID"
        case demo1 = "demo1"

        
    }
    
    ```
    . New func for create viewcontroller form storyborad with storyboard name and view controller id.</br>
    
    ```
     static func initWith(storyBoardName : String , viewControllerId : String)->UIViewController{
            return   UIStoryboard.init(name: storyBoardName, bundle: nil).instantiateViewController(withIdentifier:            viewControllerId)
        
        
    }
    
    ``` 
   . You can use already exist func for load view controller form nib file.</br>

# Wait next one will be for tabBar app.

# Thanks for reading. 
      All you welcome for discuss or any modify or aading point.
* **Ref**  - [raywenderlich](https://www.raywenderlich.com/158-coordinator-tutorial-for-ios-getting-started)

## Author

* **Ragaie alfy Fahmey**  - [ragaie](https://github.com/ragaie)

## You can find me in linked in:- 
- [Ragaie alfy](www.linkedin.com/in/ragaie-alfy)
