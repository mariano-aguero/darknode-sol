pragma solidity ^0.4.24;


/**
 * The Settlement interface defines the functions that a settlement layer must
 * implement
 */
interface Settlement {
    function submitOrder(
        uint32 _settlementID,
        uint8 _orderType,
        uint8 _parity,
        uint64 _expiry,
        uint64 _tokens,
        uint16 _priceC, uint16 _priceQ,
        uint16 _volumeC, uint16 _volumeQ,
        uint16 _minimumVolumeC, uint16 _minimumVolumeQ,
        uint256 _nonceHash
        ) external;

    function submitMatch(
        bytes32 _buyID,
        bytes32 _sellID
        ) external;
    
    function confirmer(
        bytes32 _buyID,
        bytes32 _sellID
        ) external;
}