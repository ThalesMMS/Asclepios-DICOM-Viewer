#include "windowlevelfilter.h"

#include <vtkImageMapToWindowLevelColors.h>
#include <vtkWindowLevelLookupTable.h>

#include <QLoggingCategory>

Q_LOGGING_CATEGORY(lcWindowLevelFilter, "asclepios.gui.windowlevelfilter")

asclepios::gui::WindowLevelFilter::WindowLevelFilter()
{
	m_lookupTable = vtkSmartPointer<vtkWindowLevelLookupTable>::New();
	if (m_lookupTable)
	{
		m_lookupTable->SetWindow(1.0);
		m_lookupTable->SetLevel(0.0);
		m_lookupTable->SetInverseVideo(false);
		m_lookupTable->Build();
		m_lookupTable->BuildSpecialColors();
	}
}

asclepios::gui::WindowLevelFilter::~WindowLevelFilter() = default;

void asclepios::gui::WindowLevelFilter::setWindowLevelColors(vtkImageMapToWindowLevelColors* t_filter)
{
	m_windowLevelColors = t_filter;
	if (m_windowLevelColors && m_lookupTable)
	{
		m_windowLevelColors->SetLookupTable(m_lookupTable);
	}
}

void asclepios::gui::WindowLevelFilter::setAreColorsInverted(const bool t_flag)
{
	m_invert = t_flag;
	if (m_lookupTable)
	{
		m_lookupTable->SetInverseVideo(m_invert);
		m_lookupTable->Build();
	}
	if (m_windowLevelColors)
	{
		m_windowLevelColors->Modified();
	}
}

void asclepios::gui::WindowLevelFilter::setWindowWidthCenter(int t_width, int t_center)
{
	if (!m_windowLevelColors)
	{
		qWarning()
			<< "[WindowLevelFilter] Missing window-level filter while setting WL."
			<< "Requested width:" << t_width
			<< "center:" << t_center;
		return;
	}

	const int safeWidth = (t_width == 0) ? 1 : t_width;

	if (!m_lookupTable)
	{
		m_lookupTable = vtkSmartPointer<vtkWindowLevelLookupTable>::New();
	}
	if (!m_lookupTable)
	{
		qWarning()
			<< "[WindowLevelFilter] Failed to allocate lookup table."
			<< "Requested width:" << safeWidth
			<< "center:" << t_center;
		return;
	}

	m_lookupTable->SetInverseVideo(m_invert);
	m_lookupTable->SetWindow(static_cast<double>(safeWidth));
	m_lookupTable->SetLevel(static_cast<double>(t_center));
	m_lookupTable->Build();
	m_lookupTable->BuildSpecialColors();

	m_windowLevelColors->SetWindow(static_cast<double>(safeWidth));
	m_windowLevelColors->SetLevel(static_cast<double>(t_center));
	m_windowLevelColors->SetLookupTable(m_lookupTable);
	m_windowLevelColors->Update();

	qInfo()
		<< "[WindowLevelFilter] Applied window/level."
		<< "Width:" << safeWidth
		<< "Center:" << t_center
		<< "Invert:" << m_invert;
}
