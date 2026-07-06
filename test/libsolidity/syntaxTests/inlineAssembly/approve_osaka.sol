contract C {
    function f() public pure {
        assembly {
            approve(0, 0, 0)
        }
    }
}
// ====
// EVMVersion: >=osaka
// ----
