#!/bin/sh
# --------------------------------------------------------
# Script to add FTO models to Dolibarr installation
# Tested with Dolibarr 3.8 on Debian 8 Jessie
#  Revision history :
#   18/01/2016, V1.0 - Creation by N. Bernaerts
# --------------------------------------------------------

# GitHub repository
GITHUB_REPO="https://raw.githubusercontent.com/NicolasBernaerts/dolibarr/master"
DOLIBARR_MODULE="/usr/share/dolibarr/htdocs/core/modules"
DOLIBARR_LANG="/usr/share/dolibarr/htdocs/langs"

# Installation : Bills
wget -O "${DOLIBARR_MODULE}/facture/doc/pdf_fto_1.modules.php" "${GITHUB_REPO}/facture/pdf_fto_1.modules.php"
wget -O "${DOLIBARR_MODULE}/facture/doc/pdf_fto_2.modules.php" "${GITHUB_REPO}/facture/pdf_fto_2.modules.php"
wget -O "${DOLIBARR_MODULE}/facture/doc/pdf_fto_3.modules.php" "${GITHUB_REPO}/facture/pdf_fto_3.modules.php"
wget -O "${DOLIBARR_MODULE}/facture/doc/pdf_fto_4.modules.php" "${GITHUB_REPO}/facture/pdf_fto_4.modules.php"

# Installation : Commercial proposals
wget -O "${DOLIBARR_MODULE}/propale/doc/pdf_fto_1.modules.php" "${GITHUB_REPO}/propale/pdf_fto_1.modules.php"
wget -O "${DOLIBARR_MODULE}/propale/doc/pdf_fto_2.modules.php" "${GITHUB_REPO}/propale/pdf_fto_2.modules.php"
wget -O "${DOLIBARR_MODULE}/propale/doc/pdf_fto_3.modules.php" "${GITHUB_REPO}/propale/pdf_fto_3.modules.php"
wget -O "${DOLIBARR_MODULE}/propale/doc/pdf_fto_4.modules.php" "${GITHUB_REPO}/propale/pdf_fto_4.modules.php"

# Installation : Orders
wget -O "${DOLIBARR_MODULE}/commande/doc/pdf_fto_2.modules.php" "${GITHUB_REPO}/commande/pdf_fto.modules.php"
sed -i 's/pdf_fto/pdf_fto_2/g' "${DOLIBARR_MODULE}/commande/doc/pdf_fto_2.modules.php"

# Installation : FTO models langage files 
# en_US
wget "${GITHUB_REPO}/langs/en_US/bills.lang"
cat bills.lang | tee -a "${DOLIBARR_LANG}/en_US/bills.lang"
rm bills.lang
# en_IN
wget "${GITHUB_REPO}/langs/en_IN/bills.lang"
cat bills.lang | tee -a "${DOLIBARR_LANG}/en_IN/bills.lang"
rm bills.lang
# fr_FR
wget "${GITHUB_REPO}/langs/fr_FR/bills.lang"
cat bills.lang | tee -a "${DOLIBARR_LANG}/fr_FR/bills.lang"
rm bills.lang
