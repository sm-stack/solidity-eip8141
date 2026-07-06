contract C {
    function f() public pure returns (uint ret) {
        assembly {
            function approve() -> r {
                r := 1000
            }
            ret := approve()
        }
    }
}
// ====
// EVMVersion: >=osaka
// ----
// ParserError 5568: (103-110): Cannot use builtin function name "approve" as identifier name.
