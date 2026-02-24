# lab3

## Profile Card App – Flutter

# Description

This Flutter application displays an interactive profile card with:
- A circular avatar
- Name and bio
- A dynamic like counter
- Messages and background colors that change based on likes
- Interactive buttons: Like, Dislike, Reset

# Steps

# Step 1: Setup Project
- Created the Flutter project with flutter create Lab3
- Added the main.dart file in the lib/ folder

# Step 2: Basic Profile Card
- Added a Scaffold with AppBar
- Displayed a CircleAvatar with initials
- Added name and bio below

# Step 3: Convert to StatefulWidget
- Converted ProfileCard into a StatefulWidget
- Added the state variable likeCount

# Step 4: Add Like Counter Display
- Added a Row with a heart icon and the counter
- Counter updates dynamically with setState()

# Step 5: Add Like Button
- Created the method incrementLikes()
- Added a ElevatedButton.icon

# Step 6: Dynamic Background Color
- Added getCardColor() method to change background color based on likes
- Wrapped the Column in a Container with color: getCardColor()

# Step 7: Dynamic Message
- Added getMessage() method to show different messages depending on likes
- Placed Text(getMessage()) below the bio

# Bonus: Dislike & Reset
- Added decrementLikes() method (never goes below 0)
- Added resetLikes() method to reset the counter
- Added extra buttons dislikke and reset

# Clone the repository
git clone <your-repo-url>

# Navigate into the project folder
cd Lab3

# Get dependencies
flutter pub get

# Run the app
flutter run