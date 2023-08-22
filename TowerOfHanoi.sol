// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TowerOfHanoi {
    event Move(uint256 from, uint256 to);

    function towerOfHanoi(uint256 n, uint256 source, uint256 auxiliary, uint256 target) public {
        moveDisks(n, source, auxiliary, target);
    }

    function moveDisks(uint256 n, uint256 source, uint256 auxiliary, uint256 target) internal {
        if (n == 1) {
            emit Move(source, target);
        } else {
            moveDisks(n - 1, source, target, auxiliary);
            emit Move(source, target);
            moveDisks(n - 1, auxiliary, source, target);
        }
    }
}
