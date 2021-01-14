package dsc.semantics.values {
	import dsc.semantics.*;

    /**
     * Filter operation.
     *
     * <p>The <code>filterProxy</code> property may be <code>null</code> if the Filter is untyped.</p>
     */
    public final class Filter extends Value {
        private var _object:Symbol;
        private var _filterProxy:Symbol;
        private var _activation:Symbol;
        private var _withFrame:Symbol;

		/**
		 * @private
		 */
		public function Filter(object:Symbol, filterProxy:Symbol, activation:Symbol) {
            _object = object;
            _filterProxy = filterProxy;
            _activation = activation;
            this.valueType = _filterProxy ? _filterProxy.methodSignature.result : undefined;
        }

        override public function get object():Symbol {
            return _object;
        }

        override public function get filterProxy():Symbol {
            return _filterProxy;
        }

        override public function get activation():Symbol {
            return _activation;
        }

        override public function set activation(activation:Symbol):void {
            _activation = activation;
        }

        override public function get withFrame():Symbol {
            return _withFrame;
        }

        override public function set withFrame(frame:Symbol):void {
            _withFrame = frame;
        }

        override public function toString():String {
            return '[object Filter]';
        }
    }
}