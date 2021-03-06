REDSAT=$(dirname "$(readlink -f "$BASH_SOURCE")")/..
cd ${REDSAT}

export REDSAT_CONFIG_DIR=./persistent-data/config
export REDSAT_INPUT_DIR=./persistent-data/input
export REDSAT_GR_DIR=./radio/receiver/data/gr
export REDSAT_DEPS_DIR=./

FILENAME=`date "+$1_%Y-%m-%d_%H-%M-%S"`
./radio/receiver/run.sh "$1" "$FILENAME" nogui notcp nocal
