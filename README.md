## Welcome! 
This is a scoring system for assessing antibody-antigen docking quality by assessing the contact preferences (c-score) of each contacting residue pairs. Contact preferences are based on interaction residue frequencies across Ab-Ag complexes in the AbDb database (http://www.abybank.org/abdb/). 

### To get started: 
Clone the repository and create a virtual environment (Python 3.11) with the required packages installed: 
```bash
git clone https://github.com/rickyree/docking_quality_scorer.git
cd docking_quality_scorer
bash setup.sh
conda activate docking_quality_scorer
```


Once in the environment, run the file cscore_generator.py, specifying the `-b` option with the path to the PDB files: 
```bash
python cscore_generator.py -b path_to_docking_complex_files 
```

The c-score for each Ab-Ag complex and their accuracy label (discard, carry forward, or carry forward with priority) will be available as a csv file in the results folder. 


## Files  

### setup.sh
Creates conda environment with Python 3.11 and installs required packages. 

### cscore_generator.py 
Takes a folder containing the PDB files of docking complexes to generate c-scores for. Calculates c-scores from contacting residue pairs and returns labels for each complex to discard or carry forward to further analysis in the results folder. 

### results 
Results of running cscore_generator.py will be stored here. After running, 2 files are generated: 
* generated_scores.csv: csv file of all c-scores and labels for each complex. 
* pie.png: pie chart showing the proportions of complex labels.  

### example_files.zip 
Sample database containing PDB files to generate c-scores for. Set this with the `-b` option in cscore_generator.py. Note these are SAbDab structures and not docking models. 

### residuemap
folder with CSV file containing contact preference residue heatmaps. 

### util.py 
File containing all internal functions. 





