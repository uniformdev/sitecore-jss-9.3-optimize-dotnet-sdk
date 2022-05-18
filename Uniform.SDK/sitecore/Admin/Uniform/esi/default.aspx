<%@ Page Language="C#" AutoEventWireup="true" Inherits="Sitecore.sitecore.admin.AdminPage, Sitecore.Client" %>

<%@ Import Namespace="Uniform.Model" %>
<%@ Import Namespace="Uniform.Services" %>
<%@ Import Namespace="Sitecore.Configuration" %>
<%@ Import Namespace="Newtonsoft.Json" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="Uniform.Optimize" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckSecurity();
        if (!Page.IsPostBack)
        {
            var items = new ListItemCollection();
            foreach (var name in Factory.GetDatabaseNames())
            {
                if (name != "filesystem" && name != "core")
                {
                    items.Add(new ListItem(name, name));
                }
            }
            DropDownList1.DataSource = items;
            DropDownList1.DataBind();
            //
            //
            PopulateTree(false);
        }
    }
    private bool IsShowAll()
    {
        return LinkButton1.Text != "Show all conditions";
    }
    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
        PopulateTree(IsShowAll());
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var showAll = IsShowAll();
        LinkButton1.Text = showAll ? "Show all conditions" : "Hide unsupported conditions";
        PopulateTree(!showAll);
    }
    private const string TREE_NODE_TEXT = "<span title={0} style=\"text-decoration:{1}\">{2}</span><span id={3} onclick=\"copyToClipboard('{3}');\" title=\"Click to copy item id to clipboard\" style=\"cursor: pointer; padding-left: 20px; color: DarkGray; font-size: small; font-family: monospace\">{4}</span>";
    private string GetTreeNodeText(ConditionMetaData data)
    {
        var textDecoration = data.IsSupported ? "initial" : "line-through";
        var id = "cond_" + data.ItemId.Guid.ToString("N");
        return string.Format(TREE_NODE_TEXT, data.ItemPath, textDecoration, data.Name, id, data.ItemId.Guid.ToString("D"));
    }
    private void PopulateTree(bool includeAll)
    {
        TreeView1.Nodes.Clear();
        var dbName = string.IsNullOrEmpty(DropDownList1.SelectedValue) ? "master" : DropDownList1.SelectedValue;
        var report = ConditionParserReporter.GetConditionReport(dbName, includeAll);
        lblSupported.Text = report.SupportedConditionCount.ToString();
        lblTotal.Text = report.TotalConditionCount.ToString();
        var details = report.Details;
        var nodes = new Dictionary<string, TreeNode>();
        foreach (var key in details.Keys.OrderBy(k => k))
        {
            if (!nodes.ContainsKey(key))
            {
                nodes[key] = new TreeNode(key);
            }
            var parent = nodes[key];
            var conditions = details[key];
            foreach (var condition in conditions.OrderBy(c => c.Name))
            {
                var text = GetTreeNodeText(condition);
                parent.ChildNodes.Add(new TreeNode(text) { SelectAction = TreeNodeSelectAction.None });
            }
        }
        foreach (var node in nodes.Values)
        {
            TreeView1.Nodes.Add(node);
        }
        TreeView1.ExpandAll();
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Uniform ESI Configuration</title>
    <link href="../dist/favicon.png" rel="shortcut icon" />
    <link rel="Stylesheet" type="text/css" href="../dist/styles.css" />
    <script
        src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.0.1/dist/alpine.js"
        defer></script>
    <script>
        function copyToClipboard(id) {
            var element = document.getElementById(id);
            var textArea = document.createElement("textarea");
            textArea.value = element.textContent;
            document.body.appendChild(textArea);
            textArea.select();
            document.execCommand("copy");
            textArea.remove();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav
                class="bg-gray-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex items-center justify-between h-16">
            <div class="flex items-center">
              <div class="flex-shrink-0">
                <a href="/"
                  ><svg
                    width="50px"
                    height="50px"
                    viewBox="0 0 75 50"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                  >
                    <g
                      id="Update"
                      stroke="none"
                      stroke-width="1"
                      fill="none"
                      fill-rule="evenodd"
                    >
                      <g
                        id="02_landing"
                        transform="translate(-30.000000, -30.000000)"
                      >
                        <g
                          id="header"
                          transform="translate(30.000000, 30.000000)"
                        >
                          <g id="uniform-logo-text-white">
                            <g id="uniform-logo">
                              <polygon
                                id="XMLID_35_"
                                fill="#7AD7DA"
                                fill-rule="nonzero"
                                points="31.0238507 9.12200957 15.7815417 0.0370813397 0.035948842 9.41866029 0.035948842 27.5699761"
                              ></polygon>
                              <polygon
                                id="XMLID_34_"
                                fill="#E63946"
                                fill-rule="nonzero"
                                points="32.0304183 9.73385167 16.2848254 19.09689 31.5271345 28.1818182 31.5271345 28.1818182 31.5271345 28.1818182 31.5271345 46.9449761 31.5271345 46.9449761 31.5271345 46.9449761 47.2727273 37.5633971 47.2727273 18.8002392"
                              ></polygon>
                              <polygon
                                id="XMLID_33_"
                                fill="#457B9D"
                                fill-rule="nonzero"
                                points="30.5025925 47.5382775 30.5025925 28.7936603 15.7815417 37.5633971 15.7815417 19.4120813 0.035948842 28.7936603 0.035948842 46.9449761 15.7815417 56.326555"
                              ></polygon>
                            </g>
                          </g>
                        </g>
                      </g>
                    </g>
                  </svg>
                </a>
              </div>
              <div class="hidden md:block">
                <div class="ml-10 flex items-baseline">
                  <a
                    href="/sitecore/admin/uniform"
                    class="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700"
                    >Admin</a
                  >
                  <a
                    href="/sitecore/admin/uniform/esi"
                    class="ml-4 px-3 py-2 rounded-md text-sm font-medium text-white bg-gray-900 focus:outline-none focus:text-white focus:bg-gray-700"
                    >Optimize Configuration</a
                  >
                  <a
                    href="https://docs.uniform.dev"
                    target="_new"
                    class="ml-4 px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700"
                    >Documentation</a
                  >
                </div>
              </div>
            </div>
            <div class="-mr-2 flex md:hidden">
              <button
                @click="open = !open"
                class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:bg-gray-700 focus:text-white"
                x-bind:aria-label="open ? 'Close main menu' : 'Main menu'"
                x-bind:aria-expanded="open"
              >
                <svg
                  class="h-6 w-6"
                  stroke="currentColor"
                  fill="none"
                  viewBox="0 0 24 24"
                >
                  <path
                    :class="{'hidden': open, 'inline-flex': !open }"
                    class="inline-flex"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M4 6h16M4 12h16M4 18h16"
                  />
                  <path
                    :class="{'hidden': !open, 'inline-flex': open }"
                    class="hidden"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M6 18L18 6M6 6l12 12"
                  />
                </svg>
              </button>
            </div>
          </div>
        </div>
        <div :class="{'block': open, 'hidden': !open}" class="hidden md:hidden">
          <div class="px-2 pt-2 pb-3 sm:px-3">
            <a
              href="#"
              class="block px-3 py-2 rounded-md text-base font-medium text-white bg-gray-900 focus:outline-none focus:text-white focus:bg-gray-700"
              >Admin</a
            >
          </div>
          <div class="pt-4 pb-3 border-t border-gray-700"></div>
        </div>
      </nav>
            <header class="bg-white shadow">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
          <h1 class="text-3xl font-bold leading-tight text-gray-900">
            Uniform ESI Configuration
          </h1>
        </div>
      </header>
            <main>
        <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
          <!-- Replace with your content -->
          <div class="px-4 py-6 sm:px-0">
            <div class="border-4 border-dashed border-gray-200 rounded-lg h-96">
              <div class="bg-white">
                <div class="max-w-screen-xl mx-auto">
                  <div class="mt-6 p-10">
                    <div class="bg-gray-50">
                      <div class="max-w-screen-xl mx-auto">
                        <div class="flex">
                          <div class="pr-5">
                          <h2 class="text-3xl leading-9 font-extrabold text-gray-900 sm:text-4xl sm:leading-10">
                            Personalization
                          </h2>
                        </div>
                      </div>
                        <div class="mt-6 border-t-2 border-gray-200 pt-6">
                          <dl>
                            <div class="md:grid md:grid-cols-12 md:gap-8">
                              <dt class="text-base leading-6 font-medium text-gray-900 md:col-span-5">
                                <h3 class="text-xl leading-9 font-bold text-gray-900 sm:text-xl sm:leading-10">
                                  Database
                                </h3>
                                <div>
                                  <p>This settings determines the Sitecore database whose rule condition definition items used.</p>
                                </div>
                              </dt>
                              <dd class="mt-2 md:mt-0 md:col-span-7">
                                <div class="bg-green-100 border-t-4 border-green-500 rounded-b text-green-900 px-4 py-3 shadow-md" role="alert">
                                  <div class="flex">
                                    <div class="py-1">
                                      <svg class="w-6 h-6 mr-4" fill="none" stroke="green" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4m0 5c0 2.21-3.582 4-8 4s-8-1.79-8-4"></path>
                                      </svg>
                                    </div>
                                    <div>
                                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="OnSelectedIndexChanged" DataTextField="Text" DataValueField="Value" />
                                    </div>
                                  </div>
                                </div>
                              </dd>
                            </div>

                            <div class="md:grid md:grid-cols-12 md:gap-8">
                              <dt class="text-base leading-6 font-medium text-gray-900 md:col-span-5">
                                <h3 class="text-xl leading-9 font-bold text-gray-900 sm:text-xl sm:leading-10">
                                  Filters
                                </h3>
                                <div>
                                  <p>This settings determines which rule conditions are retrieved.</p>
                                </div>
                              </dt>
                              <dd class="mt-2 md:mt-0 md:col-span-7">
                                <div class="bg-green-100 border-t-4 border-green-500 rounded-b text-green-900 px-4 py-3 shadow-md" role="alert">
                                  <div class="flex">
                                    <div class="py-1">
                                        <svg class="w-6 h-6 mr-4" fill="none" stroke="green" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4"></path>
                                        </svg>
                                    </div>
                                    <div>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text="Show all conditions" />
                                    </div>
                                  </div>
                                </div>
                              </dd>
                            </div>

                            <div class="mt-8 border-t border-gray-200 pt-6 md:grid md:grid-cols-12 md:gap-8">
                              <dt class="text-base leading-6 font-medium text-gray-900 md:col-span-5">
                                <h3 class="text-xl leading-9 font-bold text-gray-900 sm:text-xl sm:leading-10">
                                  Conditions
                                </h3>
                                <div>
                                  <p>This section provides information which rule conditions are supported.</p>
                                </div>
                              </dt>
                              <dd class="mt-2 md:mt-0 md:col-span-7">
                                <div class="bg-green-100 border-t-4 border-green-500 rounded-b text-green-900 px-4 py-3 shadow-md" role="alert">
                                    <div class="flex">
                                    <div class="py-1">
                                        <svg class="w-6 h-6 mr-4" fill="none" stroke="green" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 7h6m0 10v-3m-3 3h.01M9 17h.01M9 14h.01M12 14h.01M15 11h.01M12 11h.01M9 11h.01M7 21h10a2 2 0 002-2V5a2 2 0 00-2-2H7a2 2 0 00-2 2v14a2 2 0 002 2z"></path></svg>
                                    </div>
                                    <div>
                                        <table style="text-align: right">
                                            <tr>
                                                <td>Supported:</td>
                                                <td style="font-family: monospace; padding-left: 10px"><asp:Label id="lblSupported" runat="server" /></td>
                                            </tr>
                                            <tr>
                                                <td>Total:</td>
                                                <td style="font-family: monospace; padding-left: 10px"><asp:Label id="lblTotal" runat="server" /></td>
                                            </tr>
                                        </table>
                                    </div>
                                    </div>
                                </div>

                                <div style="padding-top:20px">
                                    <asp:TreeView ID="TreeView1" runat="server" />
                                </div>
                              </dd>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
      </main>
        </div>
    </form>
</body>
</html>
