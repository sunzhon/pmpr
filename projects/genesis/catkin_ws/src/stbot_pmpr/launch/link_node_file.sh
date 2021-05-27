#! /bin/sh

current_path=$(dirname $(readlink -f $0))
exec_node="$current_path/../stbot_pmpr_node"
build_node="$current_path/../../../devel/lib/stbot_pmpr/stbot_pmpr_node"
if [ ! -f "$exec_node" ];then
    ln -s $build_node $exec_node
fi

