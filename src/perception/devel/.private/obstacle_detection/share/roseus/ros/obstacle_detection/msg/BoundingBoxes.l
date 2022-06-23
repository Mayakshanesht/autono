;; Auto-generated. Do not edit!


(when (boundp 'obstacle_detection::BoundingBoxes)
  (if (not (find-package "OBSTACLE_DETECTION"))
    (make-package "OBSTACLE_DETECTION"))
  (shadow 'BoundingBoxes (find-package "OBSTACLE_DETECTION")))
(unless (find-package "OBSTACLE_DETECTION::BOUNDINGBOXES")
  (make-package "OBSTACLE_DETECTION::BOUNDINGBOXES"))

(in-package "ROS")
;;//! \htmlinclude BoundingBoxes.msg.html


(defclass obstacle_detection::BoundingBoxes
  :super ros::object
  :slots (_BoundingBoxes ))

(defmethod obstacle_detection::BoundingBoxes
  (:init
   (&key
    ((:BoundingBoxes __BoundingBoxes) ())
    )
   (send-super :init)
   (setq _BoundingBoxes __BoundingBoxes)
   self)
  (:BoundingBoxes
   (&rest __BoundingBoxes)
   (if (keywordp (car __BoundingBoxes))
       (send* _BoundingBoxes __BoundingBoxes)
     (progn
       (if __BoundingBoxes (setq _BoundingBoxes (car __BoundingBoxes)))
       _BoundingBoxes)))
  (:serialization-length
   ()
   (+
    ;; obstacle_detection/BoundingBox[] _BoundingBoxes
    (apply #'+ (send-all _BoundingBoxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; obstacle_detection/BoundingBox[] _BoundingBoxes
     (write-long (length _BoundingBoxes) s)
     (dolist (elem _BoundingBoxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; obstacle_detection/BoundingBox[] _BoundingBoxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _BoundingBoxes (let (r) (dotimes (i n) (push (instance obstacle_detection::BoundingBox :init) r)) r))
     (dolist (elem- _BoundingBoxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get obstacle_detection::BoundingBoxes :md5sum-) "e26d6a045c5b1425842489e7885f84e0")
(setf (get obstacle_detection::BoundingBoxes :datatype-) "obstacle_detection/BoundingBoxes")
(setf (get obstacle_detection::BoundingBoxes :definition-)
      "BoundingBox[] BoundingBoxes

================================================================================
MSG: obstacle_detection/BoundingBox
float32 center_x
float32 center_y
float32 w
float32 h
float32 confidence
float32 class_id

")



(provide :obstacle_detection/BoundingBoxes "e26d6a045c5b1425842489e7885f84e0")


