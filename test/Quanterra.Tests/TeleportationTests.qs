namespace Quanterra.Tests {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Quanterra.Operations;
    open Microsoft.Quantum.Xunit;

    @Test("QuantumSimulator")
    operation TestStandardQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        StandardQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Standard Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestStandardQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        StandardQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Standard Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestQuantumTeleportationWithMeasurement_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        let result = QuantumTeleportationWithMeasurement(msg, target);
        AssertEqual(Zero, result, "Quantum Teleportation with Measurement Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestQuantumTeleportationWithMeasurement_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        let result = QuantumTeleportationWithMeasurement(msg, target);
        AssertEqual(One, result, "Quantum Teleportation with Measurement Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestMultiQubitQuantumTeleportation_Positive() : Unit {
        use msgs = Qubit[2];
        use targets = Qubit[2];
        MultiQubitQuantumTeleportation(msgs, targets);
        for i in 0..1 {
            AssertEqual(Zero, M(targets[i]), "Multi-Qubit Quantum Teleportation Positive Test Failed");
        }
    }

    @Test("QuantumSimulator")
    operation TestMultiQubitQuantumTeleportation_Negative() : Unit {
        use msgs = Qubit[2];
        use targets = Qubit[2];
        H(msgs[0]);
        MultiQubitQuantumTeleportation(msgs, targets);
        AssertEqual(One, M(targets[0]), "Multi-Qubit Quantum Teleportation Negative Test Failed for Target 0");
    }

    @Test("QuantumSimulator")
    operation TestControlledQuantumTeleportation_Positive() : Unit {
        use (ctrl, msg, target) = (Qubit(), Qubit(), Qubit());
        ControlledQuantumTeleportation(ctrl, msg, target);
        AssertEqual(Zero, M(target), "Controlled Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestControlledQuantumTeleportation_Negative() : Unit {
        use (ctrl, msg, target) = (Qubit(), Qubit(), Qubit());
        X(ctrl);
        ControlledQuantumTeleportation(ctrl, msg, target);
        AssertEqual(One, M(target), "Controlled Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestMultiControlledQuantumTeleportation_Positive() : Unit {
        use ctrls = Qubit[2];
        use (msg, target) = (Qubit(), Qubit());
        MultiControlledQuantumTeleportation(ctrls, msg, target);
        AssertEqual(Zero, M(target), "Multi-Controlled Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestMultiControlledQuantumTeleportation_Negative() : Unit {
        use ctrls = Qubit[2];
        use (msg, target) = (Qubit(), Qubit());
        X(ctrls[0]);
        MultiControlledQuantumTeleportation(ctrls, msg, target);
        AssertEqual(One, M(target), "Multi-Controlled Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestStochasticQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        StochasticQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Stochastic Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestStochasticQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        StochasticQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Stochastic Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdvancedQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        AdvancedQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Advanced Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdvancedQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        AdvancedQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Advanced Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestBasicQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        BasicQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Basic Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestBasicQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        BasicQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Basic Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestNoisyQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        NoisyQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Noisy Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestNoisyQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        NoisyQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Noisy Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdaptiveQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        AdaptiveQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Adaptive Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdaptiveQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        AdaptiveQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Adaptive Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestPhaseShiftQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        PhaseShiftQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Phase Shift Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestPhaseShiftQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        PhaseShiftQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Phase Shift Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestHadamardQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        HadamardQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Hadamard Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestHadamardQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        HadamardQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Hadamard Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAmplitudeAdjustedQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        AmplitudeAdjustedQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Amplitude Adjusted Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAmplitudeAdjustedQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        AmplitudeAdjustedQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Amplitude Adjusted Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestPhaseDampedQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        PhaseDampedQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Phase Damped Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestPhaseDampedQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        PhaseDampedQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Phase Damped Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAmplitudeDampedQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        AmplitudeDampedQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Amplitude Damped Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAmplitudeDampedQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        AmplitudeDampedQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Amplitude Damped Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestHybridQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        HybridQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Hybrid Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestHybridQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        HybridQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Hybrid Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestEntanglementAssistedQuantumTeleportation_Positive() : Unit {
        use (msg1, msg2, target) = (Qubit(), Qubit(), Qubit());
        EntanglementAssistedQuantumTeleportation(msg1, msg2, target);
        AssertEqual(Zero, M(target), "Entanglement Assisted Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestEntanglementAssistedQuantumTeleportation_Negative() : Unit {
        use (msg1, msg2, target) = (Qubit(), Qubit(), Qubit());
        H(msg1);
        EntanglementAssistedQuantumTeleportation(msg1, msg2, target);
        AssertEqual(One, M(target), "Entanglement Assisted Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestClassicalControlledQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        ClassicalControlledQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Classical Controlled Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestClassicalControlledQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        ClassicalControlledQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Classical Controlled Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestRotationalQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        RotationalQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Rotational Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestRotationalQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        RotationalQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Rotational Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestPhaseKickbackQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        PhaseKickbackQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Phase Kickback Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestPhaseKickbackQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        PhaseKickbackQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Phase Kickback Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestCrossQuantumTeleportation_Positive() : Unit {
        use (msg1, msg2, target) = (Qubit(), Qubit(), Qubit());
        CrossQuantumTeleportation(msg1, msg2, target);
        AssertEqual(Zero, M(target), "Cross Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestCrossQuantumTeleportation_Negative() : Unit {
        use (msg1, msg2, target) = (Qubit(), Qubit(), Qubit());
        H(msg1);
        CrossQuantumTeleportation(msg1, msg2, target);
        AssertEqual(One, M(target), "Cross Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestDualQuantumTeleportation_Positive() : Unit {
        use (msg1, msg2, target1, target2) = (Qubit(), Qubit(), Qubit(), Qubit());
        DualQuantumTeleportation(msg1, msg2, target1, target2);
        AssertEqual(Zero, M(target1), "Dual Quantum Teleportation Positive Test Failed for Target 1");
        AssertEqual(Zero, M(target2), "Dual Quantum Teleportation Positive Test Failed for Target 2");
    }

    @Test("QuantumSimulator")
    operation TestDualQuantumTeleportation_Negative() : Unit {
        use (msg1, msg2, target1, target2) = (Qubit(), Qubit(), Qubit(), Qubit());
        H(msg1);
        DualQuantumTeleportation(msg1, msg2, target1, target2);
        AssertEqual(One, M(target1), "Dual Quantum Teleportation Negative Test Failed for Target 1");
    }

    @Test("QuantumSimulator")
    operation TestSimpleSwapQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        SimpleSwapQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Simple Swap Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestSimpleSwapQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        SimpleSwapQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Simple Swap Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdvancedSwapQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        AdvancedSwapQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Advanced Swap Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdvancedSwapQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        AdvancedSwapQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Advanced Swap Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestQuantumTeleportationWithStatePreparation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        QuantumTeleportationWithStatePreparation(msg, target);
        AssertEqual(Zero, M(target), "Quantum Teleportation with State Preparation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestQuantumTeleportationWithStatePreparation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        QuantumTeleportationWithStatePreparation(msg, target);
        AssertEqual(One, M(target), "Quantum Teleportation with State Preparation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestQuantumTeleportationWithErrorCorrection_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        QuantumTeleportationWithErrorCorrection(msg, target);
        AssertEqual(Zero, M(target), "Quantum Teleportation with Error Correction Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestQuantumTeleportationWithErrorCorrection_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        QuantumTeleportationWithErrorCorrection(msg, target);
        AssertEqual(One, M(target), "Quantum Teleportation with Error Correction Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestSymmetricErrorCorrectedQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        SymmetricErrorCorrectedQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Symmetric Error Corrected Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestSymmetricErrorCorrectedQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        SymmetricErrorCorrectedQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Symmetric Error Corrected Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestComplexAmplitudeQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        ComplexAmplitudeQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "Complex Amplitude Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestComplexAmplitudeQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        ComplexAmplitudeQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "Complex Amplitude Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestDualAmplitudeQuantumTeleportation_Positive() : Unit {
        use (msg1, msg2, target1, target2) = (Qubit(), Qubit(), Qubit(), Qubit());
        DualAmplitudeQuantumTeleportation(msg1, msg2, target1, target2);
        AssertEqual(Zero, M(target1), "Dual Amplitude Quantum Teleportation Positive Test Failed for Target 1");
        AssertEqual(Zero, M(target2), "Dual Amplitude Quantum Teleportation Positive Test Failed for Target 2");
    }

    @Test("QuantumSimulator")
    operation TestDualAmplitudeQuantumTeleportation_Negative() : Unit {
        use (msg1, msg2, target1, target2) = (Qubit(), Qubit(), Qubit(), Qubit());
        H(msg1);
        DualAmplitudeQuantumTeleportation(msg1, msg2, target1, target2);
        AssertEqual(One, M(target1), "Dual Amplitude Quantum Teleportation Negative Test Failed for Target 1");
    }

    @Test("QuantumSimulator")
    operation TestHighComplexityQuantumTeleportation_Positive() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        HighComplexityQuantumTeleportation(msg, target);
        AssertEqual(Zero, M(target), "High Complexity Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestHighComplexityQuantumTeleportation_Negative() : Unit {
        use (msg, target) = (Qubit(), Qubit());
        H(msg);
        HighComplexityQuantumTeleportation(msg, target);
        AssertEqual(One, M(target), "High Complexity Quantum Teleportation Negative Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdvancedControlledQuantumTeleportation_Positive() : Unit {
        use (ctrl, msg, target) = (Qubit(), Qubit(), Qubit());
        AdvancedControlledQuantumTeleportation(ctrl, msg, target);
        AssertEqual(Zero, M(target), "Advanced Controlled Quantum Teleportation Positive Test Failed");
    }

    @Test("QuantumSimulator")
    operation TestAdvancedControlledQuantumTeleportation_Negative() : Unit {
        use (ctrl, msg, target) = (Qubit(), Qubit(), Qubit());
        X(ctrl);
        AdvancedControlledQuantumTeleportation(ctrl, msg, target);
        AssertEqual(One, M(target), "Advanced Controlled Quantum Teleportation Negative Test Failed");
    }
}