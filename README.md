# DL_ObjectDetection_Container

# docker build
docker build -t darklie13/yolo .

# Train Image
docker run -v "$(pwd)":/output darklie13/yolo  https://upload.wikimedia.org/wikipedia/commons/3/3b/SBB_Re_450_097_ZKB_Nachtnetz.jpg

# Coffee Cup Image
docker run -v "$(pwd)":/output darklie13/yolo https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG
