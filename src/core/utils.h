#pragma once
#include <vtkCommand.h>

#include "dicomvolume.h"

#define export __declspec(dllexport)
#define unused(x) (void)x;
constexpr auto iconTitleBar = ":/res/icon_small.png";
constexpr auto iconapp = ":/res/icon_big.png";
constexpr auto appBackground = ":/res/background.png";
constexpr auto buttonMaximizeOff = ":/res/maximize-button1.png";
constexpr auto buttonMaximizeOn = ":/res/maximize-button2.png";
constexpr auto overlaysInformation = "res/overlays.json";
constexpr auto scroll2DStyle = "res/scroll2d.css";
constexpr auto filters3dDir = "res/filters3d";
constexpr auto activeTabStyle =
	"QTabBar::tab{background-color:#bb86fc; border-top-left-radius: 4px; border-top-right-radius: 4px; min-height: 15px; min-width: 80px; color:white;} QTabWidget::pane[active=\"true\"] { background:black; border:2px solid #bb86fc;} QTabBar::close-button { border: none; background-color: transparent; image:url(:/closeTab); } QTabBar::close-button:hover { background-color:  rgba(128, 128, 128, 0.5); } QTabBar::close-button:pressed {background-color:  rgba(128, 128, 128, 0.6);}";
constexpr auto inActiveTabStyle =
	"QTabBar::tab {background-color:#423352; border-top-left-radius: 4px; border-top-right-radius: 4px; min-height: 15px; min-width: 80px;color:white;} QTabWidget::pane[active = \"false\"] { background:black; border: 2px solid #3a2f45;} QTabBar::close-button { border: none; background-color: transparent; image:url(:/closeTab); } QTabBar::close-button:hover { background-color:  rgba(128, 128, 128, 0.5); } QTabBar::close-button:pressed {background-color:  rgba(128, 128, 128, 0.6);}";
constexpr auto menuBarStyle =
	"QMenuBar::item:selected{border-style:none;background-color:rgba(128, 128, 128, 0.5);}QMenuBar::item:pressed{border-style: none;background-color:rgba(128, 128, 128, 0.6);}";

enum class transformationType
{
	none,
	flipHorizontal,
	flipVertical,
	rotateLeft,
	rotateRight,
	invert,
	scrollMouse,
	zoom,
	pan,
	windowLevel
};

enum class overlayKey
{
        zoom = 1001,
        series = 1003,
        tool = 1005,
        window = 2625616,
        level = 2625617
};

enum vtkCustomEvents : unsigned long
{
	changeScrollValue = vtkCommand::UserEvent + 1,
	defaultCursor = changeScrollValue + 1,
	cursorMove = defaultCursor + 1,
	cursorFinishMovement = cursorMove + 1,
	cursorRotate = cursorFinishMovement + 1,
	imageChanged = cursorRotate + 1,
	qualityLow = imageChanged + 1,
	qualityHigh = qualityLow + 1,
};

namespace asclepios::core
{
	class export Utils
	{
	public:
		Utils() = default;
		~Utils() = default;

		static void processTagFormat(const DicomTag& t_tag, std::string& t_value);

	private:
		[[nodiscard]] static std::string getDateFormat(const std::string& t_date);
		[[nodiscard]] static std::string getTimeFormat(const std::string& t_time);
	};
}

