//
//  ContactUsViewController.swift
//  Go Map!!
//
//  Created by Wolfgang Timme on 4/16/19.
//  Copyright © 2019 Bryce. All rights reserved.
//

import Foundation

extension ContactUsViewController {
    override open func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        let isLastSection = tableView.numberOfSections == section + 1
        if isLastSection {
            return createVersionDetailsString()
        }

        return nil
    }

    // MARK: Private methods

    private func createVersionDetailsString() -> String {
		let appDelegate = UIApplication.shared.delegate as! AppDelegate
		let appName = appDelegate.appName()
		let appVersion = appDelegate.appVersion()
		let appBuildNumber = appDelegate.appBuildNumber()
		return "\(appName) \(appVersion) (\(appBuildNumber))"
    }

    @objc func openTestFlightURL() {
        guard let url = URL(string: "https://testflight.apple.com/join/T96F9wYq") else { return }

		UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
