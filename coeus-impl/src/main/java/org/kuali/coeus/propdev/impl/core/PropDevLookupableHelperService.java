package org.kuali.coeus.propdev.impl.core;

import java.util.Collection;

import org.kuali.rice.kew.api.exception.WorkflowException;
import org.kuali.rice.krad.lookup.Lookupable;
import org.kuali.rice.krad.uif.element.Link;

public interface PropDevLookupableHelperService extends Lookupable {

	public void buildPropDevViewActionLink(Link actionLink, Object model, String title) throws WorkflowException;
	
	public void buildPropDevEditActionLink(Link actionLink, Object model, String title) throws WorkflowException;
	
}
