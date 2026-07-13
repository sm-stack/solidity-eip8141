contract C {
    function f(uint256 field, uint256 index) public pure returns (bytes32 ret) {
        assembly {
            ret := recentrootrefload(field, index)
        }
    }
}
// ====
// EVMVersion: =prague
// ----
// TypeError 8272: (132-149): The "recentrootrefload" instruction is only available for Osaka-compatible VMs (you are currently compiling for "prague").
// DeclarationError 8678: (125-163): Variable count for assignment to "ret" does not match number of values (1 vs. 0)
