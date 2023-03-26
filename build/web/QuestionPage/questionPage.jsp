<%-- 
    Document   : questionPage
    Created on : 23-Mar-2023, 10:16:03 am
    Author     : shrut
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- STYLESHEET Link given here -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Script Link -->
    <!--<script src="./TW-ELEMENTS-PATH/dist/js/index.min.js"></script>-->
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <!-- <script src="/dataFetchingCodeforces/fectingContestDetails.js"></script> -->
    <title>Question Page</title>
    <script>
      // fetches all questions
        //

        
    </script>

</head>
<body>
    <nav class="bg-gray-800">
        <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
          <div class="relative flex h-16 items-center justify-between">
            <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
              <!-- Mobile menu button-->
              <button type="button" class="inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                <!--
                  Icon when menu is closed.
      
                  Menu open: "hidden", Menu closed: "block"
                -->
                <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                </svg>
                <!--
                  Icon when menu is open.
      
                  Menu open: "block", Menu closed: "hidden"
                -->
                <svg class="hidden h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                </svg>
              </button>
            </div>
            <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
              <div class="flex flex-shrink-0 items-center">
                <img src="question-mark.png" class="w-8 h-8" alt="">
              </div>
              <div class="hidden sm:ml-6 sm:block">
                <div class="flex space-x-4">
                  <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                  <a href="#" class="bg-gray-900 text-white rounded-md px-3 py-2 text-sm font-medium" aria-current="page">Question</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      
        <!-- Mobile menu, show/hide based on menu state. -->
        <div class="sm:hidden" id="mobile-menu">
          <div class="space-y-1 px-2 pt-2 pb-3">
            <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
            <a href="#" class="bg-gray-900 text-white rounded-md px-3 py-2 text-sm font-medium" aria-current="page">Question</a>
          </div>
        </div>
      </nav>
         
<section>
    <!-- component -->
<div class="overflow-hidden rounded-lg border border-gray-200 shadow-md m-5">
    <table class="w-full border-collapse bg-white text-left text-sm text-gray-500">
      <thead class="bg-gray-50">
        <tr>
          <th scope="col" class="px-6 py-4 font-medium text-gray-900">Contest-ID</th>
          <th scope="col" class="px-6 py-4 font-medium text-gray-900">Index</th>
          <th scope="col" class="px-6 py-4 font-medium text-gray-900">Name</th>
          <th scope="col" class="px-6 py-4 font-medium text-gray-900">Rating</th>
          <th scope="col" class="px-6 py-4 font-medium text-gray-900">Tags</th>
          <th scope="col" class="px-6 py-4 font-medium text-gray-900"></th>
        </tr>
      </thead>
      <tbody id="mainQuestion" class="divide-y divide-gray-100 border-t border-gray-100">
          <tr class="hover:bg-gray-50">
  
              <th class="flex gap-3 px-6 py-4 font-normal text-gray-900">
                  <div class="text-sm">
                    <div class="font-medium text-gray-700">Steven Jobs</div>
                  </div>
                </th>
                <td class="px-6 py-4">Product Designer</td>
                <td class="px-6 py-4">
                  <span
                    class="inline-flex items-center gap-1 rounded-full bg-green-50 px-2 py-1 text-xs font-semibold text-green-600"
                  >
                    <span class="h-1.5 w-1.5 rounded-full bg-green-600"></span>
                    Active
                  </span>
                </td>
                <td class="px-6 py-4">
                  <div class="flex gap-2">
                    <span
                      class="inline-flex items-center gap-1 rounded-full bg-blue-50 px-2 py-1 text-xs font-semibold text-blue-600"
                    >
                      Design
                    </span>
                    <span
                      class="inline-flex items-center gap-1 rounded-full bg-indigo-50 px-2 py-1 text-xs font-semibold text-indigo-600"
                    >
                      Product
                    </span>
                    <span
                      class="inline-flex items-center gap-1 rounded-full bg-violet-50 px-2 py-1 text-xs font-semibold text-violet-600"
                    >
                      Develop
                    </span>
                  </div>
            </td>
            <td class="px-6 py-4">
              <div class="flex justify-end gap-4">
                <a x-data="{ tooltip: 'Delete' }" href="#">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="h-6 w-6"
                    x-tooltip="tooltip"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0"
                    />
                  </svg>
                </a>
                <a x-data="{ tooltip: 'Edite' }" href="#">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="h-6 w-6"
                    x-tooltip="tooltip"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125"
                    />
                  </svg>
                </a>
              </div>
            </td>
          </tr>

          <tr class="hover:bg-gray-50">
            <th class="flex gap-3 px-6 py-4 font-normal text-gray-900">
              <div class="text-sm">
                <div class="font-medium text-gray-700">Steven Jobs</div>
              </div>
            </th>
            <td class="px-6 py-4">Product Designer</td>
            <td class="px-6 py-4">
              <span
                class="inline-flex items-center gap-1 rounded-full bg-green-50 px-2 py-1 text-xs font-semibold text-green-600"
              >
                <span class="h-1.5 w-1.5 rounded-full bg-green-600"></span>
                Active
              </span>
            </td>
            <td class="px-6 py-4">
              <div class="flex gap-2">
                <span
                  class="inline-flex items-center gap-1 rounded-full bg-blue-50 px-2 py-1 text-xs font-semibold text-blue-600"
                >
                  Design
                </span>
                <span
                  class="inline-flex items-center gap-1 rounded-full bg-indigo-50 px-2 py-1 text-xs font-semibold text-indigo-600"
                >
                  Product
                </span>
                <span
                  class="inline-flex items-center gap-1 rounded-full bg-violet-50 px-2 py-1 text-xs font-semibold text-violet-600"
                >
                  Develop
                </span>

              </div>
  
            </td>
            <td class="px-6 py-4">
                <div class="flex justify-end gap-4">
                  <a x-data="{ tooltip: 'Delete' }" href="#">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke-width="1.5"
                      stroke="currentColor"
                      class="h-6 w-6"
                      x-tooltip="tooltip"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0"
                      />
                    </svg>
                  </a>
                  <a x-data="{ tooltip: 'Edite' }" href="#">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke-width="1.5"
                      stroke="currentColor"
                      class="h-6 w-6"
                      x-tooltip="tooltip"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125"
                      />
                    </svg>
                  </a>
                </div>
              </td>
          </tr>
      </tbody>
    </table>
  </div>
<div class="container w-full text-right">
    <div class="">
        <button type="submit" id="open-btn" class="mt-6 w-auto px-3 py-2 mr-4 bg-violet-500  hover:bg-violet-600 text-gray-100 hover:text-gray-200 rounded-md text-lg font-semibold tracking-tight cursor-pointer transition ease-in duration-100"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12,2A10,10,0,1,0,22,12,10,10,0,0,0,12,2Zm0,18a8,8,0,1,1,8-8A8,8,0,0,1,12,20Zm4-9H13V8a1,1,0,0,0-2,0v3H8a1,1,0,0,0,0,2h3v3a1,1,0,0,0,2,0V13h3a1,1,0,0,0,0-2Z"/></svg>Add</button>
      </div>
      <div
        class="fixed hidden inset-0 bg-gray-600 bg-opacity-50 overflow-y-auto h-full w-full" id="my-modal">
        <div class="relative top-32 mx-auto p-5 border shadow-lg rounded-md bg-white  w-[800px]">
            <div class="items-center px-4 py-3">
                <button title="cross"
                    id="ok-btn"
                    class="px-4 py-2 bg-transparent"
                > <img src="rejected.png" class="w-9 h-9" alt="">
                </button>
            </div>
        <div class="mt-3 text-center">
            <input title="ID" type="number" id="contestID" class=" w-full text-sm font-bold  px-4 py-3 bg-gray-200 focus:bg-gray-100 border  border-gray-200 rounded-lg focus:outline-none focus:border-purple-400" min="0" placeholder="Enter Contest Details">
            
            <div class="rounded-lg border border-gray-200 shadow-md m-5 overflow-auto">
                <table class="border-collapse bg-white text-left text-sm text-gray-500">
                  <thead class="bg-gray-50">
                    <tr>
                      <th scope="col" class="px-6 py-4 font-medium text-gray-900">Index</th>
                      <th scope="col" class="px-6 py-4 font-medium text-gray-900">Name</th>
                      <th scope="col" class="px-6 py-4 font-medium text-gray-900">Rating</th>
                      <th scope="col" class="px-6 py-4 font-medium text-gray-900">Tags</th>
                      <th scope="col" class="px-6 py-4 font-medium text-gray-900">Add</th>
                    </tr>

                  </thead>
                  <tbody id="addProblems" class="divide-y divide-gray-100 border-t border-gray-100">
                    
                  </tbody>
                </table>
              </div>
            
        </div>
      
        
        <button
          class="mt-6 w-auto px-3 py-2 bg-violet-500  hover:bg-violet-600 text-gray-100 hover:text-gray-200 rounded-md text-lg font-semibold tracking-tight cursor-pointer transition ease-in duration-100"
          title="submit" type="submit" name="submit" onclick="contestIDhandle()">Submit</button>
    </div>
      
    </section>
    <script>
    let modal = document.getElementById("my-modal");
    
    let btn = document.getElementById("open-btn");
    
    let button = document.getElementById("ok-btn");
    btn.onclick = function() {
        modal.style.display = "block";
        }
        // We want the modal to close when the OK button is clicked
        button.onclick = function() {
        modal.style.display = "none";
        }
    
        window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
        }
    </script>
</div>
</div>
        <!--<script src="https://code.jquery.com/jquery-1.10.2.js"-->
	<!--type="text/javascript"></script>-->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
        <script rel="javascript" type="text/javascript" href="js/jquery-1.11.3.min.js"></script>
        <script src="questionPage.js"></script>
</body>
</html