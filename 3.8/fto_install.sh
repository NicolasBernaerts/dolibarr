#!/bin/sh
# --------------------------------------------------------
# Script to add FTO models to Dolibarr installation
# Tested with Dolibarr 3.8 on Debian 8 Jessie
#  Revision history :
#   18/01/2016, V1.0 - Creation by N. Bernaerts
# --------------------------------------------------------

# GitHub repository
GITHUB_REPO="https://raw.githubusercontent.com/NicolasBernaerts/dolibarr/master/3.8"
DOLIBARR_MODULE="/usr/share/dolibarr/htdocs/core/modules"
DOLIBARR_LANG="/usr/share/dolibarr/htdocs/langs"

# Installation : Invoice
wget -O "${DOLIBARR_MODULE}/facture/doc/pdf_fto_1.modules.php" "${GITHUB_REPO}/facture-pdf_fto.modules.php"
cp "${DOLIBARR_MODULE}/facture/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/facture/doc/pdf_fto_2.modules.php"
cp "${DOLIBARR_MODULE}/facture/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/facture/doc/pdf_fto_3.modules.php"
cp "${DOLIBARR_MODULE}/facture/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/facture/doc/pdf_fto_4.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_2/g' "${DOLIBARR_MODULE}/facture/doc/pdf_fto_2.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_3/g' "${DOLIBARR_MODULE}/facture/doc/pdf_fto_3.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_4/g' "${DOLIBARR_MODULE}/facture/doc/pdf_fto_4.modules.php"

# Installation : Commercial proposal
wget -O "${DOLIBARR_MODULE}/propale/doc/pdf_fto_1.modules.php" "${GITHUB_REPO}/propale-pdf_fto.modules.php"
cp "${DOLIBARR_MODULE}/propale/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/propale/doc/pdf_fto_2.modules.php"
cp "${DOLIBARR_MODULE}/propale/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/propale/doc/pdf_fto_3.modules.php"
cp "${DOLIBARR_MODULE}/propale/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/propale/doc/pdf_fto_4.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_2/g' "${DOLIBARR_MODULE}/propale/doc/pdf_fto_2.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_3/g' "${DOLIBARR_MODULE}/propale/doc/pdf_fto_3.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_4/g' "${DOLIBARR_MODULE}/propale/doc/pdf_fto_4.modules.php"

# Installation : Order
wget -O "${DOLIBARR_MODULE}/commande/doc/pdf_fto_1.modules.php" "${GITHUB_REPO}/commande-pdf_fto.modules.php"
cp "${DOLIBARR_MODULE}/commande/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/commande/doc/pdf_fto_2.modules.php"
cp "${DOLIBARR_MODULE}/commande/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/commande/doc/pdf_fto_3.modules.php"
cp "${DOLIBARR_MODULE}/commande/doc/pdf_fto_1.modules.php" "${DOLIBARR_MODULE}/commande/doc/pdf_fto_4.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_2/g' "${DOLIBARR_MODULE}/commande/doc/pdf_fto_2.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_3/g' "${DOLIBARR_MODULE}/commande/doc/pdf_fto_3.modules.php"
sed -i 's/pdf_fto_1/pdf_fto_4/g' "${DOLIBARR_MODULE}/commande/doc/pdf_fto_4.modules.php"

# Installation : FTO models langage files 
wget -O "${DOLIBARR_LANG}/en_US/fto.lang" "${GITHUB_REPO}/langs/en_US-fto.lang"
wget -O "${DOLIBARR_LANG}/en_IN/fto.lang" "${GITHUB_REPO}/langs/en_IN-fto.lang"
wget -O "${DOLIBARR_LANG}/fr_FR/fto.lang" "${GITHUB_REPO}/langs/fr_FR-fto.lang"
