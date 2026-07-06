contract C {
    function f(uint256 frame, uint256 index) public pure returns (bytes32 ret) {
        assembly {
            ret := sigparam(frame, index)
        }
    }
}
// ====
// EVMVersion: =prague
// ----
// TypeError 8155: (132-140): The "sigparam" instruction is only available for Osaka-compatible VMs (you are currently compiling for "prague").
// DeclarationError 8678: (125-154): Variable count for assignment to "ret" does not match number of values (1 vs. 0)
