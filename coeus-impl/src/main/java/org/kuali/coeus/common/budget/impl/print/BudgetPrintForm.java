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
package org.kuali.coeus.common.budget.impl.print;

import org.kuali.coeus.sys.framework.model.KcPersistableBusinessObjectBase;

public class BudgetPrintForm extends KcPersistableBusinessObjectBase {

    private String budgetReportId;

    private String budgetReportName;

    private Boolean selectToPrint;
    
    private Boolean selectToComment;

    /**
     * Gets the budgetReportId attribute. 
     * @return Returns the budgetReportId.
     */
    public String getBudgetReportId() {
        return budgetReportId;
    }

    /**
     * Sets the budgetReportId attribute value.
     * @param budgetReportId The budgetReportId to set.
     */
    public void setBudgetReportId(String budgetReportId) {
        this.budgetReportId = budgetReportId;
    }

    /**
     * Gets the budgetReportName attribute. 
     * @return Returns the budgetReportName.
     */
    public String getBudgetReportName() {
        return budgetReportName;
    }

    /**
     * Sets the budgetReportName attribute value.
     * @param budgetReportName The budgetReportName to set.
     */
    public void setBudgetReportName(String budgetReportName) {
        this.budgetReportName = budgetReportName;
    }

    public Boolean getSelectToPrint() {
        return selectToPrint;
    }

    public void setSelectToPrint(Boolean selectToPrint) {
        this.selectToPrint = selectToPrint;
    }

	public Boolean getSelectToComment() {
		return selectToComment;
	}

	public void setSelectToComment(Boolean selectToComment) {
		this.selectToComment = selectToComment;
	}
}
