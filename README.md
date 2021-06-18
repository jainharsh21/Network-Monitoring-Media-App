# Rajasthan Studio Assignment

## About the App

App that shows images and videos from the [Pexels](https://www.pexels.com/api/documentation/) API along with continous network monitoring.

The app would have two main screens, home and favourites.
Home screen and Favourites Screen.

Both of those screens are further divided into sub-tabs "Photos" and "Videos"

## Getting Started

### How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/jainharsh21/Rajasthan-Studios-Assignment.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

Run the project with no sound null safety(required for some plugins)

```
flutter run --no-sound-null-safety
```

### Feedback

Due to the hectic schedule I am having currently, I wasn't able to do the viewing favourites part.

Although it is very easy to implement, we can use shared preferences to store the photos/videos marked by the user...and show them in the screen I have created. This way we won't need a seperate database as it is going to be stored in the app data itself.

Also, I felt that using BLoC for this assignment would not be a good idea as it has limited number of screens and its recommended not to use it unless we have data updating across multiple screens.

Proper folder structure has been maintained.