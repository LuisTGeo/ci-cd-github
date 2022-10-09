echo " -----Installing dependencies ... and save it in the lib folder----- "
# 
# pip3 install -r requirements.txt -t lib     # it is failling
# pip3 install pandas -t lib
pip install -r requirements.txt -t lib
echo " -----Zipping deployment packages...----- "
cd lib
# Zipping all the files and save it one folder up
zip -r9 ../deployment_package.zip .
cd ..
# Adding lambda_function.py in the zip file
echo " -----Zipping lambda_function ...----- "
zip -g deployment_package.zip lambda_function.py

echo " ----- Finish Zipping ...----- "



