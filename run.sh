source .env

echo "Private Key: $PK"
echo "RPC: $RPC"


# echo Buliding
# forge build --optimize --optimizer-runs 1000000
# echo Build completed Successfully.

# echo "======================================================================================================"

# # SimulatorV1
# echo Creating SimulatorV1 Contract
# SimulatorV1=$(forge create src/SimulatorV1.sol:SimulatorV1 --rpc-url $RPC --private-key $PK \
#       | awk '/Deployed to:/ {print $3}')
# export SimulatorV1
# echo SimulatorV1 Address: $SimulatorV1

# echo "======================================================================================================"

# # SimulatorV1
# echo Creating WhackAMoleBotV1 Contract
# WhackAMoleBotV1=$(forge create src/WhackAMoleBotV1.sol:WhackAMoleBotV1 --rpc-url $RPC --private-key $PK \
#       | awk '/Deployed to:/ {print $3}')
# export WhackAMoleBotV1
# echo WhackAMoleBotV1 Address: $WhackAMoleBotV1

# echo "======================================================================================================"

# # Tokens
# echo Creating Tokens Contract
# export TOKEN_NAME="WeGonnaMakeIt"
# export TOKEN_SYMBOL="WGMI"
# export TOKEN_SUPPLY=100000000
# TOKEN_ADDRESS=$(forge create src/Token.sol:Token --rpc-url $RPC --private-key $PK \
#       --constructor-args "$TOKEN_NAME" $TOKEN_SYMBOL $TOKEN_SUPPLY \
#       | awk '/Deployed to:/ {print $3}')
# export TOKEN_ADDRESS
# echo TOKEN Address: $TOKEN_ADDRESS

# echo "======================================================================================================"

# # UniswapV2Factory
# echo Creating UniswapV2Factory Contract
# export FEETOSETTER_ADDRESS="0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"
# FACTORY_V2_ADDRESS=$(forge create src/UniswapV2Factory.sol:UniswapV2Factory --rpc-url $RPC --private-key $PK \
#       --constructor-args "$FEETOSETTER_ADDRESS" \
#       | awk '/Deployed to:/ {print $3}')
# export FACTORY_V2_ADDRESS
# echo UniswapV2Factory Address: $FACTORY_V2_ADDRESS

# echo "======================================================================================================"

# #WETH CONTRACT
# echo Creating WETH Contract
# WETH_ADDRESS=$(forge create src/WETH.sol:WETH --rpc-url $RPC --private-key $PK \
#       | awk '/Deployed to:/ {print $3}')
# export WETH_ADDRESS
# echo WETH Address: $WETH_ADDRESS

# echo "======================================================================================================"

# echo Creating UniswapV2Router02 Contract
# ROUTER2_ADDRESS=$(forge create src/UniswapV2Router02.sol:UniswapV2Router02 --rpc-url $RPC --private-key $PK \
#   --constructor-args "$FACTORY_V2_ADDRESS" "$WETH_ADDRESS" \
#   | awk '/Deployed to:/ {print $3}')
# export ROUTER2_ADDRESS
# echo UniswapV2Router02 Address: ROUTER2_ADDRESS


# echo "======================================================================================================"

# echo Creating UniswapV2Router01 Contract
# ROUTER1_ADDRESS=$(forge create src/UniswapV2Router01.sol:UniswapV2Router01 --rpc-url $RPC --private-key $PK \
#   --constructor-args "$FACTORY_V2_ADDRESS" "$WETH_ADDRESS" \
#   | awk '/Deployed to:/ {print $3}')
# export ROUTER1_ADDRESS
# echo UniswapV2Router01 Address: $ROUTER1_ADDRESS

# echo "======================================================================================================"

# echo Creating UniswapV2Migrator Contract
# MIGRATOR=$(forge create src/UniswapV2Migrator.sol:UniswapV2Migrator --rpc-url $RPC --private-key $PK \
#   --constructor-args "$FACTORY_V2_ADDRESS" "$ROUTER1_ADDRESS"  \
#   | awk '/Deployed to:/ {print $3}')
# export MIGRATOR
# echo UniswapV2Migrator Address: $MIGRATOR


# #echo "======================================================================================================"
# #
# ## UniswapV2ERC20
# #echo Creating UniswapV2ERC20 Contract
# #export CHAINID=31337
# #V2_ERC20_ADDRESS=$(forge create src/UniswapV2ERC20.sol:UniswapV2ERC20 --rpc-url $RPC --private-key $PK \
# #  --constructor-args "$CHAINID" \
# #  | awk '/Deployed to:/ {print $3}')
# #export V2_ERC20_ADDRESS
# #echo UniswapV2ERC20 Address: $V2_ERC20_ADDRESS
