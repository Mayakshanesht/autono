# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from obstacle_detection/BoundingBoxes.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import obstacle_detection.msg

class BoundingBoxes(genpy.Message):
  _md5sum = "e26d6a045c5b1425842489e7885f84e0"
  _type = "obstacle_detection/BoundingBoxes"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """BoundingBox[] BoundingBoxes

================================================================================
MSG: obstacle_detection/BoundingBox
float32 center_x
float32 center_y
float32 w
float32 h
float32 confidence
float32 class_id
"""
  __slots__ = ['BoundingBoxes']
  _slot_types = ['obstacle_detection/BoundingBox[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       BoundingBoxes

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BoundingBoxes, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.BoundingBoxes is None:
        self.BoundingBoxes = []
    else:
      self.BoundingBoxes = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.BoundingBoxes)
      buff.write(_struct_I.pack(length))
      for val1 in self.BoundingBoxes:
        _x = val1
        buff.write(_get_struct_6f().pack(_x.center_x, _x.center_y, _x.w, _x.h, _x.confidence, _x.class_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.BoundingBoxes is None:
        self.BoundingBoxes = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.BoundingBoxes = []
      for i in range(0, length):
        val1 = obstacle_detection.msg.BoundingBox()
        _x = val1
        start = end
        end += 24
        (_x.center_x, _x.center_y, _x.w, _x.h, _x.confidence, _x.class_id,) = _get_struct_6f().unpack(str[start:end])
        self.BoundingBoxes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.BoundingBoxes)
      buff.write(_struct_I.pack(length))
      for val1 in self.BoundingBoxes:
        _x = val1
        buff.write(_get_struct_6f().pack(_x.center_x, _x.center_y, _x.w, _x.h, _x.confidence, _x.class_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.BoundingBoxes is None:
        self.BoundingBoxes = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.BoundingBoxes = []
      for i in range(0, length):
        val1 = obstacle_detection.msg.BoundingBox()
        _x = val1
        start = end
        end += 24
        (_x.center_x, _x.center_y, _x.w, _x.h, _x.confidence, _x.class_id,) = _get_struct_6f().unpack(str[start:end])
        self.BoundingBoxes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f