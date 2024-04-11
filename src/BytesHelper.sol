// SPDX-License-Identifier: ISC
pragma solidity >=0.8.4;

import { BytesLib } from "solidity-bytes-utils/contracts/BytesLib.sol";

library BytesHelper {
    function concatStorage(bytes storage _preBytes, bytes memory _postBytes) internal {
        return BytesLib.concatStorage(_preBytes, _postBytes);
    }

    function slice(bytes memory _bytes, uint256 _start, uint256 _end) internal pure returns (bytes memory) {
        return BytesLib.slice(_bytes, _start, _end - _start);
    }

    function toAddress(bytes memory _bytes, uint256 _start) internal pure returns (address) {
        return BytesLib.toAddress(_bytes, _start);
    }

    function toAddress(bytes32 _bytes32) internal pure returns (address) {
        return address(uint160(uint256(_bytes32)));
    }

    function toUint256(bytes memory _bytes, uint256 _start) internal pure returns (uint256) {
        return BytesLib.toUint256(_bytes, _start);
    }

    function toUint256(bytes memory _bytes) internal pure returns (uint256) {
        return BytesLib.toUint256(_bytes, 0);
    }

    function toUint256(bytes32 _bytes32) internal pure returns (uint256) {
        return uint256(_bytes32);
    }

    function toBytes32(bytes memory _bytes, uint256 _start) internal pure returns (bytes32) {
        return BytesLib.toBytes32(_bytes, _start);
    }

    function toBytes32(bytes memory _bytes) internal pure returns (bytes32) {
        return BytesLib.toBytes32(_bytes, 0);
    }

    function equal(bytes memory _preBytes, bytes memory _postBytes) internal pure returns (bool) {
        return BytesLib.equal(_preBytes, _postBytes);
    }

    function equalStorage(bytes storage _preBytes, bytes memory _postBytes) internal view returns (bool) {
        return BytesLib.equalStorage(_preBytes, _postBytes);
    }

    function toBytes(bytes32 _bytes32) internal pure returns (bytes memory) {
        return bytes.concat(_bytes32);
    }
}
