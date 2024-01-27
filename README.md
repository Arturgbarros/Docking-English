# Molecular Docking
**Molecular Docking**

![image](https://github.com/Tutugb/Docking/assets/125391314/4bfce3d3-e88f-4a31-b5e5-ad408352ed03)

*Molecular Docking* is a fundamental computational technique in the fields of chemistry and biology. It is used to predict the interaction between molecules, such as proteins and ligands. This process is crucial in drug discovery, allowing the analysis and optimization of connections between chemical substances of interest.

**Sites:**
- **Uniprot**
  - [https://www.uniprot.org/](https://www.uniprot.org/)
- **Pubchem**
  - [https://pubchem.ncbi.nlm.nih.gov/](https://pubchem.ncbi.nlm.nih.gov/)
- **Pymol**
  - [https://pymol.org/2/](https://pymol.org/2/)
- **MGLTools**
  - [https://ccsb.scripps.edu/mgltools/downloads/](https://ccsb.scripps.edu/mgltools/downloads/)
- **PDB (Protein Data Bank)**
  - [https://www.rcsb.org/](https://www.rcsb.org/)
- **Openbabel**
  - [https://www.cheminfo.org/Chemistry/Cheminformatics/FormatConverter/index.html](https://www.cheminfo.org/Chemistry/Cheminformatics/FormatConverter/index.html)
- **Avogadro**
  - [https://avogadro.cc/](https://avogadro.cc/)

# **Protein Preparation**

In this step, I'll explain how to prepare the protein before proceeding to the MGLTools app, regardless of whether it's extracted from **Uniprot** or **PDB**. Further details about this preparation will be discussed later when you have both the molecule and protein on hand.

## **Protein Extracted from PDB**

**1**. Check the existence of the X-ray crystallography structure in the PDB database for a more reliable import, searching by the protein's name or its promoter gene.
   **1.1.** If found, download the structure in PDB format.

    ![image](https://github.com/Tutugb/Docking/assets/125391314/b6cf63b9-8ed7-4c28-b1be-6295a2106e2b)

**2**. Open the protein in Pymol.

  ** 2.1.** Remove water molecules.

   ![image](https://github.com/Tutugb/Docking/assets/125391314/3694eb9e-b237-4190-a4d7-4f8e25a35d37)

  **2.2.** Add polar hydrogens.

   ![image](https://github.com/Tutugb/Docking/assets/125391314/a30cf557-d677-4b9a-98db-90620cbd1b26)

   **2.3.** Export the molecule in PDB format.

   ![image](https://github.com/Tutugb/Docking/assets/125391314/ae50641c-c7e4-4c0f-ae24-9435d4103311)

## **Protein Extracted from Uniprot**

**1.** Check the existence of a homology structure in the Uniprot database to import a structure with relative reliability, searching by the protein's name or its promoter gene.
   1.1. If found, download it in the available format.

   ![image](https://github.com/Tutugb/Docking/assets/125391314/a72ab6c7-0ef7-4081-ba4e-6956900fa823)

**2.** Open the protein in Pymol.

  **2.1.** Add polar hydrogens.

   **2.2.** Export the molecule in PDB format.

   ![image](https://github.com/Tutugb/Docking/assets/125391314/928a5bfd-ab69-4f97-8517-8aa097aeefc4)

# Protein Preparation in MGLTools

**Read the Protein:**
![image](https://github.com/Tutugb/Docking/assets/125391314/f466ede9-a67c-417e-8cd3-0ea550ac181e)

**Check and Repair Missing Atoms:**
* **Check:**

  ![image](https://github.com/Tutugb/Docking/assets/125391314/2cd49321-e512-4a87-851c-0bf260bb45df)

  Select all missing atoms for repair.

  ![image](https://github.com/Tutugb/Docking/assets/125391314/5b5e11b5-a26e-4dc9-9106-e03a87db04de)

**Repair:**
  
  ![image](https://github.com/Tutugb/Docking/assets/125391314/2c29d931-772c-4338-9b89-9183671b5c7f)
  
  * Note: After repair, recheck to ensure all atoms are included.*

**Add Kolman Charge:**

![image](https://github.com/Tutugb/Docking/assets/125391314/cab1b4c4-7b32-4781-a86a-2d083bdf98ab)

## **GridBox Preparation for Blind Docking**

**Adding GridBox:**
![image](https://github.com/Tutugb/Docking/assets/125391314/dd7bfe8d-c202-458b-8904-08279e57297c)

**Enveloping Entire Protein with GridBox:**

Adjust parameters in "Grid Options" for grid location and size.

![image](https://github.com/Tutugb/Docking/assets/125391314/4283d061-5012-449d-a515-4f7e6252fdb6)

Save each part when the protein is entirely enveloped by the gridbox.

![image](https://github.com/Tutugb/Docking/assets/125391314/4286809c-a7a8-4960-8bc1-161ca470c532)

* Note: In cases where the protein is too large for one grid box, prepare several grid boxes, each covering a part of the protein, ensuring some overlap for complete coverage.*

**Saving Parts:**

**Save GridBox Position and Shape:**

![image](https://github.com/Tutugb/Docking/assets/125391314/d1da240e-239b-440b-8175-c0739a74630d)

**Choosing Save Location:**

![image](https://github.com/Tutugb/Docking/assets/125391314/c13995fe-6a51-44c7-86bd-c7a1094b8801)

Delete any text in the "Startup directory," click "Set," and then "Browse" to choose the save location.

**Save GridBox File:**

![image](https://github.com/Tutugb/Docking/assets/125391314/c9305e1b-b753-4910-8423-a7929c821189)

In the subsequent window, in the options "receptor," "ligand," and "out," enter any two letters.

![image](https://github.com/Tutugb/Docking/assets/125391314/1dbe27f0-8af0-4173-a82c-0263c41e0ff8)

* Note: The file will be saved as "config," but modify it to match the protein file saved in PDBqt format to avoid conflicts during the molecular docking process.*

**Save Protein in PDBqt Format:**

![image](https://github.com/Tutugb/Docking/assets/125391314/8705bf73-9ca1-47c1-9f4e-1f639705d278)

Select the molecule to export, click on the protein's name, and then "Select Molecule."

![image](https://github.com/Tutugb/Docking/assets/125391314/dfff6774-ab62-4b83-bf9b-f26ebe8df588)

* Note1: Some structural warnings may appear; accept them if they do not compromise the results.*

* Note2: Save the protein in ".pdbqt" format (write this in the filename) with a name without special characters or spaces, naming the gridbox file the same as the protein file in PDBqt format.*

# **Molecule (Ligand) Preparation:**

In this case, the molecule to be prepared can be an inhibitor, drug, or toxin, and its chemical structure should be known in at least 2D format.

**Exporting Molecule from Pubchem Database:**
* **Molecule in Pubchem Database**
  * **Molecule with 3D Structure**

    1.1.Download the molecule in SDF format with 3D structure.

       ![image](https://github.com/Tutugb/Docking/assets/125391314/5fb78c6b-0942-4e60-8773-5fda1eae083f)

  * **Molecule without 3D Structure**
  
    1.1. Download the molecule in SDF format with 2D structure and convert it to 3D in Avogadro, then save it in PDB format.

    ![image](https://github.com/Tutugb/Docking/assets/125391314/a30cf557-d677-4b9a-98db-90620cbd1b26)

**Molecule not Present in the Pubchem Database:**

In this case, search for the molecule in other databases such as Zinc or Drugbank.

* **Zinc**
```python
  [https://zinc.docking.org/](https://zinc.docking.org/)
```
* **Drugbank**
```python
https://go.drugbank.com/
```

**2.** Converting to PDBqt Format

For this step, the MGLTools software is required, as it facilitates the quick conversion from PDB to PDBqt format.

**2.1.** Opening the molecule in PDB format

![image](https://github.com/Tutugb/Docking/assets/125391314/ed3cd015-bf33-41d7-84e6-d182437334bd)

**2.2.** Exporting in PDBqt format

![image](https://github.com/Tutugb/Docking/assets/125391314/f63dc7d6-7bd6-4a82-bf78-57e2772292b1)

# Docking
Firstly, if you are not working on the Linux system, it is necessary to download the Linux extension on Windows.

### Creating and adding files to folders for docking
First of all, it is necessary to create four folders with the names: "receptores," "ligantes," "grid," and "out"
- **receptores** -> PDBqt file(s) of the protein(s)
- **ligantes** -> file(s) of the molecule(s)
- **grid** -> file(s) of the gridbox(s)
- **out** -> output folder for results

### vina.sh File
To perform docking using the Autodock Vina methodology, the vina.sh file must be present and available.

### Running Molecular Docking
All created folders should be transferred to the Linux extension if you are not working on the Linux operating system to ensure a more organized result generation.

#### Installing Vina
```bash
sudo apt-get install autodock-vina
```

#### Initiating docking
```bash
nohup sh vina.sh &
```
- Here, a file named "nohup.out" is created to store the results of molecular docking.

#### Viewing Energetic Results
```bash
cat nohup.out
```
![image](https://github.com/Tutugb/Docking/assets/125391314/26260eae-428c-4af4-9de1-3fbad3e337a0)

- By viewing the "nohup.out" file, it is possible to assess the best binding energies, where the best one has the lowest energy and RMSD. In this case, it is the first position with an energy of -6.507 Kcal/mol and 0 RMSD.

#### Visualizing Graphical Results
All graphical visualization is done using PyMOL. Here are some ways to visualize, but there are numerous configurations based on personal preferences.

##### Opening files in PyMOL
It is necessary to copy files from the docking result to the folders created before docking, performed in the Linux extension.

###### Opening the protein file in PDBqt format from the "receptors" folder

![image](https://github.com/Tutugb/Docking/assets/125391314/de2f241e-eb8f-4f92-a893-0bfe8276f20a)

###### Opening the ligand file with the protein from the "out" folder
* Upon opening this file, the molecule will be positioned in place with the conformation of the best position.
![image](https://github.com/Tutugb/Docking/assets/125391314/7ec68492-12b1-4dff-8b59-16f1d860197f)

###### Protein Surface
* The surface format is easy to visualize whether the molecule has bound to any site on the protein, thereby verifying if the lowest energy binding is indeed the best.

**1.** Command to switch to the surface
![image](https://github.com/Tutugb/Docking/assets/125391314/614e2c81-dc14-4bc2-9f1e-adfab67ff72b)

**2.** Result
![image](https://github.com/Tutugb/Docking/assets/125391314/af272a5d-04c0-4f2e-9a3c-d84167724ed4)

###### Changing the color of the protein
* The color chosen for the protein is strictly personal, but here's how to make the change.
![image](https://github.com/Tutugb/Docking/assets/125391314/2d2133b7-83d6-4f55-99da-b0716ab6ff5d)

* Result (this allows for a clearer visualization of the molecule bound to the protein)
![image](https://github.com/Tutugb/Docking/assets/125391314/36cc17ea-0046-4632-9e06-0152a891f2b4)

###### Hydrogen Interactions between Molecule and Protein
* With this parameter, it is possible to analyze whether the bond between the molecule and the protein is strong or not based on more or fewer hydrogen interactions.

**1.** Command
![image](https://github.com/Tutugb/Docking/assets/125391314/25e34d39-016c-4729-bc09-ca07a34c6be5)

**2.** Result
![image](https://github.com/Tutugb/Docking/assets/125391314/5f246298-0edd-4e32-b4ba-65619fda54ce)

- The dashed lines represent all hydrogen bonds between the protein and the molecule.
