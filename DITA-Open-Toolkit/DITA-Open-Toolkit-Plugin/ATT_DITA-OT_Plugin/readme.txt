com.att.pdf2

Last Updated: August 3, 2021

Tested against DITA Open Toolkit (DITA-OT) version 3.6.1


Installation Instructions
-------------------------

1. Obtain DITA-OT version 3.6.1 or later.

2. Install DITA-OT on your computer.

3. Ensure that DITA-OT successfully generates a PDF from its included sample content,
   according to the instructions provided with DITA-OT.

4. Unzip "com.att.pdf2" to the following location within DITA-OT, where "/path/to/dita-ot"
   represents the path to the DITA-OT installation on your computer:
   
   /path/to/dita-ot/plugins/
   
   When unzipped to the appropriate location, the plugin will appear on this path, where 
   "/path/to/dita-ot" represents the path to the DITA-OT installation on your computer:
   
   /path/to/dita-ot/plugins/com.att.pdf2/
   

Usage
-----
   
1. Run the following command line, where "/path/to/prism/dita/" represents the path to the
   prism directory that contains the 0.prism.ditamap file and corresponding DITA content,
   and "/path/to/out/" represents the path to the desired output directory:

   dita -i /path/to/prism/dita/0.prism.ditamap -f attpdf2 -o /path/to/out/

2. Confirm that "0.prism.pdf" was successfully generated at the "/path/to/out/" location.

