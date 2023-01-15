# Project

Reproducible analytical pipelines project for the Workshop II "Statec"

It will vreate a pdf file containing plots of the Medical Cost Personal Datasets from https://www.kaggle.com/datasets/mirichoi0218/insurance

# Prerequisites :

Docker

Git

# Running the Project :

The following commands will build the docker image and name it "app",
afterwards we run it and save the output to "C:\output",
you can of course change the image name and output filepath to whatever suits your needs.

Before building the app make sure that you are in the right folder, it should contain the "Main.R" file !

1) git clone https://github.com/Cuartares/Project.git
2) docker build -t app .
3) docker run --rm --name app_container -v C:\output:/output/ app

# Student : Federspiel Sven
