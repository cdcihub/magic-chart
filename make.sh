function image-tag() {
    echo "$(cd magic-container; git describe --always)"-"$(cd magic-container/magic-backend; git describe --always)"
}

function install() {
    set -x
    helm -n ${NAMESPACE:?} install oda-magic . --set image.tag=$(image-tag)
}

function upgrade() {
    set -x
    helm upgrade -n ${NAMESPACE:?} oda-magic . --set image.tag=$(image-tag)
}

$@
