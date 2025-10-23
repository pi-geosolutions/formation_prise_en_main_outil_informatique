#!/usr/bin/bash

root_folder=/home/idgeo/tmp/scripting-linux/dvf
# Clear out the project to restart fresh
rm -rf $root_folder
# Create the root folder
mkdir -p $root_folder

# We download the data on region level and extract it
wget -O $root_folder/dvf-haute-garonne.csv.gz \
    https://files.data.gouv.fr/geo-dvf/latest/csv/2025/departements/31.csv.gz
gunzip $root_folder/dvf-haute-garonne.csv.gz

# then we create an extraction by municipality
codes_communes="31032 31056 31069 31088 31149 31150 31157 31291 31351 31417 31424 31526 31555 31557"
for code_com in $codes_communes
do
    echo $code_com
    mkdir $root_folder/$code_com

    # Generate municipality-specific VRTs by using a template VRT file
    sed "s/REMPLACER_PAR_CODE_INSEE_COMMUNE/$code_com/" modele_demandes_valeur_fonciere.vrt > $root_folder/$code_com/$code_com.vrt

    # Optional: convert to geopackage
    # ogr2ogr -f GPKG $root_folder/$code_com/$code_com.gpkg \
    #     $root_folder/$code_com/$code_com.vrt
done