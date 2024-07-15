namespace Quanterra {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Quanterra.Operations;
    open Quanterra.Utility;

    @EntryPoint()
    operation Main() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        StandardQuantumTeleportation(msg, target);
        let teleportationStatus = MResetZ(target);
        ResetAll([msg, target]);
    }
}