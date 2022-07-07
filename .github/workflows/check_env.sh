#!/bin/bash
# Copyright 2021-2022 F4PGA Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

YOSYS_DIR=$(which yosys)

if [ "$(pwd)/env/conda/envs/f4pga_xc_fasm2bels/bin/yosys" != $YOSYS_DIR ]
then
    echo "ERROR: make env failed"
    return 1
fi

set -e

echo
echo "======================================="
echo "Creating Vivado Symbolic Link"
echo "---------------------------------------"
ln -s /mnt/aux/Xilinx /opt/Xilinx
source /opt/Xilinx/Vivado/2017.2/settings64.sh
vivado -version
