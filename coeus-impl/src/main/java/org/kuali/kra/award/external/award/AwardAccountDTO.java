/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.award.external.award;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * This class is the DTO to be sent over to the financial system 
 * with information required for effort reporting and
 * award account.
 */
public class AwardAccountDTO implements Serializable {

 
    private static final long serialVersionUID = 1L;
    private String proposalFederalPassThroughAgencyNumber;
    private String errorMessage;
    private String grantNumber;
    private String projectDirector;
    private String proposalNumber;
    private String sponsorName;
    private boolean isFederalSponsor;
    private Long awardId;
    private String sponsorCode;
    private Long institutionalproposalId;
    private String awardTitle;
    private String primeSponsorCode;
    private String primeSponsorName;
    private String primeSponsorTypeCode;
    private String sponsorTypeCode;

    private String chartOfAcccountsCode;
    private String accountNumber;
    private boolean finalBill;
    private Date lastBilledDate;
    private Date previousLastBilledDate;
    private BigDecimal amountToDraw;
    private boolean letterOfCreditReviewIndicator;
    private String invoiceDocumentStatus;
    
   
    
    public String getPrimeSponsorTypeCode() {
        return primeSponsorTypeCode;
    }

    public void setPrimeSponsorTypeCode(String primeSponsorTypeCode) {
        this.primeSponsorTypeCode = primeSponsorTypeCode;
    }

    public String getSponsorTypeCode() {
        return sponsorTypeCode;
    }

    public void setSponsorTypeCode(String sponsorTypeCode) {
        this.sponsorTypeCode = sponsorTypeCode;
    }

    public String getAwardTitle() {
        return awardTitle;
    }
    
    public void setAwardTitle(String awardTitle) {
        this.awardTitle = awardTitle;
    }
    
    public String getPrimeSponsorCode() {
        return primeSponsorCode;
    }
    
    public void setPrimeSponsorCode(String primeSponsorCode) {
        this.primeSponsorCode = primeSponsorCode;
    }
    
    public String getPrimeSponsorName() {
        return primeSponsorName;
    }
    public void setPrimeSponsorName(String primeSponsorName) {
        this.primeSponsorName = primeSponsorName;
    }
    
    public String getProposalFederalPassThroughAgencyNumber() {
        return proposalFederalPassThroughAgencyNumber;
    }
    
    public void setProposalFederalPassThroughAgencyNumber(String proposalFederalPassThroughAgencyNumber) {
        this.proposalFederalPassThroughAgencyNumber = proposalFederalPassThroughAgencyNumber;
    }
    
    public String getErrorMessage() {
        return errorMessage;
    }
    
    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
    
    public String getGrantNumber() {
        return grantNumber;
    }
    
    public void setGrantNumber(String grantNumber) {
        this.grantNumber = grantNumber;
    }
    
    public String getProjectDirector() {
        return projectDirector;
    }
    
    public void setProjectDirector(String projectDirector) {
        this.projectDirector = projectDirector;
    }
    
    public String getProposalNumber() {
        return proposalNumber;
    }
    
    public void setProposalNumber(String proposalNumber) {
        this.proposalNumber = proposalNumber;
    }
    
    public String getSponsorName() {
        return sponsorName;
    }
    
    public void setSponsorName(String sponsorName) {
        this.sponsorName = sponsorName;
    }
    
    public boolean isFederalSponsor() {
        return isFederalSponsor;
    }
    
    public void setFederalSponsor(boolean isFederalSponsor) {
        this.isFederalSponsor = isFederalSponsor;
    }
    
    public Long getAwardId() {
        return awardId;
    }
    
    public void setAwardId(Long long1) {
        this.awardId = long1;
    }
    
    public String getSponsorCode() {
        return sponsorCode;
    }
    
    public void setSponsorCode(String sponsorCode) {
        this.sponsorCode = sponsorCode;
    }
    
    public Long getInstitutionalproposalId() {
        return institutionalproposalId;
    }
    
    public void setInstitutionalproposalId(Long long1) {
        this.institutionalproposalId = long1;
    }
    
    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public String getChartOfAcccountsCode() {
        return chartOfAcccountsCode;
    }

    public void setChartOfAcccountsCode(String chartOfAcccountsCode) {
        this.chartOfAcccountsCode = chartOfAcccountsCode;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public boolean isFinalBill() {
        return finalBill;
    }

    public void setFinalBill(boolean finalBill) {
        this.finalBill = finalBill;
    }

    public Date getLastBilledDate() {
        return lastBilledDate;
    }

    public void setLastBilledDate(Date lastBilledDate) {
        this.lastBilledDate = lastBilledDate;
    }

    public Date getPreviousLastBilledDate() {
        return previousLastBilledDate;
    }

    public void setPreviousLastBilledDate(Date previousLastBilledDate) {
        this.previousLastBilledDate = previousLastBilledDate;
    }

    public BigDecimal getAmountToDraw() {
        return amountToDraw;
    }

    public void setAmountToDraw(BigDecimal amountToDraw) {
        this.amountToDraw = amountToDraw;
    }

    public boolean isLetterOfCreditReviewIndicator() {
        return letterOfCreditReviewIndicator;
    }

    public void setLetterOfCreditReviewIndicator(
            boolean letterOfCreditReviewIndicator) {
        this.letterOfCreditReviewIndicator = letterOfCreditReviewIndicator;
    }

    public String getInvoiceDocumentStatus() {
        return invoiceDocumentStatus;
    }

    public void setInvoiceDocumentStatus(String invoiceDocumentStatus) {
        this.invoiceDocumentStatus = invoiceDocumentStatus;
    }

}
