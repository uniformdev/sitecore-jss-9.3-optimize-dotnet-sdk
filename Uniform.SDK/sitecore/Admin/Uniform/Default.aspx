<%@ Page Language="C#" AutoEventWireup="true" Inherits="Uniform.Admin.UniformPage" CodeBehind="Default.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Uniform Admin</title>
    <link href="./dist/favicon.png" rel="shortcut icon"/>
    <link rel="Stylesheet" type="text/css" href="./dist/styles.css"/>
    <script
        src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.0.1/dist/alpine.js"
        defer></script>
</head>
<body>
<form runat="server">

<div>
<nav
    class="bg-gray-800">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex items-center justify-between h-16">
            <div class="flex items-center">
                <div class="flex-shrink-0">
                    <a href="/">
                        <svg
                            width="50px"
                            height="50px"
                            viewBox="0 0 75 50"
                            xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink">
                            <g
                                id="Update"
                                stroke="none"
                                stroke-width="1"
                                fill="none"
                                fill-rule="evenodd">
                                <g
                                    id="02_landing"
                                    transform="translate(-30.000000, -30.000000)">
                                    <g
                                        id="header"
                                        transform="translate(30.000000, 30.000000)">
                                        <g id="uniform-logo-text-white">
                                            <g id="uniform-logo">
                                                <polygon
                                                    id="XMLID_35_"
                                                    fill="#7AD7DA"
                                                    fill-rule="nonzero"
                                                    points="31.0238507 9.12200957 15.7815417 0.0370813397 0.035948842 9.41866029 0.035948842 27.5699761">
                                                </polygon>
                                                <polygon
                                                    id="XMLID_34_"
                                                    fill="#E63946"
                                                    fill-rule="nonzero"
                                                    points="32.0304183 9.73385167 16.2848254 19.09689 31.5271345 28.1818182 31.5271345 28.1818182 31.5271345 28.1818182 31.5271345 46.9449761 31.5271345 46.9449761 31.5271345 46.9449761 47.2727273 37.5633971 47.2727273 18.8002392">
                                                </polygon>
                                                <polygon
                                                    id="XMLID_33_"
                                                    fill="#457B9D"
                                                    fill-rule="nonzero"
                                                    points="30.5025925 47.5382775 30.5025925 28.7936603 15.7815417 37.5633971 15.7815417 19.4120813 0.035948842 28.7936603 0.035948842 46.9449761 15.7815417 56.326555">
                                                </polygon>
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
                            class="px-3 py-2 rounded-md text-sm font-medium text-white bg-gray-900 focus:outline-none focus:text-white focus:bg-gray-700">
                            Admin
                        </a
                        >
                        <a
                            href="/sitecore/admin/uniform/esi"
                            class="ml-4 px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700"
                            >Optimize Configuration
                        </a
                        >
                        <a
                            href="https://docs.uniform.dev"
                            target="_blank"
                            rel="noopener noreferrer"
                            class="ml-4 px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:text-white hover:bg-gray-700 focus:outline-none focus:text-white focus:bg-gray-700">
                            Documentation
                        </a
                        >
                    </div>
                </div>
            </div>
            <div class="-mr-2 flex md:hidden">
                <button
                    @click="open = !open"
                    class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:bg-gray-700 focus:text-white"
                    x-bind:aria-label="open ? 'Close main menu' : 'Main menu'"
                    x-bind:aria-expanded="open">
                    <svg
                        class="h-6 w-6"
                        stroke="currentColor"
                        fill="none"
                        viewBox="0 0 24 24">
                        <path
                            :class="{'hidden': open, 'inline-flex': !open }"
                            class="inline-flex"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M4 6h16M4 12h16M4 18h16"/>
                        <path
                            :class="{'hidden': !open, 'inline-flex': open }"
                            class="hidden"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M6 18L18 6M6 6l12 12"/>
                    </svg>
                </button>
            </div>
        </div>
    </div>
    <div :class="{'block': open, 'hidden': !open}" class="hidden md:hidden">
        <div class="px-2 pt-2 pb-3 sm:px-3">
            <a
                href="#"
                class="block px-3 py-2 rounded-md text-base font-medium text-white bg-gray-900 focus:outline-none focus:text-white focus:bg-gray-700">
                Admin
            </a
            >
        </div>
        <div class="pt-4 pb-3 border-t border-gray-700"></div>
    </div>
</nav>
<header class="bg-white shadow">
    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold leading-tight text-gray-900">
            Uniform Admin
        </h1>
    </div>
</header>
<main>
<div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
<!-- Replace with your content -->
<div class="px-4 py-6 sm:px-0">
<div class="border-4 border-dashed border-gray-200 rounded-lg h-96">
<div class="bg-white">
<!-- Start Uniform Deploy Runtime Settings-->
<div class="max-w-screen-xl mx-auto">
<div class="mt-6 p-10">
<div class="bg-gray-50">
<div class="max-w-screen-xl mx-auto">
<div class="flex">
    <div class="pr-5">
        <h2
            class="text-3xl leading-9 font-extrabold text-gray-900 sm:text-4xl sm:leading-10">
            Uniform Runtime Settings
        </h2>
    </div>
    <div class="mt-1">
        <button
            runat="server"
            name="btnDisableDeployments"
            id="Button1"
            OnServerClick="ToggleDeployments_Click"
            class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center">
            <svg class="fill-current w-4 h-4 mr-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                <path class="heroicon-ui" d="M6 18.7V21a1 1 0 0 1-2 0v-5a1 1 0 0 1 1-1h5a1 1 0 1 1 0 2H7.1A7 7 0 0 0 19 12a1 1 0 1 1 2 0 9 9 0 0 1-15 6.7zM18 5.3V3a1 1 0 0 1 2 0v5a1 1 0 0 1-1 1h-5a1 1 0 0 1 0-2h2.9A7 7 0 0 0 5 12a1 1 0 1 1-2 0 9 9 0 0 1 15-6.7z"/>
            </svg>
            <% if (DeployIsEnabled())
               { %>
                <span>Disable deployments</span>
            <% }
               else
               { %>
                <span>Enable deployments</span>
            <% } %>
        </button>
    </div>
    <div class="mt-1" style="margin-left: 10px;">
        <button
            runat="server"
            name="btnPrintDebugInfo"
            id="Button3"
            OnServerClick="PrintDebugInfo_Click"
            class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center">
            <span>Debug Info</span>
        </button>
    </div>
</div>
<div class="mt-6 border-t-2 border-gray-200 pt-6">
    <dl>
        <div class="md:grid md:grid-cols-12 md:gap-8">
            <dt
                class="text-base leading-6 font-medium text-gray-900 md:col-span-5">
                <h3
                    class="text-xl leading-9 font-bold text-gray-900 sm:text-xl sm:leading-10">
                    Publish handler status
                </h3>
            </dt>
            <dd class="mt-2 md:mt-0 md:col-span-7">
                <% if (DeployIsEnabled() && AnyUniformSiteConfigurations())
                   { %>
                    <div
                        class="bg-gray-100 border-t-4 border-gray-500 rounded-b px-4 py-3 shadow-md "
                        role="alert">
                        <div class="flex-auto">
                            <div class="py-1">
                                <svg
                                    class="fill-current h-6 w-6 text-green-500 mr-4"
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 24 24">
                                    <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.46a1 1 0 0 1 1.42-1.42 3 3 0 0 0 4.24 0 1 1 0 0 1 1.42 1.42 5 5 0 0 1-7.08 0zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
                                </svg>
                            </div>
                            <div>
                                <p class="font-bold">Publish handler is enabled</p>
                                <p class="text-sm">
                                    Deployments are enabled as the last stage of Sitecore publish pipeline for the given sites: <br/>
                                    <br/>
                                    <% foreach (var site in GetSiteConfigurations())
                                       {
                                           if (!IsMisconfigured(site))
                                           { %>
                                            <div class="bg-green-100 border-t-4 border-green-500 rounded-b text-green-900 px-4 py-3 shadow-md" role="alert">
                                                <div class="flex">
                                                    <div class="py-1">
                                                        <svg
                                                            class="fill-current h-6 w-6 text-green-500 mr-4"
                                                            xmlns="http://www.w3.org/2000/svg"
                                                            viewBox="0 0 24 24">
                                                            <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.46a1 1 0 0 1 1.42-1.42 3 3 0 0 0 4.24 0 1 1 0 0 1 1.42 1.42 5 5 0 0 1-7.08 0zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
                                                        </svg>
                                                    </div>
                                                </div>
                                                <div>
                                                    <span class="font-bold"><%= site.Name %></span> site configuration<br/>
                                                    <dl style="margin-left: 16px; margin-top: 8px">
                                                        <div class="md:grid md:grid-cols-12 md:gap-4">
                                                            <dt class="text-base leading-6 font-medium  md:col-span-5">deployment:</dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetDeploymentServiceInfo(site) %><br/>
                                                            </dd>

                                                            <dt class="text-base leading-6 font-medium  md:col-span-5">deployment scope: </dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetDeploymentScopeServiceInfo(site) %><br/>
                                                            </dd>

                                                            <dt class="text-base leading-6 font-medium  md:col-span-5">deployment state: </dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetDeploymentStateServiceInfo(site) %><br/>
                                                            </dd>

                                                            <dt class="text-base leading-6 font-medium  md:col-span-5">media:</dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetMediaDeploymentScopeServiceInfo(site) %><br/>
                                                            </dd>

                                                            <dt class="text-base leading-6 font-medium md:col-span-5">CDN purge:</dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetPurgeServiceInfo(site) %><br/>
                                                            </dd>
                                                        </div>
                                                        <div class="mt-6">
                                                            See actual configuration:
                                                            <span class="font-bold">
                                                                <a target="_blank" href="/sitecore/admin/uniform?siteConfiguration=<%= site.Name %>">/sitecore/admin/uniform?siteConfiguration=<%= site.Name %></a>
                                                            </span>
                                                        </div>
                                                    </dl>
                                                </div>
                                            </div>
                                            <br/>
                                        <% }
                                           else
                                           { %>
                                            <div class="bg-red-100 border-t-4 border-red-500 rounded-b text-red-900 px-4 py-3 shadow-md" role="alert">
                                                <div class="flex">
                                                    <div class="py-1">
                                                        <svg class="fill-current h-6 w-6 text-red-500 mr-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                            <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.54a5 5 0 0 1 7.08 0 1 1 0 0 1-1.42 1.42 3 3 0 0 0-4.24 0 1 1 0 0 1-1.42-1.42zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"></path>
                                                        </svg>
                                                    </div>
                                                </div>

                                                <div>
                                                    <div>
                                                        <span class="font-bold"><%= site.Name %></span> site configuration<br/>
                                                    </div>
                                                    <dl style="margin-left: 16px; margin-top: 8px">
                                                        <div class="md:grid md:grid-cols-12 md:gap-4">
                                                            <dt class="text-base leading-6 font-medium md:col-span-5">deployment:</dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetDeploymentServiceInfo(site) %><br/>
                                                            </dd>

                                                            <dt class="text-base leading-6 font-medium md:col-span-5">deployment scope:</dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetDeploymentScopeServiceInfo(site) %><br/>
                                                            </dd>

                                                            <dt class="text-base leading-6 font-medium md:col-span-5">media:</dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetMediaDeploymentScopeServiceInfo(site) %><br/>
                                                            </dd>

                                                            <dt class="text-base leading-6 font-medium md:col-span-5">CDN purge:</dt>
                                                            <dd class="overflow-auto mt-2 md:mt-0 md:col-span-7">
                                                                <%= TryGetPurgeServiceInfo(site) %><br/>
                                                            </dd>
                                                        </div>
                                                        <div class="mt-6">
                                                            See actual configuration:
                                                            <span class="font-bold">
                                                                <a target="_blank" href="/sitecore/admin/uniform?siteConfiguration=<%= site.Name %>">/sitecore/admin/uniform?siteConfiguration=<%= site.Name %></a>
                                                            </span>
                                                        </div>
                                                        <p class="text-sm border-4 border-red-500 border-dashed p-2 mt-6" style="border-width: 2px;">
                                                            Please review the misconfigured services on <span class="flex overflow-x-auto mr-2 bg-gray-800 text-yellow-400 rounded"> /sitecore/system/Uniform/SiteConfigurations/<%= site.Name %>/Configuration</span> item
                                                            or <span class=" flex overflow-x-auto bg-gray-800 text-yellow-400 rounded"> /configuration/sitecore/uniform/siteConfigurations/<%= site.Name %>/deployment</span> node in /showconfig.aspx
                                                            <br/>
                                                        </p>
                                                    </dl>
                                                </div>
                                            </div>
                                            <br/>
                                        <% } %>

                                    <% } %>
                                </p>
                            </div>
                        </div>
                    </div>
                <% }
                   else if (DeployIsEnabled())
                   { %>
                    <div class="bg-yellow-100 border-t-4 border-yellow-500 rounded-b text-yellow-900 px-4 py-3 shadow-md" role="alert">
                        <div class="flex-auto">
                            <div class="py-1">
                                <svg class="fill-current h-6 w-6 text-yellow-500 mr-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.54a5 5 0 0 1 7.08 0 1 1 0 0 1-1.42 1.42 3 3 0 0 0-4.24 0 1 1 0 0 1-1.42-1.42zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"></path>
                                </svg>
                            </div>
                            <div>
                                <p class="font-bold">
                                    Publish handler is enabled, though there are no sites configured in Uniform.
                                </p>
                                <p class="text-sm">
                                    No deployments will happen during Sitecore publish
                                </p>
                            </div>
                        </div>
                    </div>
                <% }
                   else
                   { %>
                    <div class="bg-red-100 border-t-4 border-red-500 rounded-b text-red-900 px-4 py-3 shadow-md" role="alert">
                        <div class="flex">
                            <div class="py-1">
                                <svg class="fill-current h-6 w-6 text-red-500 mr-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.54a5 5 0 0 1 7.08 0 1 1 0 0 1-1.42 1.42 3 3 0 0 0-4.24 0 1 1 0 0 1-1.42-1.42zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"></path>
                                </svg>
                            </div>
                            <div>
                                <p class="font-bold">
                                    Publish handler is disabled
                                </p>
                                <p class="text-sm">
                                    No deployments will happen during Sitecore publish
                                </p>
                            </div>
                        </div>
                    </div>
                <% } %>
            </dd>
        </div>
    </dl>
</div>
</div>
</div>
</div>
</div>
<!-- End Uniform Deploy Runtime Settings-->
<!-- Start Uniform License Status-->
<div class="max-w-screen-xl mx-auto">
    <div class="mt-6 p-10">
        <div class="bg-gray-50">
            <div class="max-w-screen-xl mx-auto">
                <div class="flex">
                    <div class="pr-5">
                        <h2
                            class="text-3xl leading-9 font-extrabold text-gray-900 sm:text-4xl sm:leading-10">
                            Uniform License Status
                        </h2>
                    </div>
                    <div class="mt-1">
                        <button
                            runat="server"
                            name="btnReloadLicense"
                            id="Button2"
                            OnServerClick="ReloadLicense_Click"
                            class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded inline-flex items-center">
                            <svg class="fill-current w-4 h-4 mr-2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path class="heroicon-ui" d="M6 18.7V21a1 1 0 0 1-2 0v-5a1 1 0 0 1 1-1h5a1 1 0 1 1 0 2H7.1A7 7 0 0 0 19 12a1 1 0 1 1 2 0 9 9 0 0 1-15 6.7zM18 5.3V3a1 1 0 0 1 2 0v5a1 1 0 0 1-1 1h-5a1 1 0 0 1 0-2h2.9A7 7 0 0 0 5 12a1 1 0 1 1-2 0 9 9 0 0 1 15-6.7z"/>
                            </svg>
                            <span>Reload license</span>
                        </button>
                    </div>
                </div>
                <div class="mt-6 border-t-2 border-gray-200 pt-6">
                    <dl>
                        <div class="md:grid md:grid-cols-12 md:gap-8">
                            <dt
                                class="text-base leading-6 font-medium text-gray-900 md:col-span-5">
                                <h3
                                    class="text-xl leading-9 font-bold text-gray-900 sm:text-xl sm:leading-10">
                                    License validity
                                </h3>
                            </dt>
                            <dd class="mt-2 md:mt-0 md:col-span-7">
                                <% if (LicenseInfo.IsActivated)
                                   { %>
                                    <div
                                        class="bg-green-100 border-t-4 border-green-500 rounded-b text-green-900 px-4 py-3 shadow-md"
                                        role="alert">
                                        <div class="flex">
                                            <div class="py-1">
                                                <svg
                                                    class="fill-current h-6 w-6 text-green-500 mr-4"
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    viewBox="0 0 24 24">
                                                    <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.46a1 1 0 0 1 1.42-1.42 3 3 0 0 0 4.24 0 1 1 0 0 1 1.42 1.42 5 5 0 0 1-7.08 0zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
                                                </svg>
                                            </div>
                                            <div>
                                                <p class="font-bold"><%= LicenseStatusText %></p>
                                                <p class="text-sm">
                                                    <% if (LicenseInfo.Expires != null)
                                                       { %>
                                                        Expiration date <%= LicenseInfo.Expires %>
                                                    <% } %>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                <% }
                                   else
                                   { %>
                                    <div class="bg-red-100 border-t-4 border-red-500 rounded-b text-red-900 px-4 py-3 shadow-md" role="alert">
                                        <div class="flex">
                                            <div class="py-1">
                                                <svg class="fill-current h-6 w-6 text-red-500 mr-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                    <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.54a5 5 0 0 1 7.08 0 1 1 0 0 1-1.42 1.42 3 3 0 0 0-4.24 0 1 1 0 0 1-1.42-1.42zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"></path>
                                                </svg>
                                            </div>
                                            <div>
                                                <p class="font-bold">
                                                    <%= LicenseStatusText %>
                                                </p>
                                                <p class="text-sm">
                                                    <% if (LicenseInfo.Expires != null)
                                                       { %>
                                                        Expiration date <%= LicenseInfo.Expires %>
                                                    <% } %>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                <% } %>
                            </dd>
                        </div>
                        <div
                            class="mt-8 border-t border-gray-200 pt-6 md:grid md:grid-cols-12 md:gap-8">
                            <dt
                                class="text-base leading-6 font-medium text-gray-900 md:col-span-5">
                                <h3
                                    class="text-xl leading-9 font-bold text-gray-900 sm:text-xl sm:leading-10">
                                    License location
                                </h3>
                            </dt>
                            <dd class="mt-2 md:mt-0 md:col-span-7">

                                <div class="bg-blue-100 border-t-4 border-blue-500 rounded-b text-blue-900 px-4 py-3 shadow-md" role="alert">
                                    <div class="flex">
                                        <div class="py-1">
                                            <svg class="fill-current h-6 w-6 text-blue-500 mr-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                                <path d="M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM9 11V9h2v6H9v-4zm0-6h2v2H9V5z"/>
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-bold"><%= LicenseSourceText %></p>
                                            <p class="text-sm">
                                                There are multiple locations to specify the
                                                license, see documentation for more details
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </dd>
                        </div>
                        <div
                            class="mt-8 border-t border-gray-200 pt-6 md:grid md:grid-cols-12 md:gap-8">
                            <dt
                                class="text-base leading-6 font-medium text-gray-900 md:col-span-5">
                                <h3
                                    class="text-xl leading-9 font-bold text-gray-900 sm:text-xl sm:leading-10">
                                    Enabled features
                                </h3>
                            </dt>
                            <dd class="mt-2 md:mt-0 md:col-span-7">
                                <% foreach (var feature in LicenseInfo.Features)
                                   {
                                       if (feature.IsActivated)
                                       { %>
                                        <div
                                            class="bg-green-100 border-t-4 border-green-500 rounded-b text-green-900 px-4 py-3 shadow-md"
                                            role="alert">
                                            <div class="flex">
                                                <div class="py-1">
                                                    <svg
                                                        class="fill-current h-6 w-6 text-green-500 mr-4"
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        viewBox="0 0 24 24">
                                                        <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.46a1 1 0 0 1 1.42-1.42 3 3 0 0 0 4.24 0 1 1 0 0 1 1.42 1.42 5 5 0 0 1-7.08 0zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
                                                    </svg>
                                                </div>
                                                <div>
                                                    <p class="font-bold">
                                                        <%= feature.FeatureName %>
                                                    </p>
                                                    <p class="text-sm">
                                                        Feature enabled
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    <% }
                                       else
                                       { %>
                                        <div
                                            class="bg-red-100 border-t-4 border-red-500 rounded-b text-red-900 px-4 py-3 shadow-md"
                                            role="alert">
                                            <div class="flex">
                                                <div class="py-1">
                                                    <svg
                                                        class="fill-current h-6 w-6 text-red-500 mr-4"
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        viewBox="0 0 24 24">
                                                        <path class="heroicon-ui" d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-3.54-4.54a5 5 0 0 1 7.08 0 1 1 0 0 1-1.42 1.42 3 3 0 0 0-4.24 0 1 1 0 0 1-1.42-1.42zM9 11a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm6 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
                                                    </svg>
                                                </div>
                                                <div>
                                                    <p class="font-bold">
                                                        <%= feature.FeatureName %>
                                                    </p>
                                                    <p class="text-sm">
                                                        Feature disabled
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    <% } %>
                                    <div class="mt-1 pt-1"></div>
                                <% } %>
                            </dd>
                        </div>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Uniform License Status-->
</div>
</div>
</div>
<!-- /End replace -->
</div>
</main>
</div>
</form>
</body>
</html>
