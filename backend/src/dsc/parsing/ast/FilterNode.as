package dsc.parsing.ast {

    import dsc.semantics.*;

    public final class FilterNode extends ExpressionNode {

        public var base:ExpressionNode;

        public var predicate:ExpressionNode;

        public function FilterNode(base:ExpressionNode, predicate:ExpressionNode) {
            super();
            this.base = base;
            this.predicate = predicate;
        }
    }
}