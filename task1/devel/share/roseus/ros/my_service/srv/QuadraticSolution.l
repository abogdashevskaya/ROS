;; Auto-generated. Do not edit!


(when (boundp 'my_service::QuadraticSolution)
  (if (not (find-package "MY_SERVICE"))
    (make-package "MY_SERVICE"))
  (shadow 'QuadraticSolution (find-package "MY_SERVICE")))
(unless (find-package "MY_SERVICE::QUADRATICSOLUTION")
  (make-package "MY_SERVICE::QUADRATICSOLUTION"))
(unless (find-package "MY_SERVICE::QUADRATICSOLUTIONREQUEST")
  (make-package "MY_SERVICE::QUADRATICSOLUTIONREQUEST"))
(unless (find-package "MY_SERVICE::QUADRATICSOLUTIONRESPONSE")
  (make-package "MY_SERVICE::QUADRATICSOLUTIONRESPONSE"))

(in-package "ROS")





(defclass my_service::QuadraticSolutionRequest
  :super ros::object
  :slots (_a _b _c ))

(defmethod my_service::QuadraticSolutionRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _b
    4
    ;; float32 _c
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c
       (sys::poke _c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c
     (setq _c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_service::QuadraticSolutionResponse
  :super ros::object
  :slots (_result ))

(defmethod my_service::QuadraticSolutionResponse
  (:init
   (&key
    ((:result __result) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float32[] _result
    (* 4    (length _result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _result
     (write-long (length _result) s)
     (dotimes (i (length _result))
       (sys::poke (elt _result i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _result i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass my_service::QuadraticSolution
  :super ros::object
  :slots ())

(setf (get my_service::QuadraticSolution :md5sum-) "58fcd0a6ce46cd18570e38efc5525a55")
(setf (get my_service::QuadraticSolution :datatype-) "my_service/QuadraticSolution")
(setf (get my_service::QuadraticSolution :request) my_service::QuadraticSolutionRequest)
(setf (get my_service::QuadraticSolution :response) my_service::QuadraticSolutionResponse)

(defmethod my_service::QuadraticSolutionRequest
  (:response () (instance my_service::QuadraticSolutionResponse :init)))

(setf (get my_service::QuadraticSolutionRequest :md5sum-) "58fcd0a6ce46cd18570e38efc5525a55")
(setf (get my_service::QuadraticSolutionRequest :datatype-) "my_service/QuadraticSolutionRequest")
(setf (get my_service::QuadraticSolutionRequest :definition-)
      "float32 a
float32 b
float32 c
---
float32[] result
")

(setf (get my_service::QuadraticSolutionResponse :md5sum-) "58fcd0a6ce46cd18570e38efc5525a55")
(setf (get my_service::QuadraticSolutionResponse :datatype-) "my_service/QuadraticSolutionResponse")
(setf (get my_service::QuadraticSolutionResponse :definition-)
      "float32 a
float32 b
float32 c
---
float32[] result
")



(provide :my_service/QuadraticSolution "58fcd0a6ce46cd18570e38efc5525a55")


