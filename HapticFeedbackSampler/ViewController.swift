//
//  ViewController.swift
//  HapticFeedbackSampler
//
//  Created by David Wright on 1/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UIImpactFeedbackGenerators
    
    @IBAction func impactFeedbackLight() { UIImpactFeedbackGenerator(style: .light).impactOccurred() }
    @IBAction func impactFeedbackMedium() { UIImpactFeedbackGenerator(style: .medium).impactOccurred() }
    @IBAction func impactFeedbackHeavy() { UIImpactFeedbackGenerator(style: .heavy).impactOccurred() }
    @IBAction func impactFeedbackSoft() { UIImpactFeedbackGenerator(style: .soft).impactOccurred() }
    @IBAction func impactFeedbackRigid() { UIImpactFeedbackGenerator(style: .rigid).impactOccurred() }
    
    // MARK: - UINotificationFeedbackGenerators
    
    @IBAction func notificationFeedbackError() { UINotificationFeedbackGenerator().notificationOccurred(.error) }
    @IBAction func notificationFeedbackSuccess() { UINotificationFeedbackGenerator().notificationOccurred(.success) }
    @IBAction func notificationFeedbackWarning() { UINotificationFeedbackGenerator().notificationOccurred(.warning) }
    
    // MARK: - UISelectionFeedbackGenerator
    
    let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
    
    @IBAction func selectionFeedback() {
        selectionFeedbackGenerator.selectionChanged()
        selectionFeedbackGenerator.prepare()
    }
}
