package liufeng.minecar.config;

import org.hibernate.boot.model.naming.Identifier;
import org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl;
import org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;

/**
 * @author liufeng
 */
public class CustomeNamingStrategy extends PhysicalNamingStrategyStandardImpl {
	
	final boolean IS_QUOTED = true;
	
	@Override
	public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment context) {
		return transform(name, context);
	}
	
	@Override
	public Identifier toPhysicalColumnName(Identifier name, JdbcEnvironment context) {
		return transform(name, context);
	}

//	private Identifier transform(Identifier name,JdbcEnvironment context){
//		if(name.equals(name.getText().toUpperCase())){
//			name = context.getIdentifierHelper().toIdentifier(name.getText(), IS_QUOTED);
//		}
//		return name;
//	}
	
	private Identifier transform(Identifier name, JdbcEnvironment context) {
		return context.getIdentifierHelper().toIdentifier(name.getText(), IS_QUOTED);
	}
}
