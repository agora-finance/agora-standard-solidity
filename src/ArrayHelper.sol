// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

library ArrayHelper {
    function concat(address[] memory _inputArray, address _newItem) internal pure returns (address[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new address[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(
        function()[] memory _inputArray,
        function() _newItem
    ) internal pure returns (function()[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new function()[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(bool[] memory _inputArray, bool _newItem) internal pure returns (bool[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new bool[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(uint128[] memory _inputArray, uint128 _newItem) internal pure returns (uint128[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new uint128[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(uint32[] memory _inputArray, uint32 _newItem) internal pure returns (uint32[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new uint32[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(bytes32[] memory _inputArray, bytes32 _newItem) internal pure returns (bytes32[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new bytes32[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(
        bytes[] memory _inputArray,
        bytes memory _newItem
    ) internal pure returns (bytes[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new bytes[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(uint256[] memory _inputArray, uint256 _newItem) internal pure returns (uint256[] memory _newArray) {
        uint256 _inputArrayLength = _inputArray.length;
        _newArray = new uint256[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function concat(
        string[] memory _inputAArray,
        string memory _newItem
    ) internal pure returns (string[] memory _newArray) {
        uint256 _inputArrayLength = _inputAArray.length;
        _newArray = new string[](_inputArrayLength + 1);
        for (uint256 i = 0; i < _inputArrayLength; i++) {
            _newArray[i] = _inputAArray[i];
        }
        _newArray[_inputArrayLength] = _newItem;
    }

    function extend(address[] memory _this, address[] memory _that) internal pure returns (address[] memory _newArray) {
        uint256 _newArrayLength = _this.length + _that.length;
        _newArray = new address[](_newArrayLength);
        // loop through the first array
        for (uint256 i = 0; i < _this.length; i++) {
            _newArray[i] = _this[i];
        }
        // loop through the second array
        for (uint256 j = 0; j < _that.length; j++) {
            _newArray[_this.length+j] = _that[j];
        }
    }
}
