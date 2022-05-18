<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContentSync.aspx.cs" Inherits="Uniform.Admin.ContentSync" %>

<style>
    [v-cloak] {
        display: none;
    }
</style>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Uniform Site Validation</title>
    <link href="../dist/favicon.png" rel="shortcut icon"/>
    <%--<link rel="Stylesheet" type="text/css" href="../dist/styles.css" />--%>

    <%--    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>--%>

    <link href="dist/tailwind.min.css" rel="stylesheet">
    <script src="dist/axios.min.js"></script>
    <script src="dist/vue.min.js"></script>
</head>
<body>
<div>
    <main id="vue-app" v-cloak>
        <div class="flex flex-col">
            <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                    <div class="overflow-hidden">
                        <div v-if="!hasResults" class="text-center p-4 py-12">
                            <div class="inline-flex items-center text-lg text-gray-900">
                                <svg class="animate-spin mr-5 h-10 w-10" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                    <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                                    <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                                </svg>
                                <span>Loading initial content sync history for site</span>
                                <span v-if="siteConfigurationName" class="pl-1 font-bold">{{siteConfigurationName}}</span>
                            </div>
                            <div class="text-lg text-gray-900">Queued. Please, wait.</div>
                        </div>

                        <div v-if="hasResults">
                            <div v-if="result.finished && result.success" class="px-6 py-6 rounded-md bg-green-100">
                                <div class="flex">
                                    <div class="flex-shrink-0">
                                        <svg class="h-5 w-5 text-green-400" viewBox="0 0 20 20" fill="currentColor">
                                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path>
                                        </svg>
                                    </div>
                                    <div class="ml-3">
                                        <h3 class="text-sm leading-5 font-bold text-green-900">
                                            Success
                                        </h3>
                                    </div>
                                </div>
                            </div>
                            <div v-else-if="result.finished && !result.success" class="px-6 py-6 rounded-md bg-red-100">
                                <div class="flex">
                                    <div class="flex-shrink-0">
                                        <svg class="h-5 w-5 text-red-400" viewBox="0 0 20 20" fill="currentColor">
                                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd"/>
                                        </svg>
                                    </div>
                                    <div class="ml-3">
                                        <h3 class="text-sm leading-5 font-bold text-red-900">
                                            {{globalError || 'Failed'}}
                                        </h3>
                                    </div>
                                </div>
                            </div>

                            <div class="relative px-6 py-6 bg-white">
                                <div class="flex mb-2 items-center justify-between">
                                    <div class="w-full text-center text-gray-700 font-bold">
                                        <p v-if="result.finished && result.success">
                                            Initial content sync finished ({{progress.success}} success, {{progress.failed}} failed)
                                        </p>
                                        <p v-else-if="result.finished && !result.success">
                                            Initial content sync stopped ({{progress.finished}} out {{progress.total}} finished, {{progress.success}} success, {{progress.failed}} failed)
                                        </p>
                                        <p v-else>
                                            Processing resource {{Math.min(progress.finished + 1, progress.total)}} out {{progress.total}} ({{progress.success}} success, {{progress.failed}} failed)
                                        </p>
                                    </div>
                                </div>
                                <div class="overflow-hidden h-4 mb-4 text-xs flex rounded-lg bg-indigo-200">
                                    <div :style="{width: Math.floor((progress.finished/progress.total) * 100) + '%'}"
                                         class="shadow-none flex flex-col text-center whitespace-nowrap text-white justify-center bg-indigo-500">
                                    </div>
                                </div>
                                <div class="w-full text-center">
                                    <button v-on:click.prevent="showDetails = !showDetails"
                                            class="bg-gray-300 hover:bg-gray-400 text-gray-700 font-bold py-2 px-4 rounded inline-flex items-center shadow">
                                        <span v-if="!showDetails">Show details</span>
                                        <span v-else>Hide details</span>
                                    </button>
                                </div>
                            </div>

                            <div id="details" v-if="showDetails">
                                <div class="flex px-8 py-3 -mx-3 bg-gray-200">
                                    <input type="text" v-model="filter.path"
                                           placeholder="Filter by resource url"
                                           class="px-2 py-2 mr-6 w-3/5 placeholder-gray-400 text-gray-700 bg-white rounded shadow focus:outline-none focus:placeholder-gray-400"/>
                                    <div class="inline-flex">
                                        <label class="inline-flex items-center mx-2">
                                            <input type="checkbox" v-model="filter.showFailed">
                                            <span class="ml-2 text-red-600">failed</span>
                                        </label>
                                        <label class="inline-flex items-center mx-2">
                                            <input type="checkbox" v-model="filter.showQueued">
                                            <span class="ml-2 text-yellow-600">queued</span>
                                        </label>
                                        <label class="inline-flex items-center mx-2">
                                            <input type="checkbox" v-model="filter.showSuccess">
                                            <span class="ml-2 text-green-600">success</span>
                                        </label>
                                        <label class="inline-flex items-center mx-2">
                                            <input type="checkbox" v-model="filter.showMedia">
                                            <span class="ml-2 text-black-600">media</span>
                                        </label>
                                    </div>
                                </div>

                                <table class="min-w-full divide-y divide-gray-200">
                                    <thead>
                                    <tr>
                                        <th class="w-10/12 px-6 py-3 bg-gray-200 text-left text-xs leading-4 font-medium text-gray-700 uppercase tracking-wider">
                                            Resource Url
                                        </th>
                                        <th class="w-2/12 px-6 py-3 bg-gray-200 text-left text-xs leading-4 font-medium text-gray-700 uppercase tracking-wider">
                                            Status
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(page, index) in pagesView" :key="page.path" v-bind:class="{'bg-white': index % 2 == 0,  'bg-gray-200': index % 2 != 0}">
                                        <td class="px-6 py-1 text-sm leading-5 font-medium text-gray-900">
                                            {{page.path}}
                                            <div v-if="page.finished && !page.success" class="flex items-center text-sm text-gray-500">
                                                <a class="text-indigo-600 hover:text-indigo-900"
                                                   :href="page.url" target="_blank">
                                                    Result
                                                </a>
                                            </div>
                                        </td>
                                        <td class="px-6 py-1 text-sm leading-5 text-gray-500">
                                            <span v-if="!page.finished" class="text-yellow-600">queued</span>
                                            <span v-if="page.finished && page.success" class="text-green-600">success {{page.updated}}</span>
                                            <span v-if="page.finished && !page.success" class="text-red-600">failed</span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<script type="text/javascript">
            function getResourceUrl(url) {
                if (!url) {
                    return url;
                }

                // if not relative url, make sure to append slash in beginning
                if (!url.startsWith('http') && !url.startsWith('/')) {
                    return '/' + url;
                }

                return url;
            }

            function isEmpty(obj) {
                for (var x in obj) { if (obj.hasOwnProperty(x)) return false; }
                return true;
            }

            function debounce(fn, delay) {
                var timeoutID = null;
                return function () {
                    clearTimeout(timeoutID);
                    var args = arguments;
                    var that = this;
                    timeoutID = setTimeout(function () {
                        fn.apply(that, args)
                    }, delay)
                }
            }

            var app = new Vue(
                {
                    el: '#vue-app',
                    data: function () {
                        return {
                            siteConfigurationName: "",
                            pageStatus: null,
                            globalError: "",
                            hasResults: false,
                            showDetails: false,
                            filter: {
                                path: "",
                                pathDebounced: "",
                                showSuccess: true,
                                showFailed: true,
                                showQueued: true,
                                showMedia: true,
                            },
                            result: {
                                finished: false,
                                success: false,
                            },
                        };
                    },

                    watch: {
                        'filter.path': debounce(function (newVal) {
                            this.filter.pathDebounced = newVal;
                        }, 300),
                    },

                    computed: {
                        allPages: function () {
                            if (!this.pageStatus) {
                                return [];
                            }

                            var pagePaths = Object.keys(this.pageStatus);

                            var pages = pagePaths
                                .sort()
                                .map(path => {
                                    var status = this.pageStatus[path];
                                    if (!status) {
                                        return {
                                            path: path,
                                            success: false,
                                            finished: false,
                                        };
                                    }
                                                          
                                    let updated = '';
                                    if (status.updated) {
                                        const date = new Date(status.updated);

                                        updated = `(${date.toLocaleTimeString()})`;
                                    }
                                    
                                    return {
                                        path: path,
                                        success: status.success,
                                        finished: true,
                                        updated: updated,
                                        url: getResourceUrl(status.url),
                                    };
                                });

                            return pages;
                        },

                        pagesView: function () {
                            var pages = this.allPages;

                            var pathFilter = this.filter.pathDebounced;
                            if (pathFilter) {
                                var lowerPathFilter = pathFilter.toLowerCase();
                                pages = pages.filter(x => x.path.toLowerCase().includes(lowerPathFilter));
                            }

                            var resultPages = [];

                            if (this.filter.showFailed) {
                                var failedPages = pages.filter(page => page.finished && !page.success);
                                resultPages = resultPages.concat(failedPages);
                            }

                            var showSuccess = this.filter.showSuccess;
                            var showQueued = this.filter.showQueued;

                            var notFailedPages = pages.filter(page =>
                                (showQueued && !page.finished) || (showSuccess && page.finished && page.success));

                            resultPages = resultPages.concat(notFailedPages);
                            
                            if (!this.filter.showMedia) {
                                resultPages = resultPages.filter(page => !page.path.startsWith("/-/media"));
                            }

                            return resultPages;
                        },

                        progress: function () {
                            var allPages = this.allPages;

                            var successCount = 0;
                            var failedCount = 0;
                            allPages.forEach((page) => {
                                if (!page.finished) {
                                    return;
                                }
                                if (page.success) {
                                    successCount++;
                                } else {
                                    failedCount++;
                                }
                            });

                            return {
                                total: allPages.length,
                                finished: successCount + failedCount,
                                success: successCount,
                                failed: failedCount,
                            };
                        },
                    },

                    mounted() {
                        var data = this;
                        var statusUrl = "<%= StatusUrl %>";

                        data.siteConfigurationName = "<%= SiteConfigurationName %>";

                        if (!statusUrl) {
                            console.log("Status endpoint could not be resolved")
                        }

                        function refreshStatus() {
                            axios
                                .get(statusUrl, {
                                    headers: {
                                        'Cache-Control': 'no-cache',
                                    }
                                })
                                .then(response => {
                                    data.pageStatus = response.data.pages || {};
                                    data.globalError = response.data.globalError || '';

                                    data.result.finished = typeof response.data.success === "boolean";
                                    data.result.success = data.result.finished && response.data.success;

                                    if (!isEmpty(data.pageStatus) || data.result.finished) {
                                        data.hasResults = true;
                                    }

                                    if (!data.result.finished) {
                                        setTimeout(refreshStatus, data.hasResults ? 5000 : 1000);
                                    }
                                })
                                .catch(() => {
                                    setTimeout(refreshStatus, 5000);
                                });
                        }

                        refreshStatus();
                    }
                });
        </script>
</body>
</html>
