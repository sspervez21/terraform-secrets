Usage:

TF_VAR_secret1_name=<any_username> TF_VAR_secret1_password=<any_password> TF_VAR_secret2_key=<any_key> terraform plan

e.g.
TF_VAR_secret1_name=Example2Username TF_VAR_secret1_password=Example2Pass TF_VAR_secret2_key=someKey terraform plan

TF_VAR_secret1_name=<any_username> TF_VAR_secret1_password=<any_password> TF_VAR_secret2_key=<any_key> terraform apply

e.g.
TF_VAR_secret1_name=Example2Username TF_VAR_secret1_password=Example2Pass TF_VAR_secret2_key=someKey terraform apply

./GetSecrets.sh <number of secrets>

e.g.
./GetSecrets.sh 2