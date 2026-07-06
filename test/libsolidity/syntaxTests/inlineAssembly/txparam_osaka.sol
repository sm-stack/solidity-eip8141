contract C {
    function f() public pure returns (uint256 ret) {
        assembly {
            ret := txparam(0)
            ret := framedataload(0, 0)
            framedatacopy(0, 0, 0x20, 0)
            ret := frameparam(0, 0)
            ret := sigparam(0, 0)
        }
    }
}
// ====
// EVMVersion: >=osaka
// ----
