#include "trax.hpp"
#include "pin_hole_camera.h"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#include <math.h>
#endif

inline float fabs(float value) {
	if(value < 0.f)
		value *=-1.f;
	return value;
}

inline Vector normal1(Trigonum triangle) {
	Vector edge1 = triangle.vertex1().sub(triangle.vertex2());
	Vector edge2 = triangle.vertex2().sub(triangle.vertex3());;

	Vector n = edge1.cross(edge2);
	return n.normalize();
}

void PinHoleCamera::make_ray(Ray& ray, float x, float y) {
	Vector V, ln;
	ln = look_at_point;
	V = ln.add((u.scmult(x)).add(v.scmult(y)));
	ray = Ray(position, V.normalize());
}

Ray PinHoleCamera::hemi_sphere(HitRecord hit_record, Ray ray){ // add the arguments
//	Trigonum triangle = hit_record.obj_id();
//	Vector edge1 = triangle.vertex1().sub(triangle.vertex3());
//	Vector edge2 = triangle.vertex2().sub(triangle.vertex3());
//	Vector normal = edge1.cross(edge2);
	Trigonum tri = hit_record.obj_id();
	Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(hit_record.min_t())));
	Vector normal = normal1(tri);
	float costheta = normal.dot(ray.get_direction().normalize());
	if (costheta > 0.f)
		normal = normal.scmult(-1.f);

	Vector Z = normal;
	Vector axis, X, Y;
	float u, v, u_2, v_2, w;
	if (fabs(normal.getx()) < fabs(normal.gety()) && fabs(normal.getx()) < fabs(normal.getz())) {
		axis = Vector(1.f, 0.f, 0.f);
	} else if (fabs(normal.gety()) < fabs(normal.getz())) {
		axis = Vector(0.f, 1.f, 0.f);
	} else {
		axis = Vector(0.f, 0.f, 1.f);
	}

	X = normal.cross(axis).normalize();
	Y = normal.cross(X);
	do {
	     u = trax_rand();
	     v = trax_rand();
	     u *= 2.0f;
	     u -= 1.0f;
	     v *= 2.0f;
	     v -= 1.0f;
	     u_2 = u * u;
	     v_2 = v * v;
	  }
	 while((u_2 + v_2) >= 1.0f);

	w = sqrt(1.f - u_2 - v_2);
	Ray random_ray(hit_position.add(normal.scmult(eps)), X.scmult(u).add(Y.scmult(v)).add(Z.scmult(w)));
	return random_ray;
}
