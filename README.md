dolibarr
========

This repository handles different models of contractual documents for Dolibarr ERP version 3.8.

It provides some commercial proposals & bills models that follow specific French travel agency rules & regulations.

They are designed to handle 4 different cases :
  - Private or professional from EU traveling outside EU
  - Service to non european travellers
  - Private outside EU traveling to EU
  - Service to european professional 

To install them on an existing Dolibarr, just download fto_install.sh and run it.

```
wget https://raw.githubusercontent.com/NicolasBernaerts/dolibarr/master/fto_install.sh
. ./fto_install.sh
```

These modules are using specific variables which should be declared in Dolibarr **config/misc** menu :

|         Variable       |      Data      |                  Description                |
| ---------------------- | -------------- | ------------------------------------------- |
| **PDF_BGCOLOR_R**      | Value [0..255] | Background color : Red component            |
| **PDF_BGCOLOR_G**      | Value [0..255] | Background color : Green component          |
| **PDF_BGCOLOR_B**      | Value [0..255] | Background color : Blue component           |    
| **PDF_FRCOLOR_R**      | Value [0..255] | Frame color : Red component                 |
| **PDF_FRCOLOR_G**      | Value [0..255] | Frame color : Green component               |
| **PDF_FRCOLOR_B**      | Value [0..255] | Frame color : Blue component                |
| **PDF_TXCOLOR_R**      | Value [0..255] | Text color : Red component                  |
| **PDF_TXCOLOR_G**      | Value [0..255] | Text color : Green component                |
| **PDF_TXCOLOR_B**      | Value [0..255] | Text color : Blue component                 |
| **PDF_SIGNATURE_PATH** |    String      | Directory holding all the signature images  |

Signature files should be named **firstname lastname.jpg**

All these modules are provided as-is by an *Open-Source friendly* French travel agency : 

[![French Travel Organisation (FTO)](http://www.fto-inde.com/images/indeetvous/fto-round.png)](http://www.fto-inde.com/)

[French Travel Organisation (FTO)](http://www.fto-inde.com/)

If these modules help you in any way and you want to thank them ... just travel with them !
