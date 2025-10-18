#pragma once

#include <mutex>
#include "utils.h"

namespace asclepios::core
{
	class export SmartDJDecoderRegistration
	{
	public:
		SmartDJDecoderRegistration() = default;
		~SmartDJDecoderRegistration() = default;

		static void registerCodecs();
		static void cleanup();

	private:
		inline static int m_referenceCount = 0;
		inline static std::mutex m_mutex = {};
	};
}
