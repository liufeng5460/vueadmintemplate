package liufeng.minecar.repository;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author liufeng
 */
@Entity
@Table(name = "S_BUSINESSLIST")
public class BusinessList {
	
	@Id
	@Column(name = "BUSINESSLISTOID")
	private String businessListOid;
	
	@Column(name = "BPOID")
	private String bpOid;
	
	@Column(name = "BPONAME")
	private String bpoName;
	
	@Column(name = "PARENTOID")
	private String parentOid;
	
	@Column(name = "APPLICATIONID")
	private String applicationId;
	
	@Column(name = "APPLICATIONNAME")
	private String applicationName;
	
	
	@Override
	public String toString() {
		return "BusinessList{" +
				"businessListOid='" + businessListOid + '\'' +
				", bpOid='" + bpOid + '\'' +
				", bpoName='" + bpoName + '\'' +
				", parentOid='" + parentOid + '\'' +
				", applicationId='" + applicationId + '\'' +
				", applicationName='" + applicationName + '\'' +
				'}';
	}
}
