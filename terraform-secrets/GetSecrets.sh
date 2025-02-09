for i in $(seq 1 $1);
do
    aws secretsmanager list-secrets | jq '.SecretList[] | .Name' | head -n$i | tail -n1
    ARN=$(aws secretsmanager list-secrets | jq '.SecretList[] | .ARN' | head -n$i | tail -n1 | sed -e 's/"//g')
    aws secretsmanager get-secret-value --secret-id $ARN | jq '.SecretString'
done
