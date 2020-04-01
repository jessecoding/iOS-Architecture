//
//  UICommonDefines.swift
//  iOS-Architecture
//
//  Created by jesse.xu on 2020/3/30.
//  Copyright © 2020 fleetlabs.com. All rights reserved.
//

import UIKit
import QMUIKit


// MARK: - 变量-编译相关

/// 判断当前是否debug编译模式
var IS_DEBUG: Bool {
    #if DEBUG
    return true
    #else
    return false
    #endif
}


///// 当前编译使用的 Base SDK 版本为 iOS 9.0 及以上
//let IOS9_SDK_ALLOWED = ProcessInfo().isOperatingSystemAtLeast(OperatingSystemVersion(majorVersion: 9, minorVersion: 0, patchVersion: 0)) //(__IPHONE_OS_VERSION_MAX_ALLOWED >= 90000)
//
///// 当前编译使用的 Base SDK 版本为 iOS 10.0 及以上
//let IOS10_SDK_ALLOWED = ProcessInfo().isOperatingSystemAtLeast(OperatingSystemVersion(majorVersion: 9, minorVersion: 0, patchVersion: 0))
//
///// 当前编译使用的 Base SDK 版本为 iOS 11.0 及以上
//let IOS11_SDK_ALLOWED = ProcessInfo().isOperatingSystemAtLeast(OperatingSystemVersion(majorVersion: 11, minorVersion: 0, patchVersion: 0))
//
///// 当前编译使用的 Base SDK 版本为 iOS 12.0 及以上
//var IOS12_SDK_ALLOWED = ProcessInfo().isOperatingSystemAtLeast(OperatingSystemVersion(majorVersion: 12, minorVersion: 0, patchVersion: 0))
//
///// 当前编译使用的 Base SDK 版本为 iOS 13.0 及以上
//let IOS13_SDK_ALLOWED = (__IPHONE_OS_VERSION_MAX_ALLOWED >= 130000)

// MARK: - 变量-设备相关
let IS_IPAD = QMUIHelper.isIPad()
let IS_IPOD = QMUIHelper.isIPod()
let IS_IPHONE = QMUIHelper.isIPhone()
let IS_SIMULATOR = QMUIHelper.isSimulator()

/// 操作系统版本号，只获取第二级的版本号，例如 10.3.1 只会得到 10.3
let IOS_VERSION = Double(UIDevice.current.systemVersion)!

/// 数字形式的操作系统版本号，可直接用于大小比较；如 110205 代表 11.2.5 版本；根据 iOS 规范，版本号最多可能有3位
let IOS_VERSION_NUMBER = QMUIHelper.numbericOSVersion()

/// 是否横竖屏
/// 用户界面横屏了才会返回 true
var IS_LANDSCAPE: Bool { return UIInterfaceOrientation(rawValue: UIApplication.shared.statusBarOrientation.rawValue)?.isLandscape ?? false }

/// 无论支不支持横屏，只要设备横屏了，就会返回 true
var IS_DEVICE_LANDSCAPE: Bool { return UIInterfaceOrientation(rawValue: UIDevice.current.orientation.rawValue)?.isLandscape ?? false }

/// 是否全面屏设备
let IS_NOTCHED_SCREEN = QMUIHelper.isNotchedScreen()
/// iPhone XS Max
let IS_65INCH_SCREEN = QMUIHelper.is65InchScreen()
/// iPhone XR
let IS_61INCH_SCREEN = QMUIHelper.is61InchScreen()
/// iPhone X/XS
let IS_58INCH_SCREEN = QMUIHelper.is58InchScreen()
/// iPhone 6/7/8 Plus
let IS_55INCH_SCREEN = QMUIHelper.is55InchScreen()
/// iPhone 6/7/8
let IS_47INCH_SCREEN = QMUIHelper.is47InchScreen()
/// iPhone 5/5S/SE
let IS_40INCH_SCREEN = QMUIHelper.is40InchScreen()
/// iPhone 4/4S
let IS_35INCH_SCREEN = QMUIHelper.is35InchScreen()
/// iPhone 4/4S/5/5S/SE
let IS_320WIDTH_SCREEN = (IS_35INCH_SCREEN || IS_40INCH_SCREEN)
/// 是否Retina
let IS_RETINASCREEN = UIScreen.main.scale >= 2.0
/// 是否放大模式（iPhone 6及以上的设备支持放大模式，iPhone X 除外）
let IS_ZOOMEDMODE = QMUIHelper.isZoomedMode()

// MARK: - 变量-布局相关
/// 获取一个像素
let PixelOne = QMUIHelper.pixelOne()

/// bounds && nativeBounds / scale && nativeScale
let ScreenBoundsSize = UIScreen.main.bounds.size
let ScreenNativeBoundsSize = UIScreen.main.nativeBounds.size
let ScreenScale = UIScreen.main.scale
let ScreenNativeScale = UIScreen.main.nativeScale

/// toolBar相关frame
var ToolBarHeight: CGFloat { return (IS_IPAD ? (IS_NOTCHED_SCREEN ? 70 : (IOS_VERSION >= 12.0 ? 50 : 44)) : (IS_LANDSCAPE ? PreferredValueForVisualDevice(44, 32) : 44) + SafeAreaInsetsConstantForDeviceWithNotch.bottom) }

/// tabBar相关frame
var TabBarHeight: CGFloat { return (IS_IPAD ? (IS_NOTCHED_SCREEN ? 65 : (IOS_VERSION >= 12.0 ? 50 : 49)) : (IS_LANDSCAPE ? PreferredValueForVisualDevice(49, 32) : 49) + SafeAreaInsetsConstantForDeviceWithNotch.bottom) }

/// 状态栏高度(来电等情况下，状态栏高度会发生变化，所以应该实时计算，iOS 13 起，来电等情况下状态栏高度不会改变)
var StatusBarHeight: CGFloat { return (UIApplication.shared.isStatusBarHidden ? 0 : UIApplication.shared.statusBarFrame.size.height) }

/// 状态栏高度(如果状态栏不可见，也会返回一个普通状态下可见的高度)
var StatusBarHeightConstant: CGFloat { return (UIApplication.shared.isStatusBarHidden ? (IS_IPAD ? (IS_NOTCHED_SCREEN ? 24 : 20) : PreferredValueForNotchedDevice(IS_LANDSCAPE ? 0 : 44, 20)) : UIApplication.shared.statusBarFrame.size.height) }

/// navigationBar 的静态高度
var NavigationBarHeight: CGFloat { return (IS_IPAD ? (IOS_VERSION >= 12.0 ? 50 : 44) : (IS_LANDSCAPE ? PreferredValueForVisualDevice(44, 32) : 44)) }

/// 代表(导航栏+状态栏)，这里用于获取其高度
/// @warn 如果是用于 viewController，请使用 UIViewController(QMUI) qmui_navigationBarMaxYInViewCoordinator 代替
var NavigationContentTop: CGFloat { return (StatusBarHeight + NavigationBarHeight) }

/// 同上，这里用于获取它的静态常量值
var NavigationContentTopConstant: CGFloat { return (StatusBarHeightConstant + NavigationBarHeight) }

/// iPhoneX 系列全面屏手机的安全区域的静态值
let SafeAreaInsetsConstantForDeviceWithNotch = QMUIHelper.safeAreaInsetsForDeviceWithNotch()

/// 区分全面屏（iPhone X 系列）和非全面屏
func PreferredValueForNotchedDevice(_ notchedDevice: CGFloat, _ otherDevice: CGFloat) -> CGFloat { return (QMUIHelper.isNotchedScreen() ? notchedDevice : otherDevice) }

/// 将所有屏幕按照宽松/紧凑分类，其中 iPad、iPhone XS Max/XR/Plus 均为宽松屏幕，但开启了放大模式的设备均会视为紧凑屏幕
func PreferredValueForVisualDevice(_ regular: CGFloat, _ compact: CGFloat) -> CGFloat { return QMUIHelper.isRegularScreen() ? regular : compact }


// MARK: - 方法-创建器
public func UIImageMake(_ img: String) -> UIImage {
    guard let image = UIImage(named: img) else {
        fatalError("Cannot instantiate initial UIImage with name \(img)")
    }
    return image
}

/// 字体相关的宏，用于快速创建一个字体对象，更多创建宏可查看 UIFont+QMUI.h
public func UIFontMake(_ size: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: size)
}
public func UIFontBoldMake(_ size: CGFloat) -> UIFont {
    return UIFont.boldSystemFont(ofSize: size)
}
public func UIFontBoldWithFont(_ font: UIFont)  -> UIFont {
    return UIFont.boldSystemFont(ofSize: font.pointSize)
}
public func CodeFontMake(_ pointSize: CGFloat) -> UIFont {
    guard let font = UIFont(name: "Menlo", size: pointSize) else {
        fatalError("Cannot instantiate initial UIFont")
    }
    return font
}
/// 斜体只对数字和字母有效，中文无效
public func UIFontItalicMake(_ size: CGFloat) -> UIFont {
    return UIFont.italicSystemFont(ofSize: size)
}

/// UIColor 相关的宏，用于快速创建一个 UIColor 对象，更多创建的宏可查看 UIColor+QMUI.h
public func UIColorMake(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}

public func UIColorMakeWithRGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a/1.0)
}

// MARK: - 数学计算

func AngleWithDegrees(_ deg: CGFloat) -> CGFloat { return (CGFloat(Double.pi) * (deg) / 180.0) }


// MARK: - 动画

let QMUIViewAnimationOptionsCurveOut = (7<<16)
let QMUIViewAnimationOptionsCurveIn = (8<<16)


// MARK: - 其他

// 固定黑色的 StatusBarStyle，用于亮色背景，作为 -preferredStatusBarStyle 方法的 return 值使用。
var QMUIStatusBarStyleDarkContent: UIStatusBarStyle  {
   return QMUIHelper.statusBarStyleDarkContent()
}

//#define StringFromBOOL(_flag) (_flag ? @"YES" : @"NO")

// MARK: - Selector

/**
 根据给定的 getter selector 获取对应的 setter selector
 @param getter 目标 getter selector
 @return 对应的 setter selector
 */
func setterWithGetter(getter: Selector) -> Selector {
    let getterString = NSStringFromSelector(getter)
    let setterString = NSMutableString(string: "set")
    setterString.append(NSString(string: getterString).qmui_capitalized!)
    setterString.append(":")
    return NSSelectorFromString(setterString as String)
}


// MARK: - CGFloat
/**
*  某些地方可能会将 CGFLOAT_MIN 作为一个数值参与计算（但其实 CGFLOAT_MIN 更应该被视为一个标志位而不是数值），可能导致一些精度问题，所以提供这个方法快速将 CGFLOAT_MIN 转换为 0
*  issue: https://github.com/Tencent/QMUI_iOS/issues/203
*/
func removeFloatMin(_ floatValue: CGFloat) -> CGFloat {
    return floatValue == CGFloat.leastNormalMagnitude ? 0 : floatValue
}

/**
 *  基于指定的倍数，对传进来的 floatValue 进行像素取整。若指定倍数为0，则表示以当前设备的屏幕倍数为准。
 *
 *  例如传进来 “2.1”，在 2x 倍数下会返回 2.5（0.5pt 对应 1px），在 3x 倍数下会返回 2.333（0.333pt 对应 1px）。
 */
func flatSpecificScale(_ floatValue: CGFloat, _ scale: CGFloat? = nil) -> CGFloat {
    let floatV = removeFloatMin(floatValue)
    let scale = scale ?? ScreenScale
    let flattedValue = ceil(floatV * scale) / scale
    return flattedValue
}

/**
 *  基于当前设备的屏幕倍数，对传进来的 floatValue 进行像素取整。
 *
 *  注意如果在 Core Graphic 绘图里使用时，要注意当前画布的倍数是否和设备屏幕倍数一致，若不一致，不可使用 flat() 函数，而应该用 flatSpecificScale
 */
func flat(_ floatValue: CGFloat) -> CGFloat {
    return flatSpecificScale(floatValue)
}

/**
 *  类似flat()，只不过 flat 是向上取整，而 floorInPixel 是向下取整
 */
func floorInPixel(_ floatValue: CGFloat) -> CGFloat {
    let floatV = removeFloatMin(floatValue)
    let resultValue = floor(floatV * ScreenScale) / ScreenScale
    return resultValue
}

func between(_ minimumValue: CGFloat, _ value: CGFloat, _ maximumValue: CGFloat) -> Bool {
    return minimumValue < value && value < maximumValue
}

func betweenOrEqual(_ minimumValue: CGFloat, _ value: CGFloat, _ maximumValue: CGFloat) -> Bool {
    return minimumValue <= value && value <= maximumValue
}

/**
 *  调整给定的某个 CGFloat 值的小数点精度，超过精度的部分按四舍五入处理。
 *
 *  例如 CGFloatToFixed(0.3333, 2) 会返回 0.33，而 CGFloatToFixed(0.6666, 2) 会返回 0.67
 *
 *  @warning 参数类型为 CGFloat，也即意味着不管传进来的是 float 还是 double 最终都会被强制转换成 CGFloat 再做计算
 *  @warning 该方法无法解决浮点数精度运算的问题
 */


func CGFloatToFixed(_ value: CGFloat, _ precision: UInt) -> CGFloat {
    let formatString = String(format: "%%.%@f", precision)
    let toString = String(format: formatString, value)
    guard let result = Double(toString) else {
        fatalError("Cannot CGFloatToFixed")
    }
    return CGFloat(result)
}

/// 用于居中运算
func CGFloatGetCenter(_ parent: CGFloat, _ child: CGFloat) -> CGFloat {
    return flat((parent - child) / 2.0)
}

/// 检测某个数值如果为 NaN 则将其转换为 0，避免布局中出现 crash
func CGFloatSafeValue(_ value: CGFloat) -> CGFloat {
    return value.isNaN ? 0 : value
}

// MARK: - CGPoint
// 两个point相加
func CGPointUnion(_ point1: CGPoint, _ point2: CGPoint) -> CGPoint {
    return CGPoint(x: flat(point1.x + point2.x), y: flat(point1.y + point2.y))
}

/// 获取rect的center，包括rect本身的x/y偏移
func CGPointGetCenterWithRect(_ rect: CGRect) -> CGPoint {
    return CGPoint(x: flat(rect.midX), y: flat(rect.midY))
}
 
func CGPointGetCenterWithSize(_ size: CGSize) -> CGPoint {
    return CGPoint(x: flat(size.width / 2.0), y: flat(size.height / 2.0))
}

func CGPointToFixed(_ point: CGPoint, _ precision: UInt) -> CGPoint{
    let result = CGPoint(x: CGFloatToFixed(point.x, precision), y: CGFloatToFixed(point.y, precision))
    return result
}

func CGPointRemoveFloatMin(_ point: CGPoint) -> CGPoint {
    let result = CGPoint(x: removeFloatMin(point.x), y: removeFloatMin(point.y))
    return result
}

// MARK: - UIEdgeInsets

/// 获取UIEdgeInsets在水平方向上的值
func UIEdgeInsetsGetHorizontalValue(_ insets: UIEdgeInsets) -> CGFloat {
    return insets.left + insets.right
}

/// 获取UIEdgeInsets在垂直方向上的值
func UIEdgeInsetsGetVerticalValue(_ insets: UIEdgeInsets) -> CGFloat {
    return insets.top + insets.bottom
}

/// 将两个UIEdgeInsets合并为一个
 
func UIEdgeInsetsConcat(_ insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(top: insets1.top + insets2.top,
                        left: insets1.left + insets2.left,
                        bottom: insets1.bottom + insets2.bottom,
                        right: insets1.right + insets2.right)
}

func UIEdgeInsetsSetTop(_ insets: UIEdgeInsets, _ top: CGFloat) -> UIEdgeInsets {
    return UIEdgeInsets(top: flat(top),
                        left: insets.left,
                        bottom: insets.bottom,
                        right: insets.right)
}

func UIEdgeInsetsSetLeft(_ insets: UIEdgeInsets, _ left: CGFloat) -> UIEdgeInsets {
    return UIEdgeInsets(top: insets.top,
                        left: flat(left),
                        bottom: insets.bottom,
                        right: insets.right)
}

func UIEdgeInsetsSetBottom(_ insets: UIEdgeInsets, _ bottom: CGFloat) -> UIEdgeInsets {
    return UIEdgeInsets(top:insets.top,
                        left: insets.left,
                        bottom: flat(bottom),
                        right: insets.right)
}

func UIEdgeInsetsSetRight(_ insets: UIEdgeInsets, _ right: CGFloat) -> UIEdgeInsets {
    return UIEdgeInsets(top: insets.top,
                        left: insets.left,
                        bottom: insets.bottom,
                        right: flat(right))
}

func UIEdgeInsetsToFixed(_ insets: UIEdgeInsets,  precision: UInt) -> UIEdgeInsets {
    return UIEdgeInsets(top: CGFloatToFixed(insets.top, precision),
                        left: CGFloatToFixed(insets.left, precision),
                        bottom: CGFloatToFixed(insets.bottom, precision),
                        right: CGFloatToFixed(insets.right, precision))
}

func UIEdgeInsetsRemoveFloatMin(_ insets: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(top: removeFloatMin(insets.top),
                        left: removeFloatMin(insets.left),
                        bottom: removeFloatMin(insets.bottom),
                        right: removeFloatMin(insets.right))
}

// MARK: - CGSize

/// 判断一个 CGSize 是否存在 NaN
func CGSizeIsNaN(_ size: CGSize) -> Bool {
    return size.width.isNaN || size.height.isNaN
}

/// 判断一个 CGSize 是否存在 infinite
func CGSizeIsInf(_ size: CGSize) -> Bool {
    return size.width.isInfinite || size.height.isInfinite
}

/// 判断一个 CGSize 是否为空（宽或高为0）
func CGSizeIsEmpty(_ size: CGSize) -> Bool {
    return size.width <= 0 || size.height <= 0
}

/// 判断一个 CGSize 是否合法（例如不带无穷大的值、不带非法数字）
func CGSizeIsValidated(_ size: CGSize) -> Bool {
    return !CGSizeIsEmpty(size) && !CGSizeIsInf(size) && !CGSizeIsNaN(size)
}

/// 将一个 CGSize 像素对齐
func CGSizeFlatted(_ size: CGSize) -> CGSize {
    return CGSize(width: flat(size.width), height: flat(size.height))
}

/// 将一个 CGSize 以 pt 为单位向上取整
func CGSizeCeil(_ size: CGSize) -> CGSize {
    return CGSize(width: ceil(size.width), height: ceil(size.height))
}

/// 将一个 CGSize 以 pt 为单位向下取整
func CGSizeFloor(_ size: CGSize) -> CGSize {
    return CGSize(width: floor(size.width), height: floor(size.height))
}

func CGSizeToFixed(_ size: CGSize, _ precision: UInt) -> CGSize {
    return CGSize(width: CGFloatToFixed(size.width, precision), height: CGFloatToFixed(size.height, precision))
}

func CGSizeRemoveFloatMin(_ size: CGSize) -> CGSize {
    return CGSize(width: removeFloatMin(size.width), height: removeFloatMin(size.height))
}

// MARK: - CGRect

/// 判断一个 CGRect 是否存在 NaN
func CGRectIsNaN(_ rect: CGRect) -> Bool {
    return rect.origin.x.isNaN || rect.origin.y.isNaN || rect.size.width.isNaN || rect.size.height.isNaN;
}

/// 系统提供的 CGRectIsInfinite 接口只能判断 CGRectInfinite 的情况，而该接口可以用于判断 INFINITY 的值
func CGRectIsInf(_ rect: CGRect) -> Bool {
    return rect.origin.x.isInfinite || rect.origin.y.isInfinite || rect.size.width.isInfinite || rect.size.height.isInfinite;
}

/// 判断一个 CGRect 是否合法（例如不带无穷大的值、不带非法数字）
func CGRectIsValidated(_ rect: CGRect) -> Bool {
    return !rect.isNull && !rect.isInfinite && !CGRectIsNaN(rect) && !CGRectIsInf(rect);
}

/// 检测某个 CGRect 如果存在数值为 NaN 的则将其转换为 0，避免布局中出现 crash
func CGRectSafeValue(_ rect: CGRect) -> CGRect {
    return CGRect(x: CGFloatSafeValue(rect.minX), y: CGFloatSafeValue(rect.minY), width: CGFloatSafeValue(rect.width), height: CGFloatSafeValue(rect.height));
}

/// 创建一个像素对齐的CGRect
func CGRectFlatMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
    return CGRect(x: flat(x), y: flat(y), width: flat(width), height: flat(height));
}

/// 对CGRect的x/y、width/height都调用一次flat，以保证像素对齐
func CGRectFlatted(_ rect: CGRect) -> CGRect{
    return CGRect(x: flat(rect.origin.x), y: flat(rect.origin.y), width: flat(rect.size.width), height: flat(rect.size.height));
}

/// 计算目标点 targetPoint 围绕坐标点 coordinatePoint 通过 transform 之后此点的坐标
func CGPointApplyAffineTransformWithCoordinatePoint(_ coordinatePoint: CGPoint, _ targetPoint: CGPoint, _ t: CGAffineTransform) -> CGPoint {
    var p = CGPoint.zero;
    p.x = (targetPoint.x - coordinatePoint.x) * t.a + (targetPoint.y - coordinatePoint.y) * t.c + coordinatePoint.x;
    p.y = (targetPoint.x - coordinatePoint.x) * t.b + (targetPoint.y - coordinatePoint.y) * t.d + coordinatePoint.y;
    p.x += t.tx;
    p.y += t.ty;
    return p;
}

/// 系统的 CGRectApplyAffineTransform 只会按照 anchorPoint 为 (0, 0) 的方式去计算，但通常情况下我们面对的是 UIView/CALayer，它们默认的 anchorPoint 为 (.5, .5)，所以增加这个函数，在计算 transform 时可以考虑上 anchorPoint 的影响
func CGRectApplyAffineTransformWithAnchorPoint(_ rect: CGRect, _ t: CGAffineTransform, _ anchorPoint: CGPoint) -> CGRect {
    let width = rect.width;
    let height = rect.height;
    let oPoint = CGPoint(x: rect.origin.x + width * anchorPoint.x, y: rect.origin.y + height * anchorPoint.y);
    let top_left = CGPointApplyAffineTransformWithCoordinatePoint(oPoint, CGPoint(x: rect.origin.x, y: rect.origin.y), t);
    let bottom_left = CGPointApplyAffineTransformWithCoordinatePoint(oPoint, CGPoint(x: rect.origin.x, y: rect.origin.y + height), t);
    let top_right = CGPointApplyAffineTransformWithCoordinatePoint(oPoint, CGPoint(x: rect.origin.x + width, y: rect.origin.y), t);
    let bottom_right = CGPointApplyAffineTransformWithCoordinatePoint(oPoint, CGPoint(x: rect.origin.x + width, y: rect.origin.y + height), t);
    let minX = min(min(min(top_left.x, bottom_left.x), top_right.x), bottom_right.x);
    let maxX = max(max(max(top_left.x, bottom_left.x), top_right.x), bottom_right.x);
    let minY = min(min(min(top_left.y, bottom_left.y), top_right.y), bottom_right.y);
    let maxY = max(max(max(top_left.y, bottom_left.y), top_right.y), bottom_right.y);
    let newWidth = maxX - minX;
    let newHeight = maxY - minY;
    return CGRect(x: minX, y: minY, width: newWidth, height: newHeight);
}

/// 为一个CGRect叠加scale计算
func CGRectApplyScale(_ rect: CGRect, _ scale: CGFloat) -> CGRect {
    return CGRectFlatted(CGRect(x: rect.minX * scale, y: rect.minY * scale, width: rect.width * scale, height: rect.height * scale));
}

/// 计算view的水平居中，传入父view和子view的frame，返回子view在水平居中时的x值
func CGRectGetMinXHorizontallyCenterInParentRect(_ parentRect: CGRect, _ childRect: CGRect) -> CGFloat {
    return flat((parentRect.width - childRect.width) / 2.0);
}

/// 计算view的垂直居中，传入父view和子view的frame，返回子view在垂直居中时的y值
func CGRectGetMinYVerticallyCenterInParentRect(_ parentRect: CGRect, _ childRect: CGRect) -> CGFloat{
    return flat((parentRect.height - childRect.height) / 2.0);
}

/// 返回值：同一个坐标系内，想要layoutingRect和已布局完成的referenceRect保持垂直居中时，layoutingRect的originY
func CGRectGetMinYVerticallyCenter(_ referenceRect: CGRect, _ layoutingRect: CGRect) -> CGFloat {
    return referenceRect.minY + CGRectGetMinYVerticallyCenterInParentRect(referenceRect, layoutingRect);
}

/// 返回值：同一个坐标系内，想要layoutingRect和已布局完成的referenceRect保持水平居中时，layoutingRect的originX
func CGRectGetMinXHorizontallyCenter(_ referenceRect: CGRect, _ layoutingRect: CGRect) -> CGFloat {
    return referenceRect.minX + CGRectGetMinXHorizontallyCenterInParentRect(referenceRect, layoutingRect);
}

/// 为给定的rect往内部缩小insets的大小
func CGRectInsetEdges(_ rect: CGRect, _ insets: UIEdgeInsets) -> CGRect {
    return CGRect(x: rect.origin.x + insets.left, y: rect.origin.y + insets.top, width: rect.size.width - UIEdgeInsetsGetHorizontalValue(insets), height: rect.size.height - UIEdgeInsetsGetVerticalValue(insets));
}

/// 传入size，返回一个x/y为0的CGRect
func CGRectMakeWithSize(_ size: CGSize) -> CGRect {
    return CGRect(x: 0, y: 0, width: size.width, height: size.height);
}

func CGRectFloatTop(_ rect: CGRect, _ top: CGFloat) -> CGRect {
    return CGRect(x: rect.minX, y: top, width: rect.width, height: rect.height);
}

func CGRectFloatBottom(_ rect: CGRect, _ bottom: CGFloat) -> CGRect {
    return CGRect(x: rect.minX, y: bottom - rect.height, width: rect.width, height: rect.height);
}


func CGRectFloatRight(_ rect: CGRect, _ right: CGFloat) -> CGRect {
    return CGRect(x: right - rect.width, y: rect.minY, width: rect.width, height: rect.height);
}

func CGRectFloatLeft(_ rect: CGRect, _ left: CGFloat) -> CGRect {
    return CGRect(x: left, y: rect.minY, width: rect.width, height: rect.height);
}

/// 保持rect的左边缘不变，改变其宽度，使右边缘靠在right上
func CGRectLimitRight(_ rect: CGRect, _ rightLimit: CGFloat) -> CGRect {
    return CGRect(x: rect.minX, y: rect.minY, width: rightLimit - rect.origin.x, height: rect.height);
}

/// 保持rect右边缘不变，改变其宽度和origin.x，使其左边缘靠在left上。只适合那种右边缘不动的view
/// 先改变origin.x，让其靠在offset上
/// 再改变size.width，减少同样的宽度，以抵消改变origin.x带来的view移动，从而保证view的右边缘是不动的
func CGRectLimitLeft(_ rect: CGRect, _ leftLimit: CGFloat) -> CGRect {
    let subOffset = leftLimit - rect.origin.x;
    var rectV = rect
    rectV.origin.x = leftLimit;
    rectV.size.width = rect.size.width - subOffset;
    return rectV;
}

/// 限制rect的宽度，超过最大宽度则截断，否则保持rect的宽度不变
func CGRectLimitMaxWidth(_ rect: CGRect, _ maxWidth: CGFloat) -> CGRect {
    let width = rect.width
    var rectV = rect
    rectV.size.width = width > maxWidth ? maxWidth : width;
    return rectV;
}

func CGRectSetX(_ rect: CGRect, _ x: CGFloat) -> CGRect {
    var rectV = rect
    rectV.origin.x = flat(x);
    return rectV;
}
 
func CGRectSetY(_ rect: CGRect, _ y: CGFloat) -> CGRect {
    var rectV = rect
    rectV.origin.y = flat(y);
    return rectV;
}

func CGRectSetXY(_ rect: CGRect, _ x: CGFloat, _ y: CGFloat) -> CGRect {
    var rectV = rect
    rectV.origin.x = flat(x);
    rectV.origin.y = flat(y);
    return rectV;
}

func CGRectSetWidth(_ rect: CGRect, _ width: CGFloat) -> CGRect {
    if (width < 0) {
        return rect;
    }
    var rectV = rect
    rectV.size.width = flat(width);
    return rectV;
}


func CGRectSetHeight(_ rect: CGRect, _ height: CGFloat) -> CGRect {
    if (height < 0) {
        return rect;
    }
    var rectV = rect
    rectV.size.height = flat(height);
    return rectV;
}


func CGRectSetSize(_ rect: CGRect, _ size: CGSize) -> CGRect {
    var rectV = rect
    rectV.size = CGSizeFlatted(size);
    return rectV;
}

func CGRectToFixed(_ rect: CGRect, _ precision: UInt) -> CGRect {
    return CGRect(x: CGFloatToFixed(rect.minX, precision),
                  y: CGFloatToFixed(rect.minY, precision),
                  width: CGFloatToFixed(rect.width, precision),
                  height: CGFloatToFixed(rect.height, precision));
}

func CGRectRemoveFloatMin(_ rect: CGRect) -> CGRect {
    let result = CGRect(x: rect.minX, y: removeFloatMin(rect.minY), width: removeFloatMin(rect.width), height: removeFloatMin(rect.height))
    return result
}

/// outerRange 是否包含了 innerRange
func NSContainingRanges(_ outerRange: NSRange, _ innerRange: NSRange) -> Bool {
    if (innerRange.location >= outerRange.location && outerRange.location + outerRange.length >= innerRange.location + innerRange.length) {
        return true
    }
    return false
}
