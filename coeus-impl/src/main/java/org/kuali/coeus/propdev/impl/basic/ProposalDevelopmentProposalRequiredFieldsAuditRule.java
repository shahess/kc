/*
 * Copyright 2005-2014 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.coeus.propdev.impl.basic;

import org.apache.commons.lang3.StringUtils;
import org.kuali.coeus.common.framework.type.ProposalType;
import org.kuali.coeus.propdev.api.core.SubmissionInfoService;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument;
import org.kuali.coeus.propdev.impl.core.ProposalTypeService;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.coeus.propdev.impl.core.DevelopmentProposal;
import org.kuali.rice.coreservice.framework.parameter.ParameterService;
import org.kuali.rice.krad.util.AuditCluster;
import org.kuali.rice.krad.util.AuditError;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.rules.rule.DocumentAuditRule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.ArrayList;
import java.util.List;

import static org.kuali.coeus.propdev.impl.datavalidation.ProposalDevelopmentDataValidationConstants.*;

/**
 * This class processes audit rules (warnings) for the Sponsor & Program Information related
 * data of the ProposalDevelopmenDocument.
 */
public class ProposalDevelopmentProposalRequiredFieldsAuditRule implements DocumentAuditRule {    
    
    private ParameterService parameterService;
    private SubmissionInfoService submissionInfoService;
    private ProposalTypeService proposalTypeService;

    @Override
    public boolean processRunAuditBusinessRules(Document document) {
        boolean valid = true;

        ProposalDevelopmentDocument proposalDevelopmentDocument = (ProposalDevelopmentDocument)document;
        DevelopmentProposal proposal = proposalDevelopmentDocument.getDevelopmentProposal();

        Long proposalId = null;
        if (StringUtils.isNotEmpty(proposal.getContinuedFrom())) {
           proposalId = getSubmissionInfoService().getProposalContinuedFromVersionProposalId(proposal.getContinuedFrom());
        }
        String changeCorrectedType = getParameterService().getParameterValueAsString(ProposalDevelopmentDocument.class, "s2s.submissiontype.changedCorrected");
        if (proposal.getS2sOpportunity() != null && isProposalTypeNew(proposal.getProposalTypeCode())
                && StringUtils.equals(proposal.getS2sOpportunity().getS2sSubmissionTypeCode(), changeCorrectedType)) {
            String ggTrackingId = null;
            if (proposalId != null) {
                ggTrackingId = getSubmissionInfoService().getGgTrackingIdFromProposal(proposalId);
            }
            if (StringUtils.isBlank(proposal.getSponsorProposalNumber())
                    && StringUtils.isBlank(ggTrackingId)) {
                valid = false;
                getAuditErrors(DETAILS_PAGE_NAME,NO_SECTION_ID).add(new AuditError(ORIGINAL_PROPOSAL_ID_KEY,
                        KeyConstants.ERROR_PROPOSAL_REQUIRE_ID_CHANGE_APP, DETAILS_PAGE_ID));
            }
        }

        return valid;
    }
    
    /**
     * Is the Proposal Type set to New?
     * @param proposalTypeCode proposal type code
     * @return true or false
     */
    private boolean isProposalTypeNew(String proposalTypeCode) {
         
        return !StringUtils.isEmpty(proposalTypeCode) &&
               (proposalTypeCode.equals(getProposalTypeService().getNewProposalTypeCode()));
    }

    private List<AuditError> getAuditErrors(String areaName, String sectionName ) {
        List<AuditError> auditErrors = new ArrayList<AuditError>();
        String clusterKey = areaName + "." + sectionName;
        if (!GlobalVariables.getAuditErrorMap().containsKey(clusterKey)) {
            GlobalVariables.getAuditErrorMap().put(clusterKey, new AuditCluster(clusterKey, auditErrors, AUDIT_ERRORS));
        }
        else {
            auditErrors = GlobalVariables.getAuditErrorMap().get(clusterKey).getAuditErrorList();
        }

        return auditErrors;
    }
    /**
     * Looks up and returns the ParameterService.
     * @return the parameter service. 
     */
    protected ParameterService getParameterService() {
        if (this.parameterService == null) {
            this.parameterService = KcServiceLocator.getService(ParameterService.class);
        }
        return this.parameterService;
    }

    protected SubmissionInfoService getSubmissionInfoService() {
        if (this.submissionInfoService == null) {
            this.submissionInfoService = KcServiceLocator.getService(SubmissionInfoService.class);
        }
        return this.submissionInfoService;
    }

    public void setSubmissionInfoService(SubmissionInfoService submissionInfoService) {
        this.submissionInfoService = submissionInfoService;
    }

    public void setParameterService(ParameterService parameterService) {
        this.parameterService = parameterService;
    }

	public ProposalTypeService getProposalTypeService() {
        if (proposalTypeService == null) {
            proposalTypeService = KcServiceLocator.getService(ProposalTypeService.class);
        }
		return proposalTypeService;
	}

	public void setProposalTypeService(ProposalTypeService proposalTypeService) {
		this.proposalTypeService = proposalTypeService;
	}

}
