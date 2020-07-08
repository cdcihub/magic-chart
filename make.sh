
function install() {
    set -x
    helm -n ${NAMESPACE:?} install oda-magic . --set image.tag="$(cd magic-container; git describe --always)"
}

function upgrade() {
    set -x
    helm upgrade -n ${NAMESPACE:?} oda-magic . --set image.tag="$(cd magic-container; git describe --always)"
}

$@
