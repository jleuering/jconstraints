package structuralEquivalence.expressionVisitor;

import gov.nasa.jpf.constraints.api.Expression;
import gov.nasa.jpf.constraints.api.Variable;
import gov.nasa.jpf.constraints.expressions.AbstractExpressionVisitor;
import gov.nasa.jpf.constraints.expressions.BitvectorExpression;
import gov.nasa.jpf.constraints.expressions.BitvectorNegation;
import gov.nasa.jpf.constraints.expressions.BooleanExpression;
import gov.nasa.jpf.constraints.expressions.CastExpression;
import gov.nasa.jpf.constraints.expressions.Constant;
import gov.nasa.jpf.constraints.expressions.IfThenElse;
import gov.nasa.jpf.constraints.expressions.LetExpression;
import gov.nasa.jpf.constraints.expressions.Negation;
import gov.nasa.jpf.constraints.expressions.NumericBooleanExpression;
import gov.nasa.jpf.constraints.expressions.NumericCompound;
import gov.nasa.jpf.constraints.expressions.PropositionalCompound;
import gov.nasa.jpf.constraints.expressions.QuantifierExpression;
import gov.nasa.jpf.constraints.expressions.RegExBooleanExpression;
import gov.nasa.jpf.constraints.expressions.RegexCompoundExpression;
import gov.nasa.jpf.constraints.expressions.RegexOperatorExpression;
import gov.nasa.jpf.constraints.expressions.StringBooleanExpression;
import gov.nasa.jpf.constraints.expressions.StringCompoundExpression;
import gov.nasa.jpf.constraints.expressions.StringIntegerExpression;
import gov.nasa.jpf.constraints.expressions.UnaryMinus;
import gov.nasa.jpf.constraints.expressions.functions.FunctionExpression;

import java.util.HashMap;

public class OperatorStatistics extends AbstractExpressionVisitor<Void, HashMap<String, Integer>> {
	@Override
	public <E> Void visit(Variable<E> v, HashMap<String, Integer> data) {
		return null;
	}

	@Override
	public <E> Void visit(Constant<E> c, HashMap<String, Integer> data) {
		return null;
	}

	@Override
	public Void visit(Negation n, HashMap<String, Integer> data) {
		incrementOperator("not", data);
		visit(n.getNegated(), data);
		return null;
	}

	@Override
	public Void visit(NumericBooleanExpression n, HashMap<String, Integer> data) {
		incrementOperator(n.getComparator().toString(), data);
		visit(n.getLeft(), data);
		visit(n.getRight(), data);
		return null;
	}

	@Override
	public Void visit(RegExBooleanExpression n, HashMap<String, Integer> data) {
		incrementOperator("str.in.re", data);
		visit(n.getLeft(), data);
		visit(n.getRight(), data);
		return null;
	}

	@Override
	public Void visit(StringBooleanExpression n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		visit(n.getLeft(), data);
		visit(n.getRight(), data);
		return null;
	}

	@Override
	public Void visit(StringIntegerExpression n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		if (n.getLeft() != null) {
			visit(n.getLeft(), data);
		}
		if (n.getRight() != null) {
			visit(n.getRight(), data);
		}
		if (n.getOffset() != null) {
			visit(n.getOffset(), data);
		}
		return null;
	}

	@Override
	public Void visit(StringCompoundExpression n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		if (n.getMain() != null) {
			visit(n.getMain(), data);
		}
		if (n.getExpressions() != null) {
			for (Expression e : n.getExpressions()) {
				visit(e, data);
			}
		}
		if (n.getDst() != null) {
			visit(n.getDst(), data);
		}
		if (n.getSrc() != null) {
			visit(n.getSrc(), data);
		}
		if (n.getOffset() != null) {
			visit(n.getOffset(), data);
		}
		if (n.getLength() != null) {
			visit(n.getLength(), data);
		}
		if (n.getPosition() != null) {
			visit(n.getPosition(), data);
		}
		return null;
	}

	@Override
	public Void visit(RegexCompoundExpression n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		visit(n.getLeft(), data);
		visit(n.getRight(), data);
		return null;
	}

	@Override
	public Void visit(RegexOperatorExpression n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		if (n.getLeft() != null) {
			visit(n.getLeft(), data);
		}
		return null;
	}

	@Override
	public Void visit(BooleanExpression n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		visit(n.getLeft(), data);
		visit(n.getRight(), data);
		return null;
	}

	@Override
	public <F, E> Void visit(CastExpression<F, E> cast, HashMap<String, Integer> data) {
		incrementOperator("casting", data);
		visit(cast.getCasted(), data);
		return null;
	}

	@Override
	public <E> Void visit(NumericCompound<E> n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		visit(n.getLeft(), data);
		visit(n.getRight(), data);
		return null;
	}

	@Override
	public <E> Void visit(IfThenElse<E> n, HashMap<String, Integer> data) {
		incrementOperator("ite", data);
		visit(n.getIf(), data);
		visit(n.getThen(), data);
		visit(n.getElse(), data);
		return null;
	}

	@Override
	public Void visit(PropositionalCompound n, HashMap<String, Integer> data) {
		incrementOperator(n.getOperator().toString(), data);
		visit(n.getLeft(), data);
		visit(n.getRight(), data);
		return null;
	}

	@Override
	public <E> Void visit(UnaryMinus<E> n, HashMap<String, Integer> data) {
		incrementOperator("unaryMinus", data);
		visit(n.getNegated(), data);
		return null;
	}

	@Override
	public Void visit(QuantifierExpression q, HashMap<String, Integer> data) {
		incrementOperator(q.getQuantifier().toString(), data);
		visit(q.getBody(), data);
		return null;
	}

	@Override
	public <E> Void visit(FunctionExpression<E> f, HashMap<String, Integer> data) {
		incrementOperator(f.getFunction().toString(), data);
		for (Expression e : f.getArgs()) {
			visit(e, data);
		}
		return null;
	}

	@Override
	public <E> Void visit(BitvectorExpression<E> bv, HashMap<String, Integer> data) {
		incrementOperator(bv.getOperator().toString(), data);
		visit(bv.getLeft(), data);
		visit(bv.getRight(), data);
		return null;
	}

	@Override
	public <E> Void visit(BitvectorNegation<E> n, HashMap<String, Integer> data) {
		incrementOperator("bvnot", data);
		visit(n.getNegated(), data);
		return null;
	}

	@Override
	public Void visit(LetExpression let, HashMap<String, Integer> data) {
		incrementOperator("let", data);
		let.getParameterValues().values().forEach(e -> visit(e, data));
		visit(let.getMainValue(), data);
		return null;
	}

	private void incrementOperator(String operatorName, HashMap<String, Integer> data) {
		int count = data.getOrDefault(operatorName, 0);
		++count;
		data.put(operatorName, count);
	}
}
