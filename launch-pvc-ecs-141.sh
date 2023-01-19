export PAYWALL_USER=<Required paywall username>
export PAYWALL_PASSWORD=<Required paywall password>
export LICENSE_FILE=<Local Path To License file>

export ROOT_CA_KEY=<Optional Local Path to root CA key>
export ROOT_CA_CERT=<Optional Local Path to root CA cert>

export REALM=FRISCH.COM
export CLUSTER_NAME=$1

./setup-cluster.sh --cluster-name=${CLUSTER_NAME} \
    --realm=${REALM} \
    --license-file=${LICENSE_FILE} \
    --paywall-username=${PAYWALL_USER} \
    --paywall-password=${PAYWALL_PASSWORD} \
    --root-ca-cert=${ROOT_CA_CERT} \
    --root-ca-key=${ROOT_CA_KEY} \
    \
    --cluster-type="pvc" \
    --ycloud-setup=true \
    --pre-install=true \
    --prepare-ansible-deployment=true \
    --install=true \
    --post-install=true \
    --user-creation=true \
    --install-pvc=true \
    --configure-pvc=true \
    --create-cdw=true \
    --create-cml=true \
    --create-cde=true \
    --create-viz=true \
    --data-load=true \
    --free-ipa=true \
    --demo=false \
    --debug=true \
    \
    --cm-version='7.8.1' \
    --pvc-version="1.4.1"