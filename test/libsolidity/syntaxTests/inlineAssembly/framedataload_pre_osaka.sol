contract C {
    function f(uint256 frame, uint256 offset) public pure returns (bytes32 ret) {
        assembly {
            ret := framedataload(frame, offset)
        }
    }
}
// ====
// EVMVersion: =prague
// ----
// TypeError 8152: (133-146): The "framedataload" instruction is only available for Osaka-compatible VMs (you are currently compiling for "prague").
// DeclarationError 8678: (126-161): Variable count for assignment to "ret" does not match number of values (1 vs. 0)
