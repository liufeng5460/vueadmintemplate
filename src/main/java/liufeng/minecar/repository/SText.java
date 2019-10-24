package liufeng.minecar.repository;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "\"S_TEXT\"")
public class SText {
	
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@GeneratedValue(generator = "idGenerator")
	@Column(name = "\"TEXTOID\"")
	private String textoid;
	
	@Column(name = "\"X\"")
	private String x;
	
	@Column(name = "\"Y\"")
	private String y;
	
	@Column(name = "\"TEXTNAME\"")
	private String textname;
	
	@Override
	public String toString() {
		return "SText{" +
				"textoid='" + textoid + '\'' +
				", x='" + x + '\'' +
				", y='" + y + '\'' +
				", textname='" + textname + '\'' +
				'}';
	}
}
