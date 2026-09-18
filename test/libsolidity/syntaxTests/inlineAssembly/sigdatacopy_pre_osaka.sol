contract C {
    function f(uint256 offset, uint256 length, uint256 signature) public pure {
        assembly {
            sigdatacopy(0, offset, length, signature)
        }
    }
}
// ====
// EVMVersion: =prague
// ----
// TypeError 8156: (124-135): The "sigdatacopy" instruction is only available for Osaka-compatible VMs (you are currently compiling for "prague").
