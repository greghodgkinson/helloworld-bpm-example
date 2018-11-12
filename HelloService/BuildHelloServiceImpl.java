
import com.ibm.websphere.sca.ServiceManager;

public class BuildHelloServiceImpl {
	/**
	 * Default constructor.
	 */
	public BuildHelloServiceImpl() {
		super();
	}

	/**
	 * Return a reference to the component service instance for this implementation
	 * class.  This method should be used when passing this service to a partner reference
	 * or if you want to invoke this component service asynchronously.    
	 *
	 * @generated (com.ibm.wbit.java)
	 */
	@SuppressWarnings("unused")
	private Object getMyService() {
		return (Object) ServiceManager.INSTANCE.locateService("self");
	}

	/**
	 * Method generated to support implementation of operation "getHello" defined for WSDL port type 
	 * named "HelloService".
	 * 
	 * Please refer to the WSDL Definition for more information 
	 * on the type of input, output and fault(s).
	 */
	public String getHello(String name) {
		return "Hello " + name;
	}

}