; Auto-generated. Do not edit!


(cl:in-package my_service-srv)


;//! \htmlinclude QuadraticSolution-request.msg.html

(cl:defclass <QuadraticSolution-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (c
    :reader c
    :initarg :c
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadraticSolution-request (<QuadraticSolution-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadraticSolution-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadraticSolution-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<QuadraticSolution-request> is deprecated: use my_service-srv:QuadraticSolution-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <QuadraticSolution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:a-val is deprecated.  Use my_service-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <QuadraticSolution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:b-val is deprecated.  Use my_service-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <QuadraticSolution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:c-val is deprecated.  Use my_service-srv:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadraticSolution-request>) ostream)
  "Serializes a message object of type '<QuadraticSolution-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadraticSolution-request>) istream)
  "Deserializes a message object of type '<QuadraticSolution-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadraticSolution-request>)))
  "Returns string type for a service object of type '<QuadraticSolution-request>"
  "my_service/QuadraticSolutionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadraticSolution-request)))
  "Returns string type for a service object of type 'QuadraticSolution-request"
  "my_service/QuadraticSolutionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadraticSolution-request>)))
  "Returns md5sum for a message object of type '<QuadraticSolution-request>"
  "58fcd0a6ce46cd18570e38efc5525a55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadraticSolution-request)))
  "Returns md5sum for a message object of type 'QuadraticSolution-request"
  "58fcd0a6ce46cd18570e38efc5525a55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadraticSolution-request>)))
  "Returns full string definition for message of type '<QuadraticSolution-request>"
  (cl:format cl:nil "float32 a~%float32 b~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadraticSolution-request)))
  "Returns full string definition for message of type 'QuadraticSolution-request"
  (cl:format cl:nil "float32 a~%float32 b~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadraticSolution-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadraticSolution-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadraticSolution-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
))
;//! \htmlinclude QuadraticSolution-response.msg.html

(cl:defclass <QuadraticSolution-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass QuadraticSolution-response (<QuadraticSolution-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadraticSolution-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadraticSolution-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<QuadraticSolution-response> is deprecated: use my_service-srv:QuadraticSolution-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <QuadraticSolution-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:result-val is deprecated.  Use my_service-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadraticSolution-response>) ostream)
  "Serializes a message object of type '<QuadraticSolution-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadraticSolution-response>) istream)
  "Deserializes a message object of type '<QuadraticSolution-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadraticSolution-response>)))
  "Returns string type for a service object of type '<QuadraticSolution-response>"
  "my_service/QuadraticSolutionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadraticSolution-response)))
  "Returns string type for a service object of type 'QuadraticSolution-response"
  "my_service/QuadraticSolutionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadraticSolution-response>)))
  "Returns md5sum for a message object of type '<QuadraticSolution-response>"
  "58fcd0a6ce46cd18570e38efc5525a55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadraticSolution-response)))
  "Returns md5sum for a message object of type 'QuadraticSolution-response"
  "58fcd0a6ce46cd18570e38efc5525a55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadraticSolution-response>)))
  "Returns full string definition for message of type '<QuadraticSolution-response>"
  (cl:format cl:nil "float32[] result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadraticSolution-response)))
  "Returns full string definition for message of type 'QuadraticSolution-response"
  (cl:format cl:nil "float32[] result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadraticSolution-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadraticSolution-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadraticSolution-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QuadraticSolution)))
  'QuadraticSolution-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QuadraticSolution)))
  'QuadraticSolution-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadraticSolution)))
  "Returns string type for a service object of type '<QuadraticSolution>"
  "my_service/QuadraticSolution")