contract C {
    uint transient public x;

    constructor() {
        x = 1;
    }
    function f() public returns (uint) {
        return x + 1;
    }

}
// ====
// compileViaYul: false
// ----
// constructor()
// gas legacy: 57728
// gas legacy code: 57200
// x() -> 0
// f() -> 1
