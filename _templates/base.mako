<%def name="section()">
<%
    template_name = bf.template_context['template_name']
    section = template_name[:template_name.find("/")]
    return section
%>
</%def>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>

<%def name="header()">
  <%include file="header.mako"  args="active=self.section()" />
</%def>

<%def name="head()">
  <%include file="head.mako" />
</%def>

<%def name="footer()">
  <%include file="footer.mako" />
</%def>

${next.body()}


