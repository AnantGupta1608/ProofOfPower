// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ProofOfPower {
    address public owner;

    struct UserStats {
        uint256 totalGasUsed;
        uint256 interactionCount;
    }

    mapping(address => UserStats) public userStats;

    event EfficientInteraction(address indexed user, uint256 gasUsed, uint256 averageGas);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function logInteraction() external {
        uint256 gasAtStart = gasleft();

        // Simulate a simple interaction (could be a placeholder for real app logic)
        uint256 dummy = 0;
        for (uint8 i = 0; i < 10; i++) {
            dummy += i;
        }

        uint256 gasUsed = gasAtStart - gasleft();

        userStats[msg.sender].totalGasUsed += gasUsed;
        userStats[msg.sender].interactionCount += 1;

        uint256 avgGas = userStats[msg.sender].totalGasUsed / userStats[msg.sender].interactionCount;

        emit EfficientInteraction(msg.sender, gasUsed, avgGas);
    }

    function getAverageGas(address user) external view returns (uint256) {
        UserStats memory stats = userStats[user];
        if (stats.interactionCount == 0) return 0;
        return stats.totalGasUsed / stats.interactionCount;
    }

    function resetUser(address user) external onlyOwner {
        delete userStats[user];
    }
}
