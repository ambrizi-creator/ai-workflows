# ai-workflows
This is a Swiss Army knife of AI tools for various situations in my daily life. You can find pricing tools for marketplaces, competitor analysis, medical clinics, sports nutrition, and scientific article analysis. Enjoy!

## 💻 How to "Install" and Use SAVER in Claude

SAVER is not a traditional software package, but an advanced System Prompt designed for AI models. [cite_start]The best way to use it permanently is through Claude's "Projects" feature[cite: 133, 149]. 

Follow these steps to set up SAVER in your own account:

**1. Get the Core Prompt**
Download or open the `saver_system_prompt.txt` file from this repository and copy all its contents. This file contains the full Rigor Assessment Matrix and the rules the AI must follow.

**2. Create your Workspace**
Go to the Claude web interface and create a new Project. Name it something like "SAVER - Article Screening".

**3. Set the Custom Instructions**
Inside your new Project, look for the "Custom Instructions" section. Paste the text you copied in Step 1 directly into this box. This permanently wires the project to act as a strict scientific reviewer.

**4. Add your own "Gold Standard" References (Highly Recommended)**
To calibrate the AI's rigor using Few-Shot Prompting, we have listed the DOIs of "Gold Standard" papers in our documentation. We used several parameters to classify articles in: reliable, low confidence, unreliable.
doi.org/10.1093/bioinformatics/btac020
doi.org/10.1093/bioinformatics/btz682
DOI 10.1095/biolreprod.114.121525
DOI 10.1016/j.cell.2010.12.008
doi.org/10.1016/j.molcel.2020.03.002
DOI: 10.1126/science.aad6780
dx.doi.org/10.1016/j.cell.2013.02.022
DOI: 10.1126/science.1225829


**5. Start Analyzing!**
Your SAVER skill is now installed. Just upload the PDFs of the manuscripts you want to evaluate and ask Claude to analyze it.
