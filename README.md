# MusicLibrary

# **Requirement**

Xcode 12 beta 5  
Mac OS BigSur Beta 5  
SwiftUI Support


Model-View-ViewModel (MVVM) is a design pattern that’s gained traction in the iOS development community in recent years. It involves a new concept called a view model. In iOS apps, a view model is a companion object to a view controller.

| <a href="https://github.com/vishalkalola1/MusicLibrary/blob/master/MVVM.png"><img src="https://github.com/vishalkalola1/MusicLibrary/blob/master/MVVM.png" title=""/></a> |

As shown above, the MVVM pattern consists of three layers:

Model: App data that the app operates on.
View: The user interface’s visual elements. In iOS, the view controller is inseparable from the concept of the view.
ViewModel: Updates the model from view inputs and updates views from model outputs.
MVVM offers some advantages over Model-View-Controller, or MVC, which is the de facto approach in iOS:

Reduced complexity: MVVM makes the view controller simpler by moving a lot of business logic out of it.
Expressive: The view model better expresses the business logic for the view.
Testability: A view model is much easier to test than a view controller. You end up testing business logic without having to worry about view implementations.
In this tutorial, you’ll refactor a weather app by changing its architecture from from MVC to MVVM. First you’ll move all the weather and location related logic from the view controller into the view model. Then, you’ll write unit tests for the view model to see how you can easily integrate testing into your new view model.

Here is example for MVVM Structure with SwiftUI Demo.

| Logo | Splash | List | Details | 
| --- | --- | --- | --- |
| <a href="https://github.com/vishalkalola1/MusicLibrary/blob/master/App1.png"><img src="https://github.com/vishalkalola1/MusicLibrary/blob/master/App1.png" title=""/></a> | <a href="https://github.com/vishalkalola1/MusicLibrary/blob/master/App2.png"><img src="https://github.com/vishalkalola1/MusicLibrary/blob/master/App2.png" title=""/></a> | <a href="https://github.com/vishalkalola1/MusicLibrary/blob/master/App3.png"><img src="https://github.com/vishalkalola1/MusicLibrary/blob/master/App3.png" title=""/></a> | <a href="https://github.com/vishalkalola1/MusicLibrary/blob/master/App4.png"><img src="https://github.com/vishalkalola1/MusicLibrary/blob/master/App4.png" title=""/></a> |
