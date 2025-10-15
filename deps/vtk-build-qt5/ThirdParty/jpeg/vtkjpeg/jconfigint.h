#define VERSION "1.5.3"
#define BUILD "20251015"
#define PACKAGE_NAME "VTK"

#ifndef INLINE
#if defined(__GNUC__)
#define INLINE inline __attribute__((always_inline))
#elif defined(_MSC_VER)
#define INLINE __forceinline
#else
#define INLINE
#endif
#endif
