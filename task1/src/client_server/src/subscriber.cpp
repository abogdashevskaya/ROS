#include "ros/ros.h"
#include "my_service/QuadraticSolution.h"
#include "math.h"
#include <vector>
#include "std_msgs/Float32MultiArray.h"

ros::Publisher chatter_pub;

bool solution(my_service::QuadraticSolution::Request &req, 
my_service::QuadraticSolution::Response &res) {
    float discriminant = req.b * req.b - 4 * req.a * req.c;
    

    if (discriminant < 0 || (req.a == 0 && req.b == 0)) {
        std::vector<float> result{};
        res.result = result;
    }
    else if (req.a == 0) {
        float x = - req.c / req.b;
        std::vector<float> result{x};
        res.result = result;
    }
    else if (discriminant == 0) {
        float x = - req.b / (float)(2 *req.a);
        std::vector<float> result{x};
        res.result = result;
    }
    else {
        float x1 = (- req.b - sqrt(discriminant)) / (float)(2 *req.a);
        float x2 = (- req.b + sqrt(discriminant)) / (float)(2 *req.a);
        std::vector<float> result{x1, x2};
        res.result = result;
    }

    // ROS_INFO("request: a=%f, b=%f, c=%f", req.a, req.b, req.c);
    
    // ROS_INFO("result: ");
    // for (float x : res.result){
    //     ROS_INFO("x = %f", x);
    // }

    std_msgs::Float32MultiArray msg;
    msg.data = res.result;
    chatter_pub.publish(msg);

    return true;
}

void chatterCallback(const std_msgs::Float32MultiArray::ConstPtr& msg) {
    std::vector<float> result{msg->data};

    if (result.size() == 0) {
        ROS_INFO("No roots");
    }
    else {
        int count = 1;
        for (float x : result){
            ROS_INFO("x%d = %f", count, x);
            count++;
    }
    }
}

int main(int arc, char **argv) {
    ros::init(arc, argv, "server");
    ros::NodeHandle n;

    chatter_pub = n.advertise<std_msgs::Float32MultiArray>("chatter", 1000);
    ros::Rate loop_rate(10);

    ros::ServiceServer service = n.advertiseService("find_solution", solution);
    ROS_INFO("Ready");
    
    ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

    ros::spin();

    return 0;
}