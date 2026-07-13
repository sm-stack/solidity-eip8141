contract C {
    function f(uint256 field, uint256 index) external pure returns (bytes32 result) {
        assembly {
            result := recentrootrefload(field, index)
        }
    }
}
// ====
// EVMVersion: >=osaka
// ----
