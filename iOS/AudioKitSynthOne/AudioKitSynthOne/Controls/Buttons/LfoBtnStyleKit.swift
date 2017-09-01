//
//  LfoBtnStyleKit.swift
//  AudioKitSynthOne
//
//  Created by Matthew Fecher on 8/31/17.
//  Copyright © 2017 AudioKit. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class LfoBtnStyleKit : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawLfoButton(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 106, height: 38), resizing: ResizingBehavior = .aspectFit, lfoSelected: CGFloat = 0, buttonText: String = "Hello") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 106, height: 38), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 106, y: resizedFrame.height / 38)
        let resizedShadowScale: CGFloat = min(resizedFrame.width / 106, resizedFrame.height / 38)


        //// Color Declarations
        let lfo1Color = UIColor(red: 0.902, green: 0.533, blue: 0.008, alpha: 1.000)
        let onColor = UIColor(red: 0.902, green: 0.533, blue: 0.008, alpha: 1.000)
        let btnBack = UIColor(red: 0.243, green: 0.243, blue: 0.263, alpha: 1.000)
        let offColor = UIColor(red: 0.180, green: 0.180, blue: 0.200, alpha: 1.000)
        let textColor = UIColor(red: 0.855, green: 0.855, blue: 0.855, alpha: 1.000)
        let downColor = UIColor(red: 0.294, green: 0.294, blue: 0.314, alpha: 1.000)
        let dividerColor = UIColor(red: 0.227, green: 0.227, blue: 0.247, alpha: 1.000)
        let color = UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1.000)

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = lfo1Color
        shadow.shadowOffset = CGSize(width: 0, height: 0)
        shadow.shadowBlurRadius = 5

        //// Variable Declarations
        let indicator1On = lfoSelected == 1
        let indicator2On = lfoSelected == 2
        let greaterThanOne = lfoSelected > 0

        //// Button
        //// btnBackground Drawing
        let btnBackgroundPath = UIBezierPath(roundedRect: CGRect(x: 2.5, y: 2.5, width: 100, height: 32), cornerRadius: 2)
        btnBack.setFill()
        btnBackgroundPath.fill()
        color.setStroke()
        btnBackgroundPath.lineWidth = 1
        btnBackgroundPath.stroke()


        if (indicator1On) {
            //// leftPress Drawing
            let leftPressPath = UIBezierPath(roundedRect: CGRect(x: 3, y: 3, width: 50, height: 31), byRoundingCorners: [.topLeft, .bottomLeft], cornerRadii: CGSize(width: 3, height: 3))
            leftPressPath.close()
            downColor.setFill()
            leftPressPath.fill()
        }


        if (indicator2On) {
            //// rightPress Drawing
            let rightPressPath = UIBezierPath(roundedRect: CGRect(x: 53, y: 3, width: 49, height: 31), byRoundingCorners: [.topRight, .bottomRight], cornerRadii: CGSize(width: 3, height: 3))
            rightPressPath.close()
            downColor.setFill()
            rightPressPath.fill()
        }


        //// Lfo1Indicator Drawing
        let lfo1IndicatorPath = UIBezierPath(rect: CGRect(x: 10, y: 9, width: 11, height: 18))
        offColor.setFill()
        lfo1IndicatorPath.fill()


        if (indicator1On) {
            //// Lfo1Selected Drawing
            let lfo1SelectedPath = UIBezierPath(rect: CGRect(x: 10, y: 9, width: 11, height: 18))
            context.saveGState()
            context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
            onColor.setFill()
            lfo1SelectedPath.fill()
            context.restoreGState()

        }


        //// Lfo2Indicator Drawing
        let lfo2IndicatorPath = UIBezierPath(rect: CGRect(x: 83, y: 9, width: 11, height: 18))
        offColor.setFill()
        lfo2IndicatorPath.fill()


        if (indicator2On) {
            //// Lfo2Selected Drawing
            let lfo2SelectedPath = UIBezierPath(rect: CGRect(x: 83, y: 9, width: 11, height: 18))
            context.saveGState()
            context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
            onColor.setFill()
            lfo2SelectedPath.fill()
            context.restoreGState()

        }


        if (greaterThanOne) {
            //// dividerTop 2 Drawing
            let dividerTop2Path = UIBezierPath(rect: CGRect(x: 53.5, y: 3.5, width: 1, height: 30))
            btnBack.setFill()
            dividerTop2Path.fill()
            dividerColor.setStroke()
            dividerTop2Path.lineWidth = 1
            dividerTop2Path.stroke()
        }


        //// Text Drawing
        let textRect = CGRect(x: 21, y: 8, width: 62, height: 21)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        let textFontAttributes = [
            NSFontAttributeName: UIFont(name: "AvenirNextCondensed-Regular", size: 16)!,
            NSForegroundColorAttributeName: textColor,
            NSParagraphStyleAttributeName: textStyle,
        ]

        let textTextHeight: CGFloat = buttonText.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        buttonText.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(LfoBtnStyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
