package liufeng.minecar.repository;

import org.geolatte.geom.Point;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "T_LIGHT")
public class TLight implements Serializable {
	
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@GeneratedValue(generator = "idGenerator")
	@Column(name = "ID")
	private String id;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "ADDRESS")
	private String address;
	
	@Column(name = "REMARK")
	private String remark;
	
	@Column(name = "geom", columnDefinition = "geometry")
	private Point geom;
	
	@Override
	public String toString() {
		return "TLight{" +
				"id='" + id + '\'' +
				", name='" + name + '\'' +
				", address='" + address + '\'' +
				", remark='" + remark + '\'' +
				", geom=" + geom +
				'}';
	}
}

