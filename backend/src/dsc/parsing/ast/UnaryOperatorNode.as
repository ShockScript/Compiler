package dsc.parsing.ast {

    import dsc.semantics.*;

    /**
     * Unary operation.
     *
     * <p>Verification of <code>await</code> operation consists of a surrounding activation A. If A is attached a method, the <code>await</code> operand is limited to <code>A.methodSlot.arguments[0]</code>; otherwise the <code>await</code> operand is of the type &#x2a.</p>
     *
     * <p><i>Special semantics</i>: if the operator is + and <code>argument</code> is an Observable typed variable, the result is
     * the given single argument, not Observable.value.</p>
     */
    public final class UnaryOperatorNode extends ExpressionNode {

        public var type:Operator;

        public var argument:ExpressionNode;

        public function UnaryOperatorNode(type:Operator, argument:ExpressionNode) {
            super();
            this.type = type;
            this.argument = argument;
        }
    }
}