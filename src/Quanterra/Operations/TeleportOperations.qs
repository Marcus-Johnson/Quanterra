namespace Quanterra.TeleportOperations {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Quanterra.Operations;
    open Quanterra.Utility;

    operation StandardQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation QuantumTeleportationWithMeasurement(msg : Qubit, target : Qubit) : Result {
        use here = Qubit();
        PrepareBellPair(here, target);
        Adjoint PrepareBellPair(msg, here);
        let result = MResetZ(msg);
        ApplyCorrectionsWithResult(msg, here, target);
        return result;
    }

    operation MultiQubitQuantumTeleportation(msgs : Qubit[], targets : Qubit[]) : Unit {
        for i in 0..Length(msgs)-1 {
            use here = Qubit();
            PrepareBellPair(here, targets[i]);
            Adjoint PrepareBellPair(msgs[i], here);
            ApplyCorrections(msgs[i], here, targets[i]);
        }
    }

    operation ControlledQuantumTeleportation(ctrl : Qubit, msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Controlled X([ctrl], msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation MultiControlledQuantumTeleportation(ctrls : Qubit[], msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Controlled X(ctrls, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation StochasticQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        let rnd = RandomInt(2);
        if rnd == 1 { H(msg); }
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation AdvancedQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        ApplyComplexOperations(msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation BasicQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        StandardQuantumTeleportation(msg, target);
    }

    operation NoisyQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        X(msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation DynamicQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        StandardQuantumTeleportation(msg, target);
    }

    operation QuantumTeleportationWithPhase(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Rz(PI() / 2.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation HadamardQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        H(msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation AmplitudeAdjustedQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Ry(PI() / 4.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation PhaseDampedQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Rz(PI() / 4.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation AmplitudeDampedQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Ry(PI() / 4.0, msg);
        Rz(PI() / 4.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation HybridQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Rx(PI() / 4.0, msg);
        T(msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation EntanglementAssistedQuantumTeleportation(msg1 : Qubit, msg2 : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        CNOT(msg1, msg2);
        Adjoint PrepareBellPair(msg1, here);
        ApplyCorrections(msg1, here, target);
    }

    operation ClassicalControlledQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation RotationalQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Ry(PI() / 2.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation PhaseKickbackQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        T(msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation CrossQuantumTeleportation(msg1 : Qubit, msg2 : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        CNOT(msg1, msg2);
        Adjoint PrepareBellPair(msg1, here);
        ApplyCorrections(msg1, here, target);
    }

    operation DualQuantumTeleportation(msg1 : Qubit, msg2 : Qubit, target1 : Qubit, target2 : Qubit) : Unit {
        use here1 = Qubit();
        use here2 = Qubit();
        PrepareBellPair(here1, target1);
        PrepareBellPair(here2, target2);
        Adjoint PrepareBellPair(msg1, here1);
        Adjoint PrepareBellPair(msg2, here2);
        ApplyCorrections(msg1, here1, target1);
        ApplyCorrections(msg2, here2, target2);
    }

    operation SimpleSwapQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        SWAP(msg, here);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation AdvancedSwapQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        SWAP(msg, here);
        Ry(PI() / 2.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation QuantumTeleportationWithStatePreparation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Ry(PI() / 4.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation QuantumTeleportationWithErrorCorrection(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Ry(PI() / 4.0, msg);
        Rz(PI() / 4.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
        ApplyErrorCorrection(target);
    }

    operation SymmetricErrorCorrectedQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Rx(PI() / 4.0, msg);
        Ry(PI() / 4.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
        ApplySymmetricErrorCorrection(target);
    }

    operation ComplexAmplitudeQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Ry(PI() / 4.0, msg);
        Rz(PI() / 4.0, msg);
        T(msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation DualAmplitudeQuantumTeleportation(msg1 : Qubit, msg2 : Qubit, target1 : Qubit, target2 : Qubit) : Unit {
        use here1 = Qubit();
        use here2 = Qubit();
        PrepareBellPair(here1, target1);
        PrepareBellPair(here2, target2);
        Ry(PI() / 4.0, msg1);
        Rz(PI() / 4.0, msg1);
        Ry(PI() / 4.0, msg2);
        Rz(PI() / 4.0, msg2);
        Adjoint PrepareBellPair(msg1, here1);
        Adjoint PrepareBellPair(msg2, here2);
        ApplyCorrections(msg1, here1, target1);
        ApplyCorrections(msg2, here2, target2);
    }

    operation HighComplexityQuantumTeleportation(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Ry(PI() / 4.0, msg);
        Rz(PI() / 4.0, msg);
        T(msg);
        H(msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }

    operation AdvancedControlledQuantumTeleportation(ctrl : Qubit, msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();
        PrepareBellPair(here, target);
        Controlled X([ctrl], msg);
        Ry(PI() / 4.0, msg);
        Adjoint PrepareBellPair(msg, here);
        ApplyCorrections(msg, here, target);
    }
}
