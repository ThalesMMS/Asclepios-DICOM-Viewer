#include "transferfunction.h"
#include <QFileDialog>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>

//-----------------------------------------------------------------------------
void asclepios::gui::TransferFunction::setMaximumIntensityProjectionFunction(const int& t_windowCenter,
                                                                             const int& t_windowWidth)
{
	m_ambient = 0.1;
	m_diffuse = 0.7;
	m_specular = 1;
	m_specularPower = 64;
	m_window = t_windowCenter;
	m_level = t_windowWidth;
	m_shade = true;
}

//-----------------------------------------------------------------------------
void asclepios::gui::TransferFunction::initializeDefaultCurve()
{
	m_colorFunction = vtkSmartPointer<vtkColorTransferFunction>::New();
	m_opacityFunction = vtkSmartPointer<vtkPiecewiseFunction>::New();
	m_colors.clear();
	m_opacities.clear();

	const auto addColorPoint = [this](const int value, const double red, const double green, const double blue)
	{
		auto colorPoint = std::make_unique<Color>();
		colorPoint->setValue(value);
		colorPoint->setRed(red);
		colorPoint->setGreen(green);
		colorPoint->setBlue(blue);
		m_colorFunction->AddRGBPoint(colorPoint->getValue(),
			colorPoint->getRed(),
			colorPoint->getGreen(),
			colorPoint->getBlue());
		m_colors.emplace_back(std::move(colorPoint));
	};

	const auto addOpacityPoint = [this](const int value, const double alpha)
	{
		auto opacityPoint = std::make_unique<Opacity>();
		opacityPoint->setValue(value);
		opacityPoint->setAlpha(alpha);
		m_opacityFunction->AddPoint(opacityPoint->getValue(), opacityPoint->getAlpha());
		m_opacities.emplace_back(std::move(opacityPoint));
	};

	addColorPoint(0, 0.0, 0.0, 0.0);
	addColorPoint(1000, 1.0, 1.0, 1.0);

	addOpacityPoint(0, 0.0);
	addOpacityPoint(1000, 1.0);

	m_window = 0;
	m_level = 0;
	m_ambient = 0.1;
	m_diffuse = 0.9;
	m_specular = 1.0;
	m_specularPower = 64;
	m_shade = true;
}

//-----------------------------------------------------------------------------
void asclepios::gui::TransferFunction::updateWindowLevel(const double& t_window, const double& t_level)
{
	m_window += t_window;
	m_level += t_level;
	if (m_colorFunction)
	{
		m_colorFunction->RemoveAllPoints();
		for (const auto& colorPoint : m_colors)
		{
			m_colorFunction->AddRGBPoint(
				m_level + m_window *
				colorPoint->getValue() / 1000,
				colorPoint->getRed(),
				colorPoint->getGreen(),
				colorPoint->getBlue());
		}
	}
	if (m_opacityFunction)
	{
		m_opacityFunction->RemoveAllPoints();
		for (const auto& opacityPoint : m_opacities)
		{
			m_opacityFunction->AddPoint(
				m_level + m_window *
				opacityPoint->getValue() / 1000,
				opacityPoint->getAlpha());
		}
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::TransferFunction::loadFilterFromFile(const QString& t_fileName)
{
	QFile filter(t_fileName);
	if (filter.open(QIODevice::ReadOnly | QIODevice::Text))
	{
		const QByteArray data = filter.readAll();
		filter.close();
		const auto doc = QJsonDocument::fromJson(data);
		const QJsonObject root = doc.object();
		extractColorFunctionInfo(root.value("color").toArray());
		extractOpacityFunctionInfo(root.value("opacity").toArray());
		m_ambient = root.value("ambient").toObject()["value"].toDouble();
		m_diffuse = root.value("diffuse").toObject()["value"].toDouble();
		m_specular = root.value("specular").toObject()["value"].toDouble();
		m_specularPower = root.value("specularpower").toObject()["value"].toDouble();
		m_shade = root.value("shade").toObject()["value"].toInt();
		m_window = 1000;
		m_level = 0;
	}
	else
	{
		throw std::runtime_error("Filter file not found!");
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::TransferFunction::extractColorFunctionInfo(const QJsonArray& t_array)
{
	m_colorFunction = vtkSmartPointer<vtkColorTransferFunction>::New();
	m_colors.clear();
	for (const auto& value : t_array)
	{
		m_colors.emplace_back(std::make_unique<Color>());
		m_colors.back()->setValue(value.toObject()["value"].toDouble());
		m_colors.back()->setRed(value.toObject()["red"].toDouble());
		m_colors.back()->setGreen(value.toObject()["green"].toDouble());
		m_colors.back()->setBlue(value.toObject()["blue"].toDouble());
		m_colorFunction->AddRGBPoint(m_colors.back()->getValue(),
		                             m_colors.back()->getRed(), m_colors.back()->getGreen(),
		                             m_colors.back()->getBlue());
	}
}

//-----------------------------------------------------------------------------
void asclepios::gui::TransferFunction::extractOpacityFunctionInfo(const QJsonArray& t_array)
{
	m_opacityFunction = vtkSmartPointer<vtkPiecewiseFunction>::New();
	m_opacities.clear();
	for (const auto& value : t_array)
	{
		m_opacities.emplace_back(std::make_unique<Opacity>());
		m_opacities.back()->setValue(value.toObject()["value"].toDouble());
		m_opacities.back()->setAlpha(value.toObject()["alpha"].toDouble());
		m_opacityFunction->AddPoint(m_opacities.back()->getValue(),
		                            m_opacities.back()->getAlpha());
	}
}
