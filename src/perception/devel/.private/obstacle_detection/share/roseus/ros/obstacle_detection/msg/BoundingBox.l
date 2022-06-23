;; Auto-generated. Do not edit!


(when (boundp 'obstacle_detection::BoundingBox)
  (if (not (find-package "OBSTACLE_DETECTION"))
    (make-package "OBSTACLE_DETECTION"))
  (shadow 'BoundingBox (find-package "OBSTACLE_DETECTION")))
(unless (find-package "OBSTACLE_DETECTION::BOUNDINGBOX")
  (make-package "OBSTACLE_DETECTION::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html


(defclass obstacle_detection::BoundingBox
  :super ros::object
  :slots (_center_x _center_y _w _h _confidence _class_id ))

(defmethod obstacle_detection::BoundingBox
  (:init
   (&key
    ((:center_x __center_x) 0.0)
    ((:center_y __center_y) 0.0)
    ((:w __w) 0.0)
    ((:h __h) 0.0)
    ((:confidence __confidence) 0.0)
    ((:class_id __class_id) 0.0)
    )
   (send-super :init)
   (setq _center_x (float __center_x))
   (setq _center_y (float __center_y))
   (setq _w (float __w))
   (setq _h (float __h))
   (setq _confidence (float __confidence))
   (setq _class_id (float __class_id))
   self)
  (:center_x
   (&optional __center_x)
   (if __center_x (setq _center_x __center_x)) _center_x)
  (:center_y
   (&optional __center_y)
   (if __center_y (setq _center_y __center_y)) _center_y)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:class_id
   (&optional __class_id)
   (if __class_id (setq _class_id __class_id)) _class_id)
  (:serialization-length
   ()
   (+
    ;; float32 _center_x
    4
    ;; float32 _center_y
    4
    ;; float32 _w
    4
    ;; float32 _h
    4
    ;; float32 _confidence
    4
    ;; float32 _class_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _center_x
       (sys::poke _center_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _center_y
       (sys::poke _center_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _class_id
       (sys::poke _class_id (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _center_x
     (setq _center_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _center_y
     (setq _center_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _class_id
     (setq _class_id (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get obstacle_detection::BoundingBox :md5sum-) "585fb433a001f442e661e32eaeeb2b06")
(setf (get obstacle_detection::BoundingBox :datatype-) "obstacle_detection/BoundingBox")
(setf (get obstacle_detection::BoundingBox :definition-)
      "float32 center_x
float32 center_y
float32 w
float32 h
float32 confidence
float32 class_id

")



(provide :obstacle_detection/BoundingBox "585fb433a001f442e661e32eaeeb2b06")


