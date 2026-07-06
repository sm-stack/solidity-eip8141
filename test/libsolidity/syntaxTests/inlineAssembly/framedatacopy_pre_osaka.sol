contract C {
    function f(uint256 offset, uint256 length, uint256 frame) public pure {
        assembly {
            framedatacopy(0, offset, length, frame)
        }
    }
}
// ====
// EVMVersion: =prague
// ----
// TypeError 8153: (120-133): The "framedatacopy" instruction is only available for Osaka-compatible VMs (you are currently compiling for "prague").
