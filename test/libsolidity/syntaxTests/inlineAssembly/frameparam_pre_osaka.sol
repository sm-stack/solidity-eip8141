contract C {
    function f(uint256 frame, uint256 index) public pure returns (bytes32 ret) {
        assembly {
            ret := frameparam(frame, index)
        }
    }
}
// ====
// EVMVersion: =prague
// ----
// TypeError 8154: (132-142): The "frameparam" instruction is only available for Osaka-compatible VMs (you are currently compiling for "prague").
// DeclarationError 8678: (125-156): Variable count for assignment to "ret" does not match number of values (1 vs. 0)
