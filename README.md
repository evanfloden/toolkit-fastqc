# toolkit-fastqc pipeline 

A basic pipeline for fastqc

[![nextflow](https://img.shields.io/badge/nextflow-%E2%89%A523.04.0-brightgreen.svg)](http://nextflow.io)


## Requirements 

* Unix-like operating system (Linux, macOS, etc)
* Java 11 

## Quickstart 

1. If you don't have it already install Docker in your computer. Read more [here](https://docs.docker.com/).

2. Install Nextflow (version 23.10.0 or later):
      
        curl -s https://get.nextflow.io | bash

3. Launch the pipeline execution: 

        ./nextflow run nextflow-io/toolkit-fastqc -profile docker,wave
        
	
Note: the very first time you execute it, it will take a few minutes to download the pipeline 
from this GitHub repository and the associated Docker images needed to execute the pipeline.  


## Components 

toolkit-fastqc uses the following software components and tools: 

* [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)

