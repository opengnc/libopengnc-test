#include "catch.hpp"
#include <opengnc/estimation/models/measurement/gps.hpp>
#include <Eigen/Core>

struct StatePolicy
{
	typedef double scalar_type;
	enum {state_vector_length = 3};
};

TEST_CASE("GPS Measurement Model")
{
	using namespace opengnc::common::transforms;
	opengnc::estimation::models::measurement::gps<StatePolicy> gps;

	Eigen::Vector3d llh;
	llh << -32.9167, 151.75, 0;

	Eigen::Vector3d ecef = wgs84::geodetic_to_rectangular(llh);
	Eigen::Vector3d geodetic = wgs84::rectangular_to_geodetic(ecef);

	REQUIRE(llh.isApprox(geodetic, 1e-6));
}
