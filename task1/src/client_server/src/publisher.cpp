#include "ros/ros.h"
#include "my_service/QuadraticSolution.h"
#include <vector>
#include <iostream>


int main(int arc, char **argv) {
    ros::init(arc, argv, "publisher");
    ros::NodeHandle n;

    ros::ServiceClient client = n.serviceClient<my_service::QuadraticSolution>("find_solution");
    my_service::QuadraticSolution srv;


    while (ros::ok()) {
        float a,b,c;
        std::cout << "a: ";
        std::cin >> a;

        std::cout << "b: ";
        std::cin >> b;

        std::cout << "c: ";
        std::cin >> c;

        srv.request.a = a;
        srv.request.b = b;
        srv.request.c = c;

        if (client.call(srv)) {

            for (float x : srv.response.result){
                ROS_INFO("x = %f", x);
            }

        }
        else {
            std::cout << "Failed" << std::endl;
            return 1;
        }
    }

    return 0;
}