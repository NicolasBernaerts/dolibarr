#!/bin/bash
# ---------------------------------------------------------------------
# Script to add FTO models to Dolibarr installation
# Tested with Dolibarr 6.0 on Debian 8 Jessie
#  Revision history :
#   18/01/2016, V1.0 - Creation by N. Bernaerts
#   15/12/2017, V1.1 - Adapted for Dolibarr 6.0
#   11/11/2024, V1.2 - Add target installation for --normal or --docker
# ---------------------------------------------------------------------

# if no argument, display help
if [ $# -eq 0 ] 
then
	echo "Install FTO custom for Dolibarr"
	echo "Parameters are :"
	echo "  --normal    Install in a normal Debian or Ubuntu env."
  echo "  --docker    Install in a docker env. under /opt/dolibarr.data"
	exit 1
fi

# iterate thru parameters
while test ${#} -gt 0
do
	case $1 in
		--normal) shift; MODE="normal"; shift; ;;
		--docker) shift; MODE="docker"; shift; ;;
    esac
done

# if no running mode, error
[ "${MODE}" = "" ] && { echo "[error] Environment is compulsory (--normal or --docker); exit; }

# GitHub repository
GITHUB_REPO="https://raw.githubusercontent.com/NicolasBernaerts/dolibarr/master/6.0"

# target directories
if [ "${MODE}" = "normal" ]
then
  DOLIBARR_MODULE="/usr/share/dolibarr/htdocs/core/modules"
  DOLIBARR_LANG="/usr/share/dolibarr/htdocs/langs"
else
  DOLIBARR_MODULE="/opt/dolibarr.data/modules"
  DOLIBARR_LANG="/opt/dolibarr.data/langs"
fi

# Installation : Invoice
wget -O "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_1.modules.php" "${GITHUB_REPO}/pdf_facture_fto.modules.php"
cp "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_1.modules.php" "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_2.modules.php"
cp "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_1.modules.php" "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_3.modules.php"
cp "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_1.modules.php" "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_4.modules.php"
sed -i 's/pdf_facture_fto/pdf_facture_fto_1/g' "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_1.modules.php"
sed -i 's/pdf_facture_fto/pdf_facture_fto_2/g' "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_2.modules.php"
sed -i 's/pdf_facture_fto/pdf_facture_fto_3/g' "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_3.modules.php"
sed -i 's/pdf_facture_fto/pdf_facture_fto_4/g' "${DOLIBARR_MODULE}/facture/doc/pdf_facture_fto_4.modules.php"

# Installation : Commercial proposal
wget -O "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_1.modules.php" "${GITHUB_REPO}/pdf_propale_fto.modules.php"
cp "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_1.modules.php" "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_2.modules.php"
cp "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_1.modules.php" "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_3.modules.php"
cp "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_1.modules.php" "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_4.modules.php"
sed -i 's/pdf_propale_fto/pdf_propale_fto_1/g' "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_1.modules.php"
sed -i 's/pdf_propale_fto/pdf_propale_fto_2/g' "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_2.modules.php"
sed -i 's/pdf_propale_fto/pdf_propale_fto_3/g' "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_3.modules.php"
sed -i 's/pdf_propale_fto/pdf_propale_fto_4/g' "${DOLIBARR_MODULE}/propale/doc/pdf_propale_fto_4.modules.php"

# Installation : Order
wget -O "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_1.modules.php" "${GITHUB_REPO}/pdf_commande_fto.modules.php"
cp "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_1.modules.php" "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_2.modules.php"
cp "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_1.modules.php" "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_3.modules.php"
cp "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_1.modules.php" "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_4.modules.php"
sed -i 's/pdf_commande_fto/pdf_commande_fto_1/g' "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_1.modules.php"
sed -i 's/pdf_commande_fto/pdf_commande_fto_2/g' "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_2.modules.php"
sed -i 's/pdf_commande_fto/pdf_commande_fto_3/g' "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_3.modules.php"
sed -i 's/pdf_commande_fto/pdf_commande_fto_4/g' "${DOLIBARR_MODULE}/commande/doc/pdf_commande_fto_4.modules.php"

# Installation : FTO models langage files 
wget -O "${DOLIBARR_LANG}/en_US/fto.lang" "${GITHUB_REPO}/langs/en_US-fto.lang"
wget -O "${DOLIBARR_LANG}/en_IN/fto.lang" "${GITHUB_REPO}/langs/en_IN-fto.lang"
wget -O "${DOLIBARR_LANG}/fr_FR/fto.lang" "${GITHUB_REPO}/langs/fr_FR-fto.lang"
