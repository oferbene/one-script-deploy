export PAYWALL_USER=
export PAYWALL_PASSWORD=
export LICENSE_FILE=

export REALM=CLOUDERA.SCALE.COM
export CLUSTER_NAME=scale

./setup-cluster.sh --cluster-name=${CLUSTER_NAME} \
    --realm=${REALM} \
    --license-file=${LICENSE_FILE} \
    --paywall-username=${PAYWALL_USER} \
    --paywall-password=${PAYWALL_PASSWORD} \
    --cluster-type="ansible-cdp-scale-pvc" \
    --pre-install=false \
    --prepare-ansible-deployment=true \
    --install=false \
    --post-install=false \
    --user-creation=false \
    --install-pvc=false \
    --configure-pvc=false \
    --create-cdw=true \
    --create-cml=true \
    --create-cde=true \
    --create-viz=true \
    --data-load=true \
    --datagen-as-a-service=true \
    --demo=false \
    --debug=true \
    --use-csa=true \
    --use-spark3=true \
    \
    --encryption-activated=false \
    --free-ipa=true \
    --pvc=true \
    --pvc-type="ECS" \
    --node-user=root \
    --node-password=marc \
    --nodes-base="base-master1.scale.root.hwx.site base-master2.scale.root.hwx.site base1.scale.root.hwx.site base2.scale.root.hwx.site base3.scale.root.hwx.site" \
    --node-ipa="freeipa.scale.root.hwx.site" \
    --nodes-ecs="masterecs.scale.root.hwx.site wkr1.scale.root.hwx.site wkr2.scale.root.hwx.site wkr3.scale.root.hwx.site wkr4.scale.root.hwx.site" 

