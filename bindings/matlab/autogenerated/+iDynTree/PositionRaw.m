classdef PositionRaw < iDynTree.Vector3
  methods
    function self = PositionRaw(varargin)
      self@iDynTree.Vector3(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(351, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = changePoint(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(352, self, varargin{:});
    end
    function varargout = changeRefPoint(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(353, self, varargin{:});
    end
    function varargout = changePointOf(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(356, self, varargin{:});
    end
    function varargout = toString(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(357, self, varargin{:});
    end
    function varargout = display(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(358, self, varargin{:});
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(359, self);
        self.SwigClear();
      end
    end
  end
  methods(Static)
    function varargout = compose(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(354, varargin{:});
    end
    function varargout = inverse(varargin)
     [varargout{1:nargout}] = iDynTreeMEX(355, varargin{:});
    end
  end
end
