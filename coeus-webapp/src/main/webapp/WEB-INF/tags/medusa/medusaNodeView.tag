<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<%@ attribute name="node" required="true" type="org.kuali.coeus.common.framework.medusa.MedusaNode"%>

<div id="medusaNewDetails">
<c:choose>
<c:when test="${node.type == 'IP'}">
  <kra-m:medusaInstPropSummary node="${node}"/>
</c:when>
<c:when test="${node.type == 'award'}">
  <kra-m:medusaAwardSummary node="${node}"/>
</c:when>
<c:when test="${node.type == 'DP'}">
  <kra-m:medusaDevPropSummary node="${node}"/>
</c:when>
<c:when test="${node.type == 'neg'}">
  <kra-m:medusaNegotiationSummary node="${node}"/>
</c:when>
<c:when test="${node.type == 'subaward'}">
  <kra-m:medusaSubAwardSummary node="${node}"/>
</c:when>
<c:when test="${node.type == 'irb'}">
  <kra-m:medusaProtocolSummary node="${node}"/>
</c:when>
<c:when test="${node.type == 'iacuc'}">
  <kra-m:medusaIacucSummary node="${node}"/>
</c:when>
</c:choose>
</div>


