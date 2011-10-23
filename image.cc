#include "trax.hpp"
#include "image.h"

// #include "color.cc"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

void Image::set(int i, int j, Color result) {
	float r, g, b;
	if (result.red() < 0.f)
		r = 0.f;
	else if (result.red() > 1.f )
		r = 1.f;
	else
		r = result.red();
	if (result.blue() < 0.f)
		b = 0.f;
	else if (result.blue() > 1.f )
		b = 1.f;
	else
		b = result.blue();
	if (result.green() < 0.f)
		g = 0.f;
	else if (result.green() > 1.f )
		g = 1.f;
	else
		g = result.green();
  storef(r , start_fb + (( i * xres) + j) * 3, 0);
  storef(g, start_fb + (( i * xres) + j) * 3, 1);
  storef(b, start_fb + (( i * xres) + j) * 3, 2);
}
