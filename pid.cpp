#include "catch.hpp"
#include <Eigen/Dense>
#include <memory>
#include <opengnc/control/pid.hpp>
#include <iostream>

TEST_CASE("PID Controller")
{
	typedef double scalar;
	typedef Eigen::Matrix<scalar, 2, 1> Vector2s;
	typedef Eigen::Matrix<scalar, 3, 1> Vector3s;
	typedef Eigen::Matrix<scalar, 12, 1> Vector12s;

	Vector2s ref(0.8, 4);
	Vector2s u_init(-24.3452058397, 347.5763003054);
	Vector3s z_init(61.764398911, 105.4082830942, 617.8485291937);
	Vector12s x_init;
	x_init << 1.877391227,
			  0.5090099599,
			  0,
			  0,
			  0,
			  0.4108134131,
			  2.4116847411,
			  0,
			  0,
			  0,
			  0,
			  0.2404664621;

	Vector2s u_expected(-24.447795646, 344.8257565049);
	Vector3s z_expected(61.512655317, 106.0259270833, 621.2293729134);

	const Vector3s thetanb = x_init.segment<3>(3);
	const Vector3s vBNb = x_init.segment<3>(6);

	const scalar Pyaw		= 1.66855401;
	const scalar Iyaw		= 0.00496372;
	const scalar Dyaw		= 124.25146800;
	const scalar Nyaw		= 1.93373356;
	const scalar Pvel		= 211.12548425;
	const scalar Ivel		= 3.24349395;
	const scalar slewYawPos	= 500;
	const scalar slewYawNeg = -500;
	const scalar slewVelPos = 500;
	const scalar slewVelNeg = -500;
	const scalar satYawMax	= 100;
	const scalar satYawMin	= -100;
	const scalar satVelMax	= 400;
	const scalar satVelMin	= -400;
	const scalar timestep	= 0.01;

	Vector2s z_yaw_init = z_init.segment(0,2);
	Vector2s z_vel_init;
	z_vel_init << z_init[2],
				  0;


	opengnc::control::pid<scalar> controllerYaw(Pyaw,
												Iyaw,
												Dyaw,
												Nyaw,
												timestep,
												slewYawPos,
												slewYawNeg,
												satYawMax,
												satYawMin);
	controllerYaw.getState() = z_yaw_init;
	controllerYaw.getUPrev() = u_init(0);

	opengnc::control::pid<scalar> controllerVel(Pvel,
												Ivel,
												0,
												0,
												-1,
												slewVelPos,
												slewVelNeg,
												satVelMax,
												satVelMin);
	controllerVel.getState() = z_vel_init;
	controllerVel.getUPrev() = u_init(1);

	Vector2s u;
	u <<  controllerYaw(thetanb(2),ref(0)),
		  controllerVel(vBNb(0),ref(1), timestep);

	Vector3s z;
	z << controllerYaw.getState(),
		 controllerVel.getState()(0);

	REQUIRE(u.isApprox(u_expected, 0.01));
	REQUIRE(z.isApprox(z_expected, 0.01));
}
