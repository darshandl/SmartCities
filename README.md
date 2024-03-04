# SmartCities-Project-1

UAV Tracking for Smart Cities

## Team 9 (LSV)

Darshan Lakhankiya \
Sneha Seenuvasavarathan \
Vedant Vohra

## Directory Structure

    - assets/ # Contains all the assets
    - data/ # Contains the data files
        -> /sample_data/ # Contains a small subset of the dataset for testing the model ("grading script")
    - models/ # Contains the trained models
    - notebooks/ # Contains the main project notebook(s) and the grading notebook

**NOTE: The dataset ([P-DESTRE](http://p-destre.di.ubi.pt/)) is too large (69.4GB) to include in the zip file, so it has to be downloaded separately. Please refer to Step 1 in the ['How to Run' section](#how-to-run) below for instructions.** \
**A small subset of the dataset (`data/sample_data`) has been included in the zip file and can be used to run the [grading script](#to-run-the-grading-script-notebook), without having to download the entire dataset**

### The 'Notebooks' Directory

This directory contains all the source code in the form of Jupyter notebooks.
1. `reid_train.ipynb` - This is the notebook used for training the pedestrian re-identification model
2. `reid_pipeline.ipynb` - This is the notebook containing the end-to-end pipeline for pedestrian detection and  re-identification
3. `test.ipynb` - This is the "grading script". It is used to test the model on a small subset of the dataset.

## How to Run

1. Execute `data/download.sh` to download the dataset. \
   Alternatively, you can download the 2 files from the following page and extract them to the `data/` directory: \
    <http://p-destre.di.ubi.pt/download.html#:~:text=CVPRW.2018.00281%2C%202018.-,Download,-This%20dataset%20is> \
    Make sure to extract the contents of the `rois.zip` file into the `data/P-DESTRE` directory.
2. If [docker-compose](https://docs.docker.com/compose/install/) is installed, run:

   ```bash
   docker-compose up
   ```

   This is the recommended way to start the container.

   If docker-compose is not installed, then execute the following command:

   ```bash
   sudo ./run.sh
   ```

3. Once the container is up and running, you will see a URL displayed in the terminal. Click on it to open a jupyter session in the browser.
4. Open the notebooks in the `notebooks/` directory in Jupyter.

## *** To run the grading script/notebook ***

### After all the above steps have been completed, run the `notebooks/test.ipynb` notebook in Jupyter.
