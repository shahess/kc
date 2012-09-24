/*
 * Copyright 2005-2010 The Kuali Foundation
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
package org.kuali.kra.common.committee.rule.event;

import java.util.List;

import org.kuali.kra.common.committee.bo.CommitteeSchedule;
import org.kuali.kra.common.committee.document.CommitteeDocumentBase;
import org.kuali.kra.common.committee.rules.DeleteCommitteeScheduleRule;
import org.kuali.kra.common.committee.web.struts.form.schedule.ScheduleData;
import org.kuali.kra.rule.BusinessRuleInterface;
import org.kuali.rice.krad.document.Document;

/**
 * 
 * This class is the rule event for deleting committee schedule.
 */
public abstract class DeleteCommitteeScheduleEvent extends CommitteeScheduleEventBase<DeleteCommitteeScheduleRule> {
    
    private static final String MSG = "deleting CommitteeSchedule ";
    
    /**
     * 
     * Constructs a DeleteCommitteeScheduleEvent.java.
     * @param errorPathPrefix
     * @param document
     * @param scheduleData
     * @param committeeSchedules
     * @param type
     */
    public DeleteCommitteeScheduleEvent(String errorPathPrefix, CommitteeDocumentBase document, ScheduleData scheduleData, List<CommitteeSchedule> committeeSchedules, ErrorType type) {
        super(MSG + getDocumentId(document), errorPathPrefix, document, scheduleData, committeeSchedules, type);
    }
    
    /**
     * 
     * Constructs a DeleteCommitteeScheduleEvent.java.
     * @param errorPathPrefix
     * @param document
     * @param scheduleData
     * @param committeeSchedules
     * @param type
     */
    public DeleteCommitteeScheduleEvent(String errorPathPrefix, Document document, ScheduleData scheduleData,
            List<CommitteeSchedule> committeeSchedules, ErrorType type) {
        this(errorPathPrefix, (CommitteeDocumentBase) document, scheduleData, committeeSchedules, type);
    }
    
    @SuppressWarnings("unchecked")
    @Override
    public BusinessRuleInterface getRule() {
        return getNewDeleteCommitteeScheduleRuleInstanceHook();
    }

    protected abstract DeleteCommitteeScheduleRule getNewDeleteCommitteeScheduleRuleInstanceHook();
    
}
