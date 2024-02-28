# Source Code Folder
The source code for this project is organized within the src directory. Here are the guidelines for structuring your source code:

## Create Subdirectories for Each Pipeline Stage:
The project involves different stages, from data preparation to analysis and generating final outputs. Create subfolders within src to represent each of these stages.
For now we have:

```
  /src
  ├── data-preparation   (this pipeline stage is used to prepare/clean a data set)
  ├── analysis           (this pipeline stage  is used to analyze the data cleaned in the previous pipline)
  ├── paper              (this pipline stage produces tables and figures for the final project)
```

First make sure that the source code is available on your local computer. Second, the source code is versioned using Git, and synchronized with GitHub (so, automatic backups are guaranteed)
