namespace Quanterra.Utility {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation ApplyCorrections(msg : Qubit, here : Qubit, target : Qubit) : Unit {
        if MResetZ(msg) == One { Z(target); }
        if MResetZ(here) == One { X(target); }
    }

    operation ApplyCorrectionsWithResult(msg : Qubit, here : Qubit, target : Qubit) : Result {
        let result = MResetZ(msg);
        if result == One { Z(target); }
        if MResetZ(here) == One { X(target); }
        return result;
    }

    operation ApplyComplexOperations(qubit : Qubit) : Unit {
        Rx(PI() / 4.0, qubit);
        Ry(PI() / 4.0, qubit);
        Rz(PI() / 4.0, qubit);
    }

    operation ApplyErrorCorrection(target : Qubit) : Unit {
        H(target);
        CNOT(target, target);
        H(target);
    }

    operation ApplySymmetricErrorCorrection(target : Qubit) : Unit {
        CNOT(target, target);
        H(target);
        T(target);
        H(target);
        CNOT(target, target);
    }

    operation PrepareInitialState(qubits : Qubit[], state : Int) : Unit {
        for (index in 0..Length(qubits)-1) {
            if (state &&& (1 <<< index)) != 0 {
                X(qubits[index]);
            }
        }
    }

    operation MeasureState(qubits : Qubit[]) : Int {
        mutable result = 0;
        for (index in 0..Length(qubits)-1) {
            let outcome = MResetZ(qubits[index]);
            set result w/= index <- outcome == One ? 1 | 0;
        }
        return result;
    }

    operation ApplyPhaseFlip(qubit : Qubit) : Unit {
        Z(qubit);
    }

    operation ApplyBitFlip(qubit : Qubit) : Unit {
        X(qubit);
    }

    operation ApplyBitPhaseFlip(qubit : Qubit) : Unit {
        Y(qubit);
    }

    operation CreateBellPair(qubits : Qubit[]) : Unit {
        H(qubits[0]);
        CNOT(qubits[0], qubits[1]);
    }

    operation EntangleQubits(qubits : Qubit[]) : Unit {
        for i in 1..Length(qubits)-1 {
            CNOT(qubits[0], qubits[i]);
        }
    }

    operation ApplyRotationX(qubit : Qubit, angle : Double) : Unit {
        Rx(angle, qubit);
    }

    operation ApplyRotationY(qubit : Qubit, angle : Double) : Unit {
        Ry(angle, qubit);
    }

    operation ApplyRotationZ(qubit : Qubit, angle : Double) : Unit {
        Rz(angle, qubit);
    }

    operation ApplyHadamard(qubit : Qubit) : Unit {
        H(qubit);
    }

    operation ApplyCNOT(control : Qubit, target : Qubit) : Unit {
        CNOT(control, target);
    }

    operation ApplySWAP(qubit1 : Qubit, qubit2 : Qubit) : Unit {
        SWAP(qubit1, qubit2);
    }

    operation ApplyToffoli(control1 : Qubit, control2 : Qubit, target : Qubit) : Unit {
        CCNOT(control1, control2, target);
    }

    operation ApplyFredkin(control : Qubit, target1 : Qubit, target2 : Qubit) : Unit {
        CSWAP(control, target1, target2);
    }

    operation ApplyPhaseShift(qubit : Qubit, angle : Double) : Unit {
        R1(angle, qubit);
    }

    operation ApplyT(qubit : Qubit) : Unit {
        T(qubit);
    }

    operation ApplyTAdjoint(qubit : Qubit) : Unit {
        Adjoint T(qubit);
    }

    operation ApplyS(qubit : Qubit) : Unit {
        S(qubit);
    }

    operation ApplySAdjoint(qubit : Qubit) : Unit {
        Adjoint S(qubit);
    }

    operation ApplyControlledZ(control : Qubit, target : Qubit) : Unit {
        Controlled Z([control], target);
    }

    operation ApplyControlledX(control : Qubit, target : Qubit) : Unit {
        Controlled X([control], target);
    }

    operation ApplyControlledY(control : Qubit, target : Qubit) : Unit {
        Controlled Y([control], target);
    }

    operation ApplyControlledH(control : Qubit, target : Qubit) : Unit {
        Controlled H([control], target);
    }

    operation ApplyControlledSwap(control : Qubit, qubit1 : Qubit, qubit2 : Qubit) : Unit {
        Controlled SWAP([control], qubit1, qubit2);
    }

    operation ApplyControlledPhaseShift(control : Qubit, target : Qubit, angle : Double) : Unit {
        Controlled R1([control], angle, target);
    }

    operation ApplyControlledRotationX(control : Qubit, target : Qubit, angle : Double) : Unit {
        Controlled Rx([control], angle, target);
    }

    operation ApplyControlledRotationY(control : Qubit, target : Qubit, angle : Double) : Unit {
        Controlled Ry([control], angle, target);
    }

    operation ApplyControlledRotationZ(control : Qubit, target : Qubit, angle : Double) : Unit {
        Controlled Rz([control], angle, target);
    }

    operation ApplyIdentity(qubit : Qubit) : Unit {
        I(qubit);
    }

    operation ApplyControlOnResult(result : Result, op : (Qubit[] => Unit), qubits : Qubit[]) : Unit {
        if result == One {
            op(qubits);
        }
    }
}