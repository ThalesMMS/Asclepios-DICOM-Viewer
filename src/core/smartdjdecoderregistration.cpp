#include "smartdjdecoderregistration.h"
#include <dcmtk/dcmjpeg/djdecode.h>

void asclepios::core::SmartDJDecoderRegistration::registerCodecs()
{
        std::lock_guard<std::mutex> lock(m_mutex);
        if (m_referenceCount == 0)
        {
                DJDecoderRegistration::registerCodecs();
        }
        ++m_referenceCount;
}

//-----------------------------------------------------------------------------
void asclepios::core::SmartDJDecoderRegistration::cleanup()
{
        std::lock_guard<std::mutex> lock(m_mutex);
        if (m_referenceCount > 0)
        {
                --m_referenceCount;
        }
        if (m_referenceCount == 0)
        {
                DJDecoderRegistration::cleanup();
        }
}
